.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANCHOR_BOL:I = -0x2

.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_dotAll:I = 0x7

.field private static final Id_exec:I = 0x4

.field private static final Id_flags:I = 0x3

.field private static final Id_global:I = 0x4

.field private static final Id_ignoreCase:I = 0x5

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x6

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_sticky:I = 0x8

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_DOTALL:I = 0x8

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final JSREG_STICKY:I = 0x10

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x8

.field private static final MAX_PROTOTYPE_ID:I = 0x9

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object;

.field private static final REOP_ALNUM:B = 0x9t

.field private static final REOP_ALT:B = 0x1ft

.field private static final REOP_ALTPREREQ:B = 0x35t

.field private static final REOP_ALTPREREQ2:B = 0x37t

.field private static final REOP_ALTPREREQi:B = 0x36t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0xdt

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x16t

.field private static final REOP_DIGIT:B = 0x7t

.field private static final REOP_DOT:B = 0x6t

.field private static final REOP_EMPTY:B = 0x1t

.field private static final REOP_END:B = 0x39t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0xet

.field private static final REOP_FLAT1:B = 0xft

.field private static final REOP_FLAT1i:B = 0x11t

.field private static final REOP_FLATi:B = 0x10t

.field private static final REOP_JUMP:B = 0x20t

.field private static final REOP_LPAREN:B = 0x1dt

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NCLASS:B = 0x17t

.field private static final REOP_NONALNUM:B = 0xat

.field private static final REOP_NONDIGIT:B = 0x8t

.field private static final REOP_NONSPACE:B = 0xct

.field private static final REOP_OPT:B = 0x1ct

.field private static final REOP_PLUS:B = 0x1bt

.field private static final REOP_QUANT:B = 0x19t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0x1et

.field private static final REOP_SIMPLE_END:B = 0x17t

.field private static final REOP_SIMPLE_START:B = 0x1t

.field private static final REOP_SPACE:B = 0xbt

.field private static final REOP_STAR:B = 0x1at

.field private static final REOP_UCFLAT1:B = 0x12t

.field private static final REOP_UCFLAT1i:B = 0x13t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field private static final SymbolId_match:I = 0x7

.field private static final SymbolId_matchAll:I = 0x8

.field private static final SymbolId_search:I = 0x9

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field private static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:Ljava/lang/Object;

.field private lastIndexAttr:I

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 8
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v0, 0x6

    .line 9
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 3
    iput v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 5
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 6
    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .locals 5

    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, p2, 0x8

    iget v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p2, v2, :cond_2

    if-gt p1, p2, :cond_2

    and-int/lit8 p1, p1, 0x7

    int-to-char p1, p1

    and-int/lit8 p2, p2, 0x7

    int-to-char p2, p2

    const/16 v2, 0xff

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    sub-int/2addr p2, p1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    shl-int p1, p2, p1

    int-to-byte p1, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v0

    shl-int p1, v2, p1

    int-to-byte p1, p1

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    const/4 v3, -0x1

    aput-byte v3, p1, v0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p1, p0, v1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    int-to-byte p2, p2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return-void

    :cond_2
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .locals 3

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    and-int/lit8 p1, p1, 0x7

    const/4 v2, 0x1

    shl-int p1, v2, p1

    int-to-byte p1, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void

    :cond_0
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static addIndex([BII)I
    .locals 1

    if-ltz p2, :cond_1

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    const-string p0, "Too complex regexp"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private appendFlags(Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/16 v0, 0x79

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result p1

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int v4, v2, p1

    if-le v4, p3, :cond_2

    return v1

    :cond_2
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_4

    move p3, v1

    :goto_0
    if-ge p3, p1, :cond_5

    add-int v2, v0, p3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, p3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_3

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-eq v2, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v0, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_5

    return v1

    :cond_5
    iget p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .locals 11

    const/4 v0, 0x0

    iput v0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-ne p3, p4, :cond_0

    return v1

    :cond_0
    aget-char v2, p2, p3

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_1

    add-int/lit8 p3, p3, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    :cond_1
    move v2, v0

    move v3, v2

    move v4, v3

    :cond_2
    :goto_0
    if-eq p3, p4, :cond_12

    aget-char v5, p2, p3

    const/16 v6, 0x5c

    const/4 v7, 0x2

    if-ne v5, v6, :cond_d

    add-int/lit8 v5, p3, 0x1

    add-int/lit8 v8, p3, 0x2

    aget-char v5, p2, v5

    const/16 v9, 0x44

    const/high16 v10, 0x10000

    if-eq v5, v9, :cond_c

    const/16 v9, 0x53

    if-eq v5, v9, :cond_c

    const/16 v9, 0x57

    if-eq v5, v9, :cond_c

    const/16 v9, 0x66

    if-eq v5, v9, :cond_b

    const/16 v9, 0x6e

    if-eq v5, v9, :cond_a

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    :cond_3
    :goto_1
    move p3, v8

    goto/16 :goto_6

    :pswitch_0
    move p3, v7

    goto :goto_2

    :pswitch_1
    const/16 v5, 0xb

    goto :goto_1

    :pswitch_2
    const/4 p3, 0x4

    :goto_2
    move v5, v0

    move v9, v5

    :goto_3
    if-ge v5, p3, :cond_6

    if-ge v8, p4, :cond_6

    add-int/lit8 v10, v8, 0x1

    aget-char v8, p2, v8

    invoke-static {v8, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_5

    add-int/lit8 v5, v5, 0x1

    sub-int v8, v10, v5

    :cond_4
    :goto_4
    move v5, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v8, v10

    goto :goto_3

    :cond_6
    move v5, v9

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x9

    goto :goto_1

    :pswitch_4
    const/16 v5, 0xd

    goto :goto_1

    :pswitch_5
    if-eqz v3, :cond_7

    iput v10, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :cond_7
    const/16 v5, 0x39

    goto :goto_1

    :pswitch_6
    if-ge v8, p4, :cond_8

    aget-char v5, p2, v8

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 p3, p3, 0x3

    aget-char v5, p2, v8

    goto :goto_5

    :cond_8
    add-int/lit8 p3, p3, 0x1

    :goto_5
    move v5, v6

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x8

    goto :goto_1

    :pswitch_8
    add-int/lit8 v5, v5, -0x30

    aget-char v6, p2, v8

    const/16 v9, 0x30

    if-gt v9, v6, :cond_3

    const/16 v10, 0x37

    if-gt v6, v10, :cond_3

    add-int/lit8 v8, p3, 0x3

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v6, v5

    aget-char v5, p2, v8

    if-gt v9, v5, :cond_4

    if-gt v5, v10, :cond_4

    add-int/lit8 v8, p3, 0x4

    mul-int/lit8 v9, v6, 0x8

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v5, v9

    const/16 v9, 0xff

    if-gt v5, v9, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v8, p3, 0x3

    goto :goto_4

    :cond_a
    const/16 v5, 0xa

    goto :goto_1

    :cond_b
    const/16 v5, 0xc

    goto :goto_1

    :cond_c
    :pswitch_9
    iput v10, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :cond_d
    add-int/lit8 p3, p3, 0x1

    :goto_6
    if-eqz v3, :cond_f

    if-le v4, v5, :cond_e

    const-string p0, "msg.bad.range"

    const-string p1, ""

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_e
    move v3, v0

    goto :goto_7

    :cond_f
    add-int/lit8 v6, p4, -0x1

    if-ge p3, v6, :cond_10

    aget-char v6, p2, p3

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_10

    add-int/lit8 p3, p3, 0x1

    int-to-char v4, v5

    move v3, v1

    goto/16 :goto_0

    :cond_10
    :goto_7
    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_11

    int-to-char v5, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v6

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v5

    if-lt v6, v5, :cond_11

    move v5, v6

    :cond_11
    if-le v5, v2, :cond_2

    move v2, v5

    goto/16 :goto_0

    :cond_12
    add-int/2addr v2, v1

    iput v2, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .locals 2

    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    :cond_0
    shr-int/lit8 p0, p2, 0x3

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ge p2, v0, :cond_2

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p0, v0, p0

    and-int/lit8 p2, p2, 0x7

    shl-int p2, v1, p2

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;
    .locals 10

    new-instance v0, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x67

    const-string v8, "msg.invalid.re.flag"

    if-ne v6, v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    const/16 v7, 0x69

    if-ne v6, v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    const/16 v7, 0x6d

    if-ne v6, v7, :cond_2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    const/16 v7, 0x73

    if-ne v6, v7, :cond_3

    const/16 v7, 0x8

    goto :goto_1

    :cond_3
    const/16 v7, 0x79

    if-ne v6, v7, :cond_4

    const/16 v7, 0x10

    goto :goto_1

    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v3

    :goto_1
    and-int v9, v5, v7

    if-eqz v9, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v5, v3

    :cond_7
    iput v5, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, v4, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    if-eqz p3, :cond_8

    if-lez p1, :cond_8

    new-instance p0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 p3, 0xe

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    aget-char p3, p3, v3

    iput-char p3, p0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput p1, p0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iput v3, p0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p0, p0, 0x5

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_2

    :cond_8
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p3

    const/4 v4, 0x0

    if-nez p3, :cond_9

    return-object v4

    :cond_9
    iget p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    iget v6, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le p3, v6, :cond_a

    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, p3, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p0

    if-nez p0, :cond_a

    return-object v4

    :cond_a
    :goto_2
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr p0, v2

    new-array p0, p0, [B

    iput-object p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    if-eqz p0, :cond_b

    new-array p1, p0, [Lorg/mozilla/javascript/regexp/RECharSet;

    iput-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    :cond_b
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p2, v0, v3, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p0

    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/16 p3, 0x39

    aput-byte p3, p1, p0

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    aget-byte p0, p1, v3

    const/4 p3, -0x2

    if-eq p0, v1, :cond_e

    const/16 v3, 0x1f

    if-eq p0, v3, :cond_c

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    return-object v0

    :pswitch_1
    aget-byte p0, p1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    return-object v0

    :pswitch_2
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char p0, p1, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    return-object v0

    :cond_c
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p1, p1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p1, v1, :cond_d

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p0, p0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p0, v1, :cond_d

    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    :cond_d
    :goto_3
    return-object v0

    :cond_e
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/4 p1, 0x1

    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    const/4 p1, -0x1

    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return-void
.end method

.method private static downcase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ge v1, v0, :cond_2

    :cond_1
    return p0

    :cond_2
    return v1
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .locals 9

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    :goto_0
    if-eqz p3, :cond_1a

    add-int/lit8 v1, p2, 0x1

    iget-byte v2, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    aput-byte v2, v0, p2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/16 v4, 0x16

    if-eq v2, v4, :cond_17

    const/16 v4, 0x19

    const/4 v5, -0x1

    if-eq v2, v4, :cond_f

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_e

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_d

    const/16 v4, 0xd

    if-eq v2, v4, :cond_c

    const/16 v4, 0xe

    if-eq v2, v4, :cond_5

    const/16 v4, 0x29

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    packed-switch v2, :pswitch_data_0

    move p2, v1

    goto/16 :goto_c

    :pswitch_0
    const/16 v4, 0x36

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    :cond_1
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, p2, 0x3

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-eqz v3, :cond_2

    int-to-char v2, v2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    :cond_2
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, p2, 0x5

    goto/16 :goto_7

    :cond_3
    add-int/lit8 p2, p2, 0x3

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2c

    aput-byte v3, v0, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    :goto_2
    move p2, v2

    goto/16 :goto_c

    :cond_4
    add-int/lit8 p2, p2, 0x3

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2b

    aput-byte v3, v0, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto :goto_2

    :cond_5
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v5, :cond_6

    :goto_3
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v2, :cond_6

    iget-byte v6, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v6, v4, :cond_6

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v7, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v6, v7

    iget v8, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-ne v6, v8, :cond_6

    iget v6, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v7, v6

    iput v7, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_3

    :cond_6
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v5, :cond_8

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    if-le v5, v3, :cond_8

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    const/16 v3, 0x10

    aput-byte v3, v0, p2

    goto :goto_4

    :cond_7
    aput-byte v4, v0, p2

    :goto_4
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_c

    :cond_8
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/16 v3, 0x100

    if-ge v2, v3, :cond_a

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    const/16 v3, 0x11

    aput-byte v3, v0, p2

    goto :goto_5

    :cond_9
    const/16 v3, 0xf

    aput-byte v3, v0, p2

    :goto_5
    add-int/lit8 p2, p2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_c

    :cond_a
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b

    const/16 v3, 0x13

    aput-byte v3, v0, p2

    goto :goto_6

    :cond_b
    const/16 v3, 0x12

    aput-byte v3, v0, p2

    :goto_6
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_c

    :cond_c
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_c

    :cond_d
    :goto_7
    iget-object p2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x20

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {p0, p1, v2, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    aput-byte v4, v0, p2

    add-int/lit8 p2, p2, 0x3

    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_c

    :cond_e
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x1e

    aput-byte v2, v0, p2

    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_c

    :cond_f
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v2, :cond_11

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v4, v5, :cond_11

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x1a

    goto :goto_8

    :cond_10
    const/16 v2, 0x2d

    :goto_8
    aput-byte v2, v0, p2

    goto :goto_b

    :cond_11
    if-nez v2, :cond_13

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v4, v3, :cond_13

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_12

    const/16 v2, 0x1c

    goto :goto_9

    :cond_12
    const/16 v2, 0x2f

    :goto_9
    aput-byte v2, v0, p2

    goto :goto_b

    :cond_13
    if-ne v2, v3, :cond_15

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v4, v5, :cond_15

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x1b

    goto :goto_a

    :cond_14
    const/16 v2, 0x2e

    :goto_a
    aput-byte v2, v0, p2

    goto :goto_b

    :cond_15
    iget-boolean v4, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-nez v4, :cond_16

    const/16 v4, 0x30

    aput-byte v4, v0, p2

    :cond_16
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    add-int/2addr v1, v3

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    :goto_b
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    add-int/lit8 v1, p2, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x31

    aput-byte v3, v0, v1

    invoke-static {v0, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_2

    :cond_17
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-nez v2, :cond_18

    const/16 v2, 0x17

    aput-byte v2, v0, p2

    :cond_18
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    new-instance v3, Lorg/mozilla/javascript/regexp/RECharSet;

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget-boolean v7, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(IIIZ)V

    aput-object v3, v1, v2

    :cond_19
    :goto_c
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_0

    :cond_1a
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-le v1, v4, :cond_3

    if-eq v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_2

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v0, p1

    move/from16 v5, p3

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v3, v1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 v7, 0x0

    aget-byte v2, v3, v7

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    const/4 v8, 0x1

    const/4 v4, 0x1

    if-gez v1, :cond_2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-gt v1, v5, :cond_1

    const/4 v6, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v6

    if-ltz v6, :cond_0

    add-int/lit8 v4, v6, 0x1

    aget-byte v2, v3, v6

    move v1, v8

    goto :goto_1

    :cond_0
    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move/from16 v5, p3

    goto :goto_0

    :cond_1
    move v1, v7

    :goto_1
    if-nez v1, :cond_2

    return v7

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getInstructionObserverThreshold()I

    move-result v1

    if-eqz v1, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    const/16 v10, 0x39

    move v12, v7

    move v13, v12

    move v11, v10

    :goto_3
    if-eqz v9, :cond_4

    const/4 v1, 0x5

    move-object/from16 v14, p0

    invoke-static {v14, v1}, Lorg/mozilla/javascript/ScriptRuntime;->addInstructionCount(Lorg/mozilla/javascript/Context;I)V

    goto :goto_4

    :cond_4
    move-object/from16 v14, p0

    :goto_4
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v2

    move v15, v4

    move v1, v5

    if-ltz v2, :cond_5

    move v4, v8

    goto :goto_5

    :cond_5
    move v4, v7

    :goto_5
    if-eqz v4, :cond_6

    move v15, v2

    :cond_6
    move v13, v4

    move/from16 v16, v8

    :cond_7
    :goto_6
    move v4, v15

    move-object v15, v3

    goto/16 :goto_19

    :cond_8
    move/from16 v1, p3

    move v15, v4

    if-eq v2, v10, :cond_2d

    const/16 v4, 0x33

    const/16 v5, 0x34

    const/4 v6, -0x1

    move/from16 v16, v8

    packed-switch v2, :pswitch_data_0

    const/16 v8, 0x2c

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const-string v0, "invalid bytecode"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v4

    int-to-char v4, v4

    add-int/lit8 v5, v15, 0x2

    invoke-static {v3, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    int-to-char v5, v5

    add-int/lit8 v6, v15, 0x4

    iget v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ne v8, v1, :cond_9

    :goto_7
    move-object v15, v3

    move v4, v6

    move v13, v7

    goto/16 :goto_19

    :cond_9
    move-object/from16 v15, p2

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x37

    if-ne v2, v10, :cond_a

    if-eq v8, v4, :cond_c

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v2, v2, v5

    invoke-static {v0, v2, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_a
    const/16 v10, 0x36

    if-ne v2, v10, :cond_b

    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v8

    :cond_b
    if-eq v8, v4, :cond_c

    if-eq v8, v5, :cond_c

    goto :goto_7

    :cond_c
    move v4, v6

    :goto_8
    move/from16 v18, v12

    move v12, v11

    goto/16 :goto_1c

    :pswitch_1
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v8

    if-nez v13, :cond_10

    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eq v2, v6, :cond_e

    if-lez v2, :cond_d

    goto :goto_9

    :cond_d
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v11, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    goto :goto_6

    :cond_e
    :goto_9
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    move-object v4, v3

    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v10, v5

    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    move v11, v6

    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object v8, v4

    const/4 v4, 0x0

    move v12, v10

    move v10, v11

    move-object v11, v8

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v4, v15, 0x2

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v4, v15, 0x6

    move v3, v7

    :goto_a
    if-ge v3, v1, :cond_f

    add-int v5, v2, v3

    invoke-virtual {v0, v5, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v15, 0x7

    aget-byte v2, v11, v4

    :goto_b
    move v4, v1

    :goto_c
    move-object v3, v11

    move v11, v12

    move v12, v15

    :goto_d
    move/from16 v8, v16

    :goto_e
    const/16 v10, 0x39

    goto/16 :goto_3

    :cond_10
    move-object v11, v3

    move v12, v5

    move v10, v6

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_11

    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v3, v8, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v2, v3, :cond_11

    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    move v13, v7

    move v4, v15

    :goto_f
    move-object v15, v11

    :goto_10
    move v11, v1

    goto/16 :goto_19

    :cond_11
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v1, :cond_12

    add-int/lit8 v1, v1, -0x1

    :cond_12
    if-eq v2, v10, :cond_13

    add-int/lit8 v2, v2, -0x1

    :cond_13
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v1, :cond_14

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v4, v15, 0x2

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v4, v15, 0x6

    move v3, v7

    :goto_11
    if-ge v3, v1, :cond_15

    add-int v5, v2, v3

    invoke-virtual {v0, v5, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    iget v4, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    invoke-static {v0, v12, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v2, v15, 0x4

    invoke-static {v11, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int/2addr v2, v3

    move v12, v1

    move v15, v4

    move v4, v2

    :cond_15
    add-int/lit8 v1, v4, 0x1

    aget-byte v2, v11, v4

    goto :goto_b

    :pswitch_2
    move-object v11, v3

    move v10, v6

    :goto_12
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v8

    if-nez v13, :cond_17

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_16

    move/from16 v13, v16

    :cond_16
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v4, v15, 0x4

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_f

    :cond_17
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_19

    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v3, v8, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-eq v2, v3, :cond_18

    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-nez v2, :cond_19

    :cond_18
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v4, v15, 0x4

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v4, v2

    move v13, v7

    goto :goto_f

    :cond_19
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v1, :cond_1a

    add-int/lit8 v1, v1, -0x1

    :cond_1a
    move v12, v1

    if-eq v2, v10, :cond_1b

    add-int/lit8 v2, v2, -0x1

    :cond_1b
    move/from16 v17, v2

    if-nez v17, :cond_1c

    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v4, v15, 0x4

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v4, v2

    move-object v15, v11

    move/from16 v13, v16

    goto/16 :goto_10

    :cond_1c
    add-int/lit8 v1, v15, 0x6

    aget-byte v2, v11, v1

    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    move v1, v4

    add-int/lit8 v4, v15, 0x7

    const/4 v6, 0x1

    move-object v5, v11

    move v11, v3

    move-object v3, v5

    move/from16 v5, p3

    move v13, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v2

    move-object v0, v3

    if-gez v2, :cond_1e

    if-nez v12, :cond_1d

    move/from16 v1, v16

    goto :goto_13

    :cond_1d
    move v1, v7

    :goto_13
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v11, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v4, v15, 0x4

    invoke-static {v0, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v4, v2

    move-object v15, v0

    move v13, v1

    move-object/from16 v0, p1

    goto/16 :goto_19

    :cond_1e
    move/from16 v18, v13

    move v13, v2

    move/from16 v2, v18

    move/from16 v18, v16

    goto :goto_14

    :cond_1f
    move v2, v4

    move-object v0, v11

    move v11, v3

    move/from16 v18, v13

    move v13, v1

    :goto_14
    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    const/4 v4, 0x0

    move v3, v11

    move v1, v12

    move-object v11, v0

    move v12, v2

    move/from16 v2, v17

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-nez v1, :cond_20

    iget v4, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    const/16 v1, 0x33

    move-object/from16 v0, p1

    move v2, v15

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v4, v15, 0x2

    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    move v3, v7

    :goto_15
    if-ge v3, v1, :cond_21

    add-int v4, v2, v3

    invoke-virtual {v0, v4, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_20
    move-object/from16 v0, p1

    :cond_21
    aget-byte v2, v11, v13

    const/16 v1, 0x31

    if-eq v2, v1, :cond_22

    add-int/lit8 v4, v13, 0x1

    move-object v3, v11

    move v11, v12

    move v12, v15

    move/from16 v8, v16

    move/from16 v13, v18

    goto/16 :goto_e

    :cond_22
    move v4, v12

    move/from16 v13, v18

    goto/16 :goto_12

    :pswitch_3
    move v2, v11

    move v4, v12

    move/from16 v8, v16

    move v13, v8

    goto/16 :goto_3

    :pswitch_4
    move v1, v4

    move v4, v5

    move v10, v6

    move v5, v11

    move/from16 v18, v12

    move-object v11, v3

    goto/16 :goto_1f

    :pswitch_5
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v1

    iget v4, v1, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    iput v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v1, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v12, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v11, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    if-ne v2, v8, :cond_7

    xor-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    :pswitch_6
    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int v10, v15, v1

    add-int/lit8 v4, v15, 0x2

    move v1, v4

    add-int/lit8 v4, v15, 0x3

    aget-byte v2, v3, v1

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v6

    move v15, v2

    move/from16 v17, v4

    if-ltz v6, :cond_23

    aget-byte v1, v3, v6

    if-ne v1, v8, :cond_23

    move-object v15, v3

    move v13, v7

    move/from16 v4, v17

    goto/16 :goto_19

    :cond_23
    :goto_16
    move-object v4, v3

    goto :goto_17

    :cond_24
    move v15, v2

    move/from16 v17, v4

    goto :goto_16

    :goto_17
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move-object v1, v4

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v2, v1

    const/4 v1, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    move v6, v11

    move-object v11, v5

    move v5, v6

    move v6, v12

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    move v12, v5

    move/from16 v18, v6

    invoke-static {v0, v8, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    move-object v3, v11

    move v11, v12

    move v2, v15

    move/from16 v8, v16

    move/from16 v4, v17

    :goto_18
    move/from16 v12, v18

    goto/16 :goto_e

    :pswitch_7
    move/from16 v18, v12

    move v12, v11

    move-object v11, v3

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int v8, v15, v1

    add-int/lit8 v4, v15, 0x2

    move v1, v4

    add-int/lit8 v4, v15, 0x3

    aget-byte v2, v11, v1

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move/from16 v5, p3

    move-object v3, v11

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v6

    move v10, v2

    move-object v15, v3

    move v11, v4

    if-gez v6, :cond_28

    move v13, v7

    move v4, v11

    move v11, v12

    move/from16 v12, v18

    :goto_19
    if-nez v13, :cond_26

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    if-eqz v1, :cond_25

    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    iget v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    iput v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget v11, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    iget v12, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    iget v4, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    iget v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    :goto_1a
    move-object v3, v15

    goto/16 :goto_d

    :cond_25
    return v7

    :cond_26
    add-int/lit8 v1, v4, 0x1

    aget-byte v2, v15, v4

    move v4, v1

    goto :goto_1a

    :cond_27
    move v10, v2

    move-object v15, v11

    move v11, v4

    :cond_28
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v12

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v1, 0x2b

    invoke-static {v0, v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    move v2, v10

    move v4, v11

    move v11, v12

    move-object v3, v15

    :goto_1b
    move/from16 v8, v16

    goto :goto_18

    :pswitch_8
    move/from16 v18, v12

    move v12, v11

    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int v4, v15, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v2, v3, v4

    move v4, v1

    goto/16 :goto_18

    :pswitch_9
    move v4, v15

    goto/16 :goto_8

    :goto_1c
    invoke-static {v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int v8, v4, v1

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v2, v3, v1

    iget v10, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v2

    move-object v11, v3

    if-gez v2, :cond_29

    add-int/lit8 v4, v8, 0x1

    aget-byte v2, v11, v8

    move-object/from16 v0, p1

    move-object v3, v11

    move v11, v12

    goto :goto_1b

    :cond_29
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, v11, v2

    move v13, v0

    move v6, v1

    move/from16 v15, v16

    goto :goto_1d

    :cond_2a
    move-object v11, v3

    move v6, v2

    move v15, v13

    move v13, v4

    :goto_1d
    add-int/lit8 v2, v8, 0x1

    aget-byte v1, v11, v8

    move-object/from16 v0, p1

    move v3, v10

    move v4, v12

    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    move v5, v4

    move v2, v6

    move-object v3, v11

    move v4, v13

    move v13, v15

    move/from16 v8, v16

    move/from16 v12, v18

    :goto_1e
    const/16 v10, 0x39

    move v11, v5

    goto/16 :goto_3

    :pswitch_a
    move v5, v11

    move/from16 v18, v12

    move-object v11, v3

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v4, v15, 0x2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v2

    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v1, v15, 0x3

    aget-byte v2, v11, v4

    move v4, v1

    move-object v3, v11

    goto :goto_1e

    :pswitch_b
    move v5, v11

    move/from16 v18, v12

    move-object v11, v3

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v4, v15, 0x2

    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {v0, v1, v2, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v1, v15, 0x3

    aget-byte v2, v11, v4

    move v4, v1

    goto :goto_1e

    :goto_1f
    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_c
    move v2, v7

    goto :goto_23

    :pswitch_d
    move v2, v7

    goto :goto_20

    :pswitch_e
    move v2, v7

    goto :goto_21

    :pswitch_f
    move v2, v7

    goto :goto_22

    :pswitch_10
    move/from16 v2, v16

    :goto_20
    move v8, v2

    move v3, v7

    move/from16 v2, v16

    goto :goto_24

    :pswitch_11
    move/from16 v2, v16

    :goto_21
    move v8, v2

    move v2, v10

    move/from16 v3, v16

    goto :goto_24

    :pswitch_12
    move/from16 v2, v16

    :goto_22
    move v8, v2

    move v3, v7

    move v2, v10

    goto :goto_24

    :pswitch_13
    move/from16 v2, v16

    :goto_23
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int/lit8 v6, v15, 0x2

    invoke-static {v11, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v15, 0x4

    move v15, v8

    move v8, v2

    move v2, v6

    :goto_24
    iget v6, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v12, v4

    const/4 v4, 0x0

    move v10, v12

    move v12, v1

    move v1, v3

    move v3, v6

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v8, :cond_2b

    invoke-static {v0, v12, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    add-int/lit8 v1, v15, 0x6

    goto :goto_25

    :cond_2b
    if-eqz v1, :cond_2c

    add-int/lit8 v1, v15, 0x6

    move v12, v10

    goto :goto_25

    :cond_2c
    invoke-static {v0, v10, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v15, v15, 0x4

    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int/2addr v1, v15

    move v12, v5

    move/from16 v15, v18

    :goto_25
    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v11, v1

    goto/16 :goto_c

    :cond_2d
    move/from16 v16, v8

    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p4, p4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    add-int v2, p1, v0

    aget-char v2, p4, v2

    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_0

    return v1

    :cond_0
    move p4, v1

    :goto_0
    if-ge p4, p2, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v2, p1, p4

    aget-char v0, v0, v2

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I
    .locals 5

    iget v0, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    add-int/lit8 p0, p0, -0x30

    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_3

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v3, p0

    const p0, 0xffff

    if-ge v3, p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v3, v4

    iput v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget p1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return p0
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object p0
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

.method private static getOffset([BI)I
    .locals 0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    return p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersion(I)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v3, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    new-instance v1, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    const-string v2, "constructor"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const-string p2, "RegExp"

    invoke-static {p1, p2, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolSpecies(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    return-void
.end method

.method private static isControlLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isLineTerm(C)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isREWhiteSpace(I)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isWord(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private js_SymbolMatchAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p4

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object p4, p4, v1

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    move-result-object p4

    const-string v0, "flags"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, p1, p2, v2}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const-string p4, "lastIndex"

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toLength(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v4, p4, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    const/16 p1, 0x67

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, 0x1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_1

    move v6, p3

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const/16 p1, 0x75

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, p4, :cond_3

    const/16 p1, 0x76

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, p4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v7, p3

    :goto_3
    new-instance v2, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ZZ)V

    return-object v2

    :cond_4
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "msg.arg.not.object"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public static js_exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "exec"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z
    .locals 7

    iget v0, p2, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v0, [J

    iput-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    goto :goto_0

    :cond_0
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    :goto_0
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_2

    iget p6, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p6, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p6, v0

    :goto_2
    iput-boolean p6, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    iput-object p2, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p6, p2, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    move v3, p4

    :goto_3
    if-gt v3, p5, :cond_b

    if-ltz p6, :cond_6

    :goto_4
    if-ne v3, p5, :cond_3

    return v2

    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p6, :cond_6

    iget-object v5, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    int-to-char v5, p6

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_5

    :cond_4
    iget-object v4, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iput v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v3, p4

    iput v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    move v3, v2

    :goto_6
    iget v4, p2, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v3, v4, :cond_7

    iget-object v4, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-static {p0, p1, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z

    move-result v3

    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    if-eqz v3, :cond_8

    return v0

    :cond_8
    const/4 v3, -0x2

    if-ne p6, v3, :cond_9

    iget-boolean v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-nez v3, :cond_9

    iput p5, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    return v2

    :cond_9
    iget-object v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v3, v3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v3, p4

    add-int/2addr v3, v0

    goto :goto_3

    :cond_b
    return v2
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_4

    aget-char v3, v0, v3

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_4

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v4, :cond_1

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move-object v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    :goto_0
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v3, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    if-nez v1, :cond_5

    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    :goto_2
    return v0
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 11

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v3, v0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    aget-char v0, v0, v2

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_6

    add-int/2addr v2, v4

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x1f

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v3, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v5, 0xe

    if-ne v3, v5, :cond_3

    iget-byte v6, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v6, v5, :cond_3

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const/16 v3, 0x35

    goto :goto_0

    :cond_2
    const/16 v3, 0x36

    :goto_0
    iput-byte v3, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    :cond_3
    const/16 v6, 0x37

    const/16 v7, 0x100

    const/16 v8, 0x16

    if-ne v3, v8, :cond_4

    iget v9, v2, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v9, v7, :cond_4

    iget-byte v10, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v10, v5, :cond_4

    iget v10, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v9, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    :cond_4
    if-ne v3, v5, :cond_5

    iget-byte v3, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v3, v8, :cond_5

    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v1, v7, :cond_5

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_6
    :goto_1
    return v4
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v1, v2

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    const/16 v6, 0x24

    const/4 v8, 0x1

    if-eq v4, v6, :cond_2c

    const/16 v6, 0x2e

    const/4 v9, 0x6

    const/16 v11, 0x3f

    if-eq v4, v6, :cond_1e

    if-eq v4, v11, :cond_1d

    const/16 v6, 0x5e

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x5b

    const/16 v15, 0x5c

    const/16 v16, 0x3

    const-string v7, ""

    if-eq v4, v6, :cond_17

    const/16 v6, 0xe

    const/16 v17, 0x0

    const/4 v13, 0x4

    if-eq v4, v15, :cond_7

    packed-switch v4, :pswitch_data_0

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v4, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v8, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v3, v8

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :pswitch_0
    const-string v0, "msg.re.unmatched.right.paren"

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :pswitch_1
    add-int/lit8 v4, v2, 0x2

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v6, :cond_3

    aget-char v3, v1, v3

    if-ne v3, v11, :cond_3

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v1, v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_3

    :cond_0
    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v2, 0x3d

    if-ne v3, v2, :cond_1

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v13

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x21

    if-ne v3, v2, :cond_2

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v13

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    :goto_0
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/2addr v3, v8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_4

    return v17

    :cond_4
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_6

    aget-char v4, v1, v3

    const/16 v6, 0x29

    if-eq v4, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v3, v8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    sub-int/2addr v3, v8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v2, :cond_1f

    iget-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_a

    :cond_6
    :goto_1
    const-string v0, "msg.unterm.paren"

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :cond_7
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v4, :cond_16

    add-int/lit8 v9, v2, 0x2

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    const/16 v11, 0x42

    if-eq v3, v11, :cond_15

    const/16 v11, 0x44

    if-eq v3, v11, :cond_14

    const/16 v11, 0x53

    if-eq v3, v11, :cond_13

    const/16 v11, 0x57

    const/16 v18, 0x2

    const/16 v14, 0xa

    if-eq v3, v11, :cond_12

    const/16 v11, 0x66

    if-eq v3, v11, :cond_11

    const/16 v11, 0x6e

    if-eq v3, v11, :cond_10

    const/16 v14, 0x20

    const-string v12, "msg.bad.backref"

    const/16 v10, 0xd

    const/16 v11, 0x30

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const/16 v2, 0xb

    const/16 v4, 0x9

    packed-switch v3, :pswitch_data_3

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v3, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v8, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v3, v8

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :pswitch_2
    move/from16 v13, v18

    goto :goto_2

    :pswitch_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :pswitch_4
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :goto_2
    :pswitch_5
    move/from16 v2, v17

    move v3, v2

    :goto_3
    if-ge v2, v13, :cond_9

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v6, :cond_9

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v1, v4

    invoke-static {v4, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v3

    if-gez v3, :cond_8

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    int-to-char v2, v3

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :pswitch_6
    invoke-static {v0, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :pswitch_7
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :pswitch_8
    invoke-static {v0, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :pswitch_9
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :pswitch_a
    if-ge v9, v4, :cond_a

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    and-int/lit8 v2, v2, 0x1f

    int-to-char v15, v2

    goto :goto_5

    :cond_a
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    :goto_5
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :pswitch_b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v13}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v8

    :pswitch_c
    add-int/lit8 v4, v2, 0x1

    const-string v6, "msg.overlarge.backref"

    invoke-static {v3, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    move-result v6

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v6, v9, :cond_b

    iget-object v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    invoke-static {v9, v12, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v7, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v6, v7, :cond_e

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v4, 0x38

    if-lt v3, v4, :cond_c

    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v3, v11

    :goto_6
    if-ge v3, v14, :cond_d

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v4, :cond_d

    aget-char v4, v1, v2

    if-lt v4, v11, :cond_d

    const/16 v6, 0x37

    if-gt v4, v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    goto :goto_6

    :cond_d
    int-to-char v2, v3

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :cond_e
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v3, v6, -0x1

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    if-ge v2, v6, :cond_1f

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    goto/16 :goto_a

    :pswitch_d
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    invoke-static {v2, v12, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v17

    :goto_7
    if-ge v2, v14, :cond_f

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v4, :cond_f

    aget-char v4, v1, v3

    if-lt v4, v11, :cond_f

    const/16 v6, 0x37

    if-gt v4, v6, :cond_f

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    goto :goto_7

    :cond_f
    int-to-char v2, v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :cond_10
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :cond_11
    const/16 v2, 0xc

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_a

    :cond_12
    const/16 v2, 0xc

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v14}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :cond_13
    const/16 v2, 0xc

    const/16 v18, 0x2

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :cond_14
    const/16 v18, 0x2

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_a

    :cond_15
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v8

    :cond_16
    const-string v0, "msg.trail.backslash"

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :cond_17
    const/16 v17, 0x0

    const/16 v18, 0x2

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    :goto_8
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v2, v4, :cond_18

    const-string v0, "msg.unterm.class"

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :cond_18
    aget-char v4, v1, v2

    if-ne v4, v15, :cond_19

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_9

    :cond_19
    const/16 v6, 0x5d

    if-ne v4, v6, :cond_1b

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    sub-int v6, v2, v3

    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->index:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    invoke-static {v0, v4, v1, v3, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    move-result v2

    if-nez v2, :cond_1a

    return v17

    :cond_1a
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a

    :cond_1b
    :goto_9
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_8

    :cond_1c
    const/16 v18, 0x2

    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    move/from16 v2, v18

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v8

    :cond_1d
    const/16 v17, 0x0

    :pswitch_e
    aget-char v0, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.bad.quant"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v17

    :cond_1e
    const/16 v17, 0x0

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_1f
    :goto_a
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v3, v4, :cond_20

    return v8

    :cond_20
    aget-char v4, v1, v3

    const/16 v6, 0x2a

    const/4 v7, -0x1

    const/16 v9, 0x19

    if-eq v4, v6, :cond_28

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_27

    const/16 v6, 0x3f

    if-eq v4, v6, :cond_26

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_21

    move/from16 v4, v17

    goto/16 :goto_e

    :cond_21
    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v6, v1

    if-ge v4, v6, :cond_25

    aget-char v4, v1, v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_25

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v6, v8

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const-string v6, "msg.overlarge.min"

    invoke-static {v4, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    move-result v4

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v10, v1

    if-ge v6, v10, :cond_25

    aget-char v10, v1, v6

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_23

    add-int/2addr v6, v8

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v11, v1

    if-ge v6, v11, :cond_23

    aget-char v10, v1, v6

    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v6, v8

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v11, v1

    if-ge v6, v11, :cond_24

    const-string v6, "msg.overlarge.max"

    invoke-static {v10, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    move-result v7

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v10, v1, v6

    if-gt v4, v7, :cond_22

    goto :goto_b

    :cond_22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.max.lt.min"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntaxError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_23
    move v7, v4

    :cond_24
    :goto_b
    const/16 v6, 0x7d

    if-ne v10, v6, :cond_25

    new-instance v6, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v6, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v6, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v7, v6, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/16 v20, 0xc

    add-int/lit8 v4, v4, 0xc

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v4, v8

    goto :goto_c

    :cond_25
    move/from16 v4, v17

    :goto_c
    if-nez v4, :cond_29

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_e

    :cond_26
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move/from16 v4, v17

    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v8, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/16 v19, 0x8

    add-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :goto_d
    move v4, v8

    goto :goto_e

    :cond_27
    const/16 v19, 0x8

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v8, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v7, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_d

    :cond_28
    const/16 v19, 0x8

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v4, 0x0

    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v7, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_d

    :cond_29
    :goto_e
    if-nez v4, :cond_2a

    return v8

    :cond_2a
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v6, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iput v5, v6, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sub-int/2addr v2, v5

    iput v2, v6, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v2, :cond_2b

    aget-char v1, v1, v4

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_2b

    const/16 v18, 0x2

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v4, 0x0

    iput-boolean v4, v6, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    goto :goto_f

    :cond_2b
    iput-boolean v8, v6, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    :goto_f
    return v8

    :cond_2c
    const/16 v16, 0x3

    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    move/from16 v2, v16

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v8

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    iget v3, v1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    add-int/2addr v3, v2

    iget v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v4, v4, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    if-ne v2, v3, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v4, v4, v2

    const/16 v6, 0x5e

    const/4 v7, 0x0

    if-ne v4, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move v4, v7

    move v6, v4

    :goto_0
    if-eq v2, v3, :cond_21

    iget-object v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v8, v8, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v9, v8, v2

    const/16 v10, 0x5c

    const/4 v11, 0x2

    const/16 v12, 0x2d

    const/4 v13, 0x1

    if-ne v9, v10, :cond_19

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v14, v2, 0x2

    aget-char v9, v8, v9

    const/16 v15, 0x44

    if-eq v9, v15, :cond_17

    const/16 v15, 0x53

    if-eq v9, v15, :cond_14

    const/16 v15, 0x57

    if-eq v9, v15, :cond_f

    const/16 v15, 0x66

    if-eq v9, v15, :cond_e

    const/16 v15, 0x6e

    if-eq v9, v15, :cond_d

    const/16 v15, 0x30

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    :goto_1
    move v2, v14

    goto/16 :goto_d

    :pswitch_0
    move v2, v11

    goto :goto_4

    :pswitch_1
    if-eqz v4, :cond_2

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_2
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v13

    :goto_2
    if-ltz v2, :cond_4

    int-to-char v8, v2

    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v2, v14

    goto :goto_0

    :pswitch_2
    const/16 v9, 0xb

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x4

    :goto_4
    move v8, v7

    move v9, v8

    :goto_5
    if-ge v8, v2, :cond_6

    if-ge v14, v3, :cond_6

    iget-object v15, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v16, v14, 0x1

    aget-char v14, v15, v14

    invoke-static {v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    move-result v14

    if-gez v14, :cond_5

    add-int/lit8 v8, v8, 0x1

    sub-int v14, v16, v8

    goto :goto_6

    :cond_5
    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v14

    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v16

    goto :goto_5

    :cond_6
    move v10, v9

    :goto_6
    int-to-char v9, v10

    goto :goto_1

    :pswitch_4
    const/16 v9, 0x9

    goto :goto_1

    :pswitch_5
    if-eqz v4, :cond_7

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_7
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v13

    :goto_7
    if-ltz v2, :cond_4

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_8

    int-to-char v8, v2

    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :pswitch_6
    const/16 v9, 0xd

    goto :goto_1

    :pswitch_7
    if-eqz v4, :cond_9

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_9
    const/16 v2, 0x39

    invoke-static {v1, v15, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    goto :goto_3

    :pswitch_8
    if-ge v14, v3, :cond_a

    aget-char v8, v8, v14

    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v8, v8, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v2, v2, 0x3

    aget-char v8, v8, v14

    and-int/lit8 v8, v8, 0x1f

    int-to-char v9, v8

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    goto/16 :goto_d

    :pswitch_9
    move v9, v5

    goto/16 :goto_1

    :pswitch_a
    add-int/lit8 v9, v9, -0x30

    aget-char v10, v8, v14

    if-gt v15, v10, :cond_c

    const/16 v5, 0x37

    if-gt v10, v5, :cond_c

    add-int/lit8 v14, v2, 0x3

    mul-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    aget-char v8, v8, v14

    if-gt v15, v8, :cond_c

    if-gt v8, v5, :cond_c

    add-int/lit8 v14, v2, 0x4

    mul-int/lit8 v5, v9, 0x8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v5, v8

    const/16 v8, 0xff

    if-gt v5, v8, :cond_b

    move v9, v5

    goto :goto_8

    :cond_b
    add-int/lit8 v14, v2, 0x3

    :cond_c
    :goto_8
    int-to-char v9, v9

    goto/16 :goto_1

    :cond_d
    const/16 v9, 0xa

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0xc

    goto/16 :goto_1

    :cond_f
    if-eqz v4, :cond_10

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_10
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v13

    :goto_9
    if-ltz v2, :cond_12

    int-to-char v5, v2

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_12
    :goto_a
    move v2, v14

    :cond_13
    :goto_b
    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_14
    if-eqz v4, :cond_15

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_15
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v13

    :goto_c
    if-ltz v2, :cond_12

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v5

    if-nez v5, :cond_16

    int-to-char v5, v2

    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_17
    if-eqz v4, :cond_18

    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    move v4, v7

    :cond_18
    const/16 v2, 0x2f

    invoke-static {v1, v7, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v13

    int-to-char v2, v2

    const/16 v5, 0x3a

    invoke-static {v1, v5, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    goto :goto_a

    :cond_19
    add-int/lit8 v2, v2, 0x1

    :goto_d
    if-eqz v4, :cond_1f

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v4, v11

    if-eqz v4, :cond_1d

    move v4, v6

    :cond_1a
    if-gt v4, v9, :cond_1e

    invoke-static {v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v8

    if-eq v4, v5, :cond_1b

    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_1b
    if-eq v4, v8, :cond_1c

    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    if-nez v4, :cond_1a

    goto :goto_e

    :cond_1d
    invoke-static {v1, v6, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_1e
    :goto_e
    move v4, v7

    goto :goto_b

    :cond_1f
    iget-object v5, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_20

    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v5

    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    goto :goto_f

    :cond_20
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :goto_f
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_13

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v5, v5, v2

    if-ne v5, v12, :cond_13

    add-int/lit8 v2, v2, 0x1

    move v6, v9

    move v4, v13

    goto/16 :goto_b

    :cond_21
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2
    new-instance v1, Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v7, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v1, v2, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V
    .locals 7

    .line 3
    new-instance v0, Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 8

    new-instance v0, Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    .line 2
    const-class v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object p0
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p0

    return-object p0
.end method

.method private static reopIsSimple(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x17

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntaxError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .locals 0

    if-gt p1, p2, :cond_0

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private setLastIndex(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "lastIndex"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "msg.modify.readonly"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_0

    iget-object p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p5, p5, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object p2, p5, p2

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :cond_0
    :goto_0
    move v1, v2

    goto/16 :goto_9

    :pswitch_2
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p2, p1, :cond_1

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p2

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p2, p1, :cond_0

    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_3
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 p2, p4, 0x1

    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p3, p1, :cond_3

    invoke-static {p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p3

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p3, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :goto_2
    move p4, p2

    goto/16 :goto_9

    :cond_4
    move p4, p2

    goto :goto_0

    :pswitch_5
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 v1, p4, 0x2

    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x4

    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_9

    :pswitch_6
    add-int/lit8 p2, p4, 0x1

    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p3, :cond_4

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto :goto_2

    :pswitch_7
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 v1, p4, 0x2

    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x4

    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_9

    :pswitch_8
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_9

    :pswitch_9
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_a
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_b
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_c
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_d
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_e
    if-eq v0, p5, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_f
    if-eq v0, p5, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_5
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_9

    :pswitch_10
    if-eqz v0, :cond_7

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move p2, v2

    goto :goto_4

    :cond_7
    :goto_3
    move p2, v1

    :goto_4
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :cond_9
    :goto_5
    xor-int/2addr v1, p2

    goto :goto_9

    :pswitch_11
    if-eqz v0, :cond_b

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    move p2, v2

    goto :goto_7

    :cond_b
    :goto_6
    move p2, v1

    :goto_7
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_9

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :pswitch_12
    if-eq v0, p5, :cond_c

    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_8

    :pswitch_13
    if-eqz v0, :cond_c

    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_0

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_8
    goto/16 :goto_0

    :cond_c
    :goto_9
    :pswitch_14
    if-eqz v1, :cond_e

    if-nez p6, :cond_d

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_d
    return p4

    :cond_e
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static toASCIIHexDigit(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x39

    if-gt p0, v2, :cond_1

    sub-int/2addr p0, v1

    return p0

    :cond_1
    or-int/lit8 p0, p0, 0x20

    const/16 v1, 0x61

    if-gt v1, p0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    return v0
.end method

.method private static upcase(C)C
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ge v1, v0, :cond_2

    :cond_1
    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 4

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_1

    aget-object p2, p3, v0

    instance-of v2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v2, :cond_1

    array-length v2, p3

    if-eq v2, v1, :cond_0

    aget-object v2, p3, v1

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    :cond_0
    check-cast p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    iget-object p1, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    goto :goto_4

    :cond_1
    array-length p2, p3

    if-eqz p2, :cond_4

    aget-object p2, p3, v0

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    check-cast p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    iget-object p2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, ""

    :goto_1
    array-length p2, p3

    if-le p2, v1, :cond_5

    aget-object p2, p3, v1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p2, v1, :cond_5

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    array-length v1, p3

    if-lez v1, :cond_7

    aget-object p3, p3, v0

    instance-of p3, p3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p3

    const/16 v1, 0xc8

    if-lt p3, v1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "msg.bad.regexp.compile"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_7
    :goto_3
    invoke-static {p1, v2, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    :goto_4
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-object p0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_0
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1, p3, p4, v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    if-nez p1, :cond_1

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p3, "index"

    invoke-interface {p1, p3, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p3, p4, p5, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->js_SymbolMatchAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1, p3, p4, v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p5, 0x2

    invoke-virtual {p1, p3, p4, v0, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p4, v0, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_5
    invoke-static {p3, p4, p5, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->js_exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    if-eq p5, p4, :cond_5

    instance-of p3, p5, Lorg/mozilla/javascript/NativeObject;

    if-eqz p3, :cond_5

    const-string p1, "source"

    invoke-interface {p5, p1, p5}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "undefined"

    if-eqz p4, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p4, "flags"

    invoke-interface {p5, p4, p5}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1, p3, p4, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    nop

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

.method public execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v3

    array-length v0, p3

    const/4 v7, 0x0

    if-nez v0, :cond_1

    iget-object p3, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    if-nez p3, :cond_0

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    :goto_0
    move-object v4, p3

    goto :goto_1

    :cond_1
    aget-object p3, p3, v7

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, v7

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    :goto_3
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_6

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    cmpg-double v0, v5, v0

    if-ltz v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4

    goto :goto_4

    :cond_4
    move-wide v0, v5

    goto :goto_5

    :cond_5
    :goto_4
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_5
    double-to-int v0, v0

    filled-new-array {v0}, [I

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object p1

    if-eqz p3, :cond_9

    if-eqz p1, :cond_8

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_7

    goto :goto_6

    :cond_7
    aget p2, v5, v7

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    :goto_6
    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    :cond_9
    return-object p1
.end method

.method public executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v9, p6

    new-instance v3, Lorg/mozilla/javascript/regexp/REGlobalData;

    invoke-direct {v3}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    const/4 v10, 0x0

    aget v2, p5, v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v2, v7, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-boolean v8, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z

    move-result v4

    const/4 v2, 0x0

    if-nez v4, :cond_2

    const/4 v1, 0x2

    if-eq v9, v1, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v1

    :cond_2
    iget v4, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    aput v4, p5, v10

    iget v8, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v8, v6

    sub-int v8, v4, v8

    sub-int v11, v4, v8

    if-nez v9, :cond_3

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v14, v2

    move-object v13, v12

    move-object/from16 v12, p1

    goto :goto_1

    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v12, v13, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    add-int v14, v11, v8

    invoke-virtual {v5, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v10, v13, v14}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v14, v13

    :goto_1
    iget-object v15, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-nez v15, :cond_4

    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_4

    :cond_4
    new-array v15, v15, [Lorg/mozilla/javascript/regexp/SubString;

    iput-object v15, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    move v15, v10

    :goto_2
    iget-object v10, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v10, v10, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v15, v10, :cond_7

    invoke-virtual {v3, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    invoke-virtual {v3, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result v0

    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v2, v5, v10, v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aput-object v2, v0, v15

    if-eqz v9, :cond_6

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v2}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v0, v14, v10}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    add-int/lit8 v0, v15, 0x1

    sget-object v10, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {v14, v0, v14, v10}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_7
    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    :goto_4
    if-eqz v9, :cond_8

    iget v0, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "index"

    invoke-interface {v14, v2, v14, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "input"

    invoke-interface {v14, v0, v14, v5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_9

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    :cond_9
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput v11, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput v8, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    invoke-virtual {v12}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_a

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v6, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v2, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iput v2, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto :goto_5

    :cond_a
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    const/4 v2, 0x0

    iput v2, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v2, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v6, v2

    iput v6, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    :goto_5
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput v4, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-object v13
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "lastIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v9, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "ignoreCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v9, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v9, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "sticky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v9, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "source"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v9, v4

    goto :goto_0

    :sswitch_5
    const-string v0, "multiline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v9, v5

    goto :goto_0

    :sswitch_6
    const-string v0, "global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v9, v6

    goto :goto_0

    :sswitch_7
    const-string v0, "dotAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v9, v7

    :goto_0
    packed-switch v9, :pswitch_data_0

    move v1, v7

    goto :goto_1

    :pswitch_0
    move v1, v6

    goto :goto_1

    :pswitch_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    move v1, v4

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_4
    move v1, v5

    goto :goto_1

    :pswitch_5
    move v1, v3

    goto :goto_1

    :pswitch_6
    move v1, v8

    :goto_1
    :pswitch_7
    if-nez v1, :cond_8

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_8
    packed-switch v1, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_8
    iget v8, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    :pswitch_9
    invoke-static {v8, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f097468 -> :sswitch_7
        -0x4a16fc5d -> :sswitch_6
        -0x47e5bf53 -> :sswitch_5
        -0x356f97e5 -> :sswitch_4
        -0x352ece17 -> :sswitch_3
        0x5cfee87 -> :sswitch_2
        0x3474b422 -> :sswitch_1
        0x76c7d3dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 8

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "compile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v7, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "exec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v4

    goto :goto_0

    :sswitch_4
    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v5

    goto :goto_0

    :sswitch_5
    const-string v0, "toSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    return v5

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    const/4 p1, 0x6

    return p1

    :pswitch_4
    return v4

    :pswitch_5
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_5
        -0x69e9ad94 -> :sswitch_4
        -0x3a6b4d6e -> :sswitch_3
        0x2fb891 -> :sswitch_2
        0x364492 -> :sswitch_1
        0x38a75a33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 2
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    return p1

    .line 3
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "RegExp"

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    return v0
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "sticky"

    return-object p1

    :pswitch_1
    const-string p1, "dotAll"

    return-object p1

    :pswitch_2
    const-string p1, "multiline"

    return-object p1

    :pswitch_3
    const-string p1, "ignoreCase"

    return-object p1

    :pswitch_4
    const-string p1, "global"

    return-object p1

    :pswitch_5
    const-string p1, "flags"

    return-object p1

    :pswitch_6
    const-string p1, "source"

    return-object p1

    :pswitch_7
    const-string p1, "lastIndex"

    return-object p1

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

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->appendFlags(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-object p1

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

.method public getMaxInstanceId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    const-string v0, "object"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 14

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    const-string v5, "[Symbol.match]"

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    move v9, p1

    const/16 p1, 0x8

    if-ne v9, p1, :cond_1

    sget-object v8, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    sget-object v10, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    const-string v11, "[Symbol.matchAll]"

    const/4 v12, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_1
    const/16 p1, 0x9

    if-ne v9, p1, :cond_2

    sget-object v8, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    sget-object v10, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    const-string v11, "[Symbol.search]"

    const/4 v12, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_2
    move-object v7, p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch v9, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p1, "prefix"

    goto :goto_1

    :pswitch_1
    const-string p1, "test"

    goto :goto_1

    :pswitch_2
    const-string p1, "exec"

    goto :goto_1

    :pswitch_3
    const-string v0, "toSource"

    :goto_0
    move-object v13, v0

    move v0, p1

    move-object p1, v13

    goto :goto_1

    :pswitch_4
    const-string v0, "toString"

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    const-string v0, "compile"

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, v9, p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInstanceIdAttributes(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    return-void
.end method

.method public setInstanceIdValue(ILjava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    array-length v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "(?:)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->appendFlags(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
