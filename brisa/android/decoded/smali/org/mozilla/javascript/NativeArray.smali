.class public Lorg/mozilla/javascript/NativeArray;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final ARRAY_TAG:Ljava/lang/Object;

.field private static final ConstructorId_concat:I = -0xd

.field private static final ConstructorId_every:I = -0x11

.field private static final ConstructorId_filter:I = -0x12

.field private static final ConstructorId_find:I = -0x16

.field private static final ConstructorId_findIndex:I = -0x17

.field private static final ConstructorId_findLast:I = -0x18

.field private static final ConstructorId_findLastIndex:I = -0x19

.field private static final ConstructorId_forEach:I = -0x13

.field private static final ConstructorId_from:I = -0x1e

.field private static final ConstructorId_indexOf:I = -0xf

.field private static final ConstructorId_isArray:I = -0x1c

.field private static final ConstructorId_join:I = -0x5

.field private static final ConstructorId_lastIndexOf:I = -0x10

.field private static final ConstructorId_map:I = -0x14

.field private static final ConstructorId_of:I = -0x1d

.field private static final ConstructorId_pop:I = -0x9

.field private static final ConstructorId_push:I = -0x8

.field private static final ConstructorId_reduce:I = -0x1a

.field private static final ConstructorId_reduceRight:I = -0x1b

.field private static final ConstructorId_reverse:I = -0x6

.field private static final ConstructorId_shift:I = -0xa

.field private static final ConstructorId_slice:I = -0xe

.field private static final ConstructorId_some:I = -0x15

.field private static final ConstructorId_sort:I = -0x7

.field private static final ConstructorId_splice:I = -0xc

.field private static final ConstructorId_unshift:I = -0xb

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xa

.field private static final GROW_FACTOR:D = 1.5

.field private static final Id_at:I = 0x22

.field private static final Id_concat:I = 0xd

.field private static final Id_constructor:I = 0x1

.field private static final Id_copyWithin:I = 0x21

.field private static final Id_entries:I = 0x1f

.field private static final Id_every:I = 0x11

.field private static final Id_fill:I = 0x1c

.field private static final Id_filter:I = 0x12

.field private static final Id_find:I = 0x16

.field private static final Id_findIndex:I = 0x17

.field private static final Id_findLast:I = 0x18

.field private static final Id_findLastIndex:I = 0x19

.field private static final Id_flat:I = 0x23

.field private static final Id_flatMap:I = 0x24

.field private static final Id_forEach:I = 0x13

.field private static final Id_includes:I = 0x20

.field private static final Id_indexOf:I = 0xf

.field private static final Id_join:I = 0x5

.field private static final Id_keys:I = 0x1d

.field private static final Id_lastIndexOf:I = 0x10

.field private static final Id_length:I = 0x1

.field private static final Id_map:I = 0x14

.field private static final Id_pop:I = 0x9

.field private static final Id_push:I = 0x8

.field private static final Id_reduce:I = 0x1a

.field private static final Id_reduceRight:I = 0x1b

.field private static final Id_reverse:I = 0x6

.field private static final Id_shift:I = 0xa

.field private static final Id_slice:I = 0xe

.field private static final Id_some:I = 0x15

.field private static final Id_sort:I = 0x7

.field private static final Id_splice:I = 0xc

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toReversed:I = 0x25

.field private static final Id_toSorted:I = 0x26

.field private static final Id_toSource:I = 0x4

.field private static final Id_toSpliced:I = 0x27

.field private static final Id_toString:I = 0x2

.field private static final Id_unshift:I = 0xb

.field private static final Id_values:I = 0x1e

.field private static final Id_with:I = 0x28

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PRE_GROW_SIZE:I = 0x55555554

.field private static final MAX_PROTOTYPE_ID:I = 0x29

.field private static final NEGATIVE_ONE:Ljava/lang/Long;

.field private static final SymbolId_unscopables:I = 0x29

.field private static final UNSCOPABLES:[Ljava/lang/String;

.field private static maximumInitialCapacity:I = 0x0

.field private static final serialVersionUID:J = 0x65be3f5055db7c6aL


# instance fields
.field private dense:[Ljava/lang/Object;

.field private denseOnly:Z

.field private length:J

.field private lengthAttr:I

.field private transient modCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "Array"

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    const-string v15, "toSpliced"

    const-string v16, "values"

    const-string v1, "at"

    const-string v2, "copyWithin"

    const-string v3, "entries"

    const-string v4, "fill"

    const-string v5, "find"

    const-string v6, "findIndex"

    const-string v7, "findLast"

    const-string v8, "findLastIndex"

    const-string v9, "flat"

    const-string v10, "flatMap"

    const-string v11, "includes"

    const-string v12, "keys"

    const-string v13, "toReversed"

    const-string v14, "toSorted"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->UNSCOPABLES:[Ljava/lang/String;

    const/16 v0, 0x2710

    sput v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    .line 3
    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_2

    long-to-int v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    move v0, v1

    .line 4
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 5
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_2
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    .line 8
    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 10
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 11
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void
.end method

.method private static callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;
    .locals 2

    instance-of v0, p2, Lorg/mozilla/javascript/Constructable;

    if-eqz v0, :cond_3

    if-nez p5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    :goto_1
    check-cast p2, Lorg/mozilla/javascript/Constructable;

    invoke-interface {p2, p0, p1, p5}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2
    :try_end_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    const-string p5, "TypeError"

    invoke-virtual {p2}, Lorg/mozilla/javascript/EcmaError;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_3

    :cond_2
    throw p2

    :cond_3
    :goto_3
    const/4 p2, 0x0

    :goto_4
    if-nez p2, :cond_5

    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p3, v0

    if-lez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_5

    :cond_4
    long-to-int p2, p3

    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.method private checkModCount(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method private static concatSpreadArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;J)J
    .locals 8

    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    add-long v2, v0, p3

    long-to-double v4, v2

    const-wide v6, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_3

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    instance-of v4, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v4, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v5, :cond_0

    instance-of v5, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v5, :cond_0

    move-object v5, p2

    check-cast v5, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v6, v5, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v6, :cond_0

    long-to-int p0, v2

    invoke-direct {v4, p0}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    iget-object p0, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object p1, v4, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int p2, p3

    long-to-int p3, v0

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-wide v2

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    invoke-static {p2, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    invoke-static {p0, p1, p3, p4, v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_1
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr p3, v6

    goto :goto_0

    :cond_2
    return-wide v2

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v2, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "enumerable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static defineElemOrThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 4

    long-to-double v0, p2

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static deleteElem(Lorg/mozilla/javascript/Scriptable;J)V
    .locals 3

    long-to-int v0, p1

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    return-void
.end method

.method private static doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeArray;->isConcatSpreadable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->concatSpreadArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p2, p4, p5, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 p0, 0x1

    add-long/2addr p4, p0

    return-wide p4
.end method

.method private ensureCapacity(I)Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1

    const v1, 0x55555554

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    iput-boolean v2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    return v2

    :cond_0
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static flat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;D)Lorg/mozilla/javascript/Scriptable;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_0
    cmp-long v12, v8, v3

    if-gez v12, :cond_3

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v12, v13, :cond_0

    const-wide/16 v16, 0x1

    goto :goto_2

    :cond_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, p3, v16

    if-ltz v13, :cond_1

    invoke-static {v12}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    check-cast v12, Lorg/mozilla/javascript/Scriptable;

    sub-double v6, p3, v16

    invoke-static {v0, v1, v12, v6, v7}, Lorg/mozilla/javascript/NativeArray;->flat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;D)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x1

    :goto_1
    cmp-long v7, v14, v12

    if-gez v7, :cond_2

    invoke-static {v6, v14, v15}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v7

    add-long v18, v10, v16

    invoke-static {v0, v5, v10, v11, v7}, Lorg/mozilla/javascript/NativeArray;->defineElemOrThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long v14, v14, v16

    move-wide/from16 v10, v18

    goto :goto_1

    :cond_1
    const-wide/16 v16, 0x1

    add-long v14, v10, v16

    invoke-static {v0, v5, v10, v11, v12}, Lorg/mozilla/javascript/NativeArray;->defineElemOrThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v10, v14

    :cond_2
    :goto_2
    add-long v8, v8, v16

    goto :goto_0

    :cond_3
    invoke-static {v0, v5, v10, v11}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v5
.end method

.method private static getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public static getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J
    .locals 4

    instance-of v0, p1, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeString;->getLength()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide p0

    return-wide p0

    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/xml/XMLObject;

    const-string v1, "length"

    if-eqz v0, :cond_2

    invoke-interface {p1, v1, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Callable;

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p0, p1, p1, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_3

    return-wide v0

    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    const-wide v2, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v2, p0, v2

    if-lez v2, :cond_4

    const-wide p0, 0x1fffffffffffffL

    return-wide p0

    :cond_4
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_5

    return-wide v0

    :cond_5
    double-to-long p0, p0

    return-wide p0
.end method

.method public static getMaximumInitialCapacity()I
    .locals 1

    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return v0
.end method

.method public static bridge synthetic h(Lorg/mozilla/javascript/NativeArray;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return p0
.end method

.method public static bridge synthetic i(Lorg/mozilla/javascript/NativeArray;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeArray;->checkModCount(I)V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolSpecies(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolUnscopables(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    return-void
.end method

.method private static isConcatSpreadable(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    sget-object v1, Lorg/mozilla/javascript/SymbolKey;->IS_CONCAT_SPREADABLE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    const-string v0, "Array"

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    array-length p1, p2

    if-nez p1, :cond_0

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p1, 0x78

    if-ne p0, p1, :cond_1

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    aget-object p1, p2, p0

    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-double v2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-nez p1, :cond_3

    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    return-object p0

    :cond_3
    const-string p1, "msg.arraylength.bad"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    new-instance p0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method private static js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    array-length p1, p3

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-lt p1, v2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long p1, v5, v3

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    add-long/2addr v5, v0

    :goto_1
    cmp-long p1, v5, v3

    if-ltz p1, :cond_3

    cmp-long p1, v5, v0

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0, p2, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 10

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J

    move-result-wide v3

    array-length p0, p3

    move-wide v8, v3

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v7, p3, p1

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static/range {v4 .. v9}, Lorg/mozilla/javascript/NativeArray;->doConcat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;J)J

    move-result-wide v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v2
.end method

.method private static js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    array-length v5, v1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_1

    add-long/2addr v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_1
    array-length v5, v1

    const/4 v11, 0x2

    if-lt v5, v11, :cond_2

    aget-object v5, v1, v6

    goto :goto_2

    :cond_2
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v12

    double-to-long v12, v12

    cmp-long v5, v12, v9

    if-gez v5, :cond_3

    add-long/2addr v12, v3

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_3

    :cond_3
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :goto_3
    array-length v5, v1

    const/4 v14, 0x3

    if-lt v5, v14, :cond_4

    aget-object v5, v1, v11

    invoke-static {v5}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v1, v1, v11

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v14

    double-to-long v14, v14

    goto :goto_4

    :cond_4
    move-wide v14, v3

    :goto_4
    cmp-long v1, v14, v9

    if-gez v1, :cond_5

    add-long/2addr v14, v3

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    goto :goto_5

    :cond_5
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_5
    sub-long/2addr v14, v12

    sub-long/2addr v3, v7

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    cmp-long v1, v12, v7

    const-wide/16 v14, 0x1

    if-gez v1, :cond_6

    add-long v16, v12, v3

    cmp-long v1, v7, v16

    if-gez v1, :cond_6

    sub-long v12, v16, v14

    add-long/2addr v7, v3

    sub-long/2addr v7, v14

    const/4 v6, -0x1

    :cond_6
    instance-of v1, v2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_7

    const-wide/32 v16, 0x7fffffff

    cmp-long v1, v3, v16

    if-gtz v1, :cond_7

    move-object v1, v2

    check-cast v1, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v5, :cond_7

    :goto_6
    cmp-long v0, v3, v9

    if-lez v0, :cond_a

    iget-object v0, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v2, v7

    long-to-int v5, v12

    aget-object v5, v0, v5

    aput-object v5, v0, v2

    move-wide/from16 v16, v9

    int-to-long v9, v6

    add-long/2addr v12, v9

    add-long/2addr v7, v9

    sub-long/2addr v3, v14

    move-wide/from16 v9, v16

    goto :goto_6

    :cond_7
    move-wide/from16 v16, v9

    :goto_7
    cmp-long v1, v3, v16

    if-lez v1, :cond_a

    invoke-static {v2, v12, v13}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v5, :cond_9

    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v0, v2, v7, v8, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_9

    :cond_9
    :goto_8
    invoke-static {v2, v7, v8}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    :goto_9
    int-to-long v9, v6

    add-long/2addr v12, v9

    add-long/2addr v7, v9

    sub-long/2addr v3, v14

    goto :goto_7

    :cond_a
    return-object p2
.end method

.method private static js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    array-length p1, p3

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    if-lt p1, v4, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    double-to-long v5, v5

    goto :goto_0

    :cond_0
    move-wide v5, v2

    :goto_0
    cmp-long p1, v5, v2

    if-gez p1, :cond_1

    add-long/2addr v5, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_1
    array-length p1, p3

    const/4 v7, 0x3

    if-lt p1, v7, :cond_2

    aget-object p1, p3, v4

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    aget-object p1, p3, v4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v7

    double-to-long v7, v7

    goto :goto_2

    :cond_2
    move-wide v7, v0

    :goto_2
    cmp-long p1, v7, v2

    if-gez p1, :cond_3

    add-long/2addr v0, v7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_3
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_3
    array-length p1, p3

    if-lez p1, :cond_4

    const/4 p1, 0x0

    aget-object p1, p3, p1

    goto :goto_4

    :cond_4
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_4
    cmp-long p3, v5, v0

    if-gez p3, :cond_5

    invoke-static {p0, p2, v5, v6, p1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method private static js_flat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-static {v1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/NativeArray;->flat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;D)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static js_flatMap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    aget-object v4, v2, v5

    goto :goto_0

    :cond_0
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {v0, v4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getCallbackArg(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    const/4 v7, 0x1

    aget-object v2, v2, v7

    if-eqz v2, :cond_2

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v6

    :goto_2
    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v7

    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_3
    cmp-long v5, v11, v7

    if-gez v5, :cond_6

    invoke-static {v3, v11, v12}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const-wide/16 v16, 0x1

    if-ne v5, v15, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    filled-new-array {v5, v15, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v6, v2, v5}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    check-cast v5, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v18

    const-wide/16 v9, 0x0

    :goto_4
    cmp-long v15, v9, v18

    if-gez v15, :cond_5

    invoke-static {v5, v9, v10}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v15

    add-long v20, v13, v16

    invoke-static {v0, v1, v13, v14, v15}, Lorg/mozilla/javascript/NativeArray;->defineElemOrThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long v9, v9, v16

    move-wide/from16 v13, v20

    goto :goto_4

    :cond_4
    add-long v9, v13, v16

    invoke-static {v0, v1, v13, v14, v5}, Lorg/mozilla/javascript/NativeArray;->defineElemOrThrow(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v13, v9

    :cond_5
    :goto_5
    add-long v11, v11, v16

    goto :goto_3

    :cond_6
    invoke-static {v0, v1, v13, v14}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v1
.end method

.method private static js_from(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    aget-object v2, v0, v3

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    array-length v2, v0

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    aget-object v2, v0, v4

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    sget-object v4, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    instance-of v8, v2, Lorg/mozilla/javascript/Function;

    if-eqz v8, :cond_3

    check-cast v2, Lorg/mozilla/javascript/Function;

    array-length v3, v0

    const/4 v8, 0x3

    if-lt v3, v8, :cond_2

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    :cond_2
    :goto_2
    move-object v8, v2

    move-object v9, v4

    goto :goto_3

    :cond_3
    const-string p0, "msg.map.function.not"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {v6, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v6, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x0

    if-nez v2, :cond_7

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v2, :cond_7

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v6, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->callIterator(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {v3, p0, v1, v14}, Lorg/mozilla/javascript/IteratorLikeIterable;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v7, :cond_5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v8, p0, v1, v9, v5}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_5
    :goto_5
    invoke-static {p0, v2, v12, v13, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v12, v10

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V

    invoke-static {p0, v2, v12, v13}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v2

    :goto_6
    :try_start_1
    invoke-virtual {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0

    :cond_7
    invoke-static {p0, v6}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    :goto_8
    cmp-long v5, v12, v3

    if-gez v5, :cond_9

    invoke-static {p0, v6, v12, v13}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v7, :cond_8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v8, p0, v1, v9, v5}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_8
    invoke-static {p0, v2, v12, v13, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v12, v10

    goto :goto_8

    :cond_9
    invoke-static {p0, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v2
.end method

.method private static js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v4, 0x1

    if-ge p0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    double-to-long v6, v6

    cmp-long p0, v6, v2

    if-gez p0, :cond_2

    add-long/2addr v6, v0

    cmp-long p0, v6, v2

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v6

    :goto_0
    sub-long v6, v0, v4

    cmp-long p0, v2, v6

    if-lez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    :goto_1
    array-length p0, p3

    if-lez p0, :cond_4

    const/4 p0, 0x0

    aget-object p0, p3, p0

    goto :goto_2

    :cond_4
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p3, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    long-to-int p3, v2

    :goto_3
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-gez v2, :cond_8

    iget-object v2, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v2, v2, p3

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    if-ne v2, v3, :cond_6

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_6
    invoke-static {v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    :goto_4
    cmp-long p2, v2, v0

    if-gez p2, :cond_c

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, p3, :cond_a

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_a
    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    add-long/2addr v2, v4

    goto :goto_4

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-ge p0, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v5

    if-gez p0, :cond_2

    add-long/2addr p2, v1

    cmp-long p0, p2, v5

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v5, p2

    :goto_1
    sub-long p2, v1, v3

    cmp-long p0, v5, p2

    if-lez p0, :cond_3

    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_3
    :goto_2
    instance-of p0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    long-to-int p2, v5

    :goto_3
    int-to-long v3, p2

    cmp-long p3, v3, v1

    if-gez p3, :cond_6

    iget-object p3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v5, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    if-eq p3, v5, :cond_5

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_7
    :goto_4
    cmp-long p0, v5, v1

    if-gez p0, :cond_9

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p2, :cond_8

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_8
    add-long/2addr v5, v3

    goto :goto_4

    :cond_9
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0
.end method

.method private static js_isArray(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/NativeProxy;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/NativeProxy;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeProxy;->getTargetThrowIfRevoked()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Array"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    long-to-int p2, v0

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    aget-object p3, p3, v1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, ","

    :goto_1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v2, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v1, p2, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p1, v2, :cond_3

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, v2, :cond_3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_6

    const-string p0, ""

    return-object p0

    :cond_6
    new-array v0, p2, [Ljava/lang/String;

    move v2, v1

    move v3, v2

    :goto_3
    if-eq v2, p2, :cond_8

    int-to-long v4, v2

    invoke-static {p0, p1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v4, v5, :cond_7

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    aput-object v4, v0, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 p0, p2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/2addr p1, p0

    add-int/2addr p1, v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    if-eq v1, p2, :cond_b

    if-eqz v1, :cond_9

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-object p1, v0, v1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private static js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p3, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v1

    array-length p0, p3

    const/4 p2, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    if-ge p0, p2, :cond_1

    sub-long/2addr v1, v5

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p3, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p2

    double-to-long p2, p2

    cmp-long p0, p2, v1

    if-ltz p0, :cond_2

    sub-long/2addr v1, v5

    goto :goto_1

    :cond_2
    cmp-long p0, p2, v3

    if-gez p0, :cond_3

    add-long/2addr p2, v1

    :cond_3
    move-wide v1, p2

    :goto_1
    cmp-long p0, v1, v3

    if-gez p0, :cond_4

    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_4
    :goto_2
    instance-of p0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    long-to-int p2, v1

    :goto_3
    if-ltz p2, :cond_7

    iget-object p3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object p3, p3, p2

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p3, v1, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p3

    :cond_5
    if-eq p3, v1, :cond_6

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    int-to-long p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0

    :cond_8
    :goto_4
    cmp-long p0, v1, v3

    if-ltz p0, :cond_a

    invoke-static {p1, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p2, :cond_9

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_9
    sub-long/2addr v1, v5

    goto :goto_4

    :cond_a
    sget-object p0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Long;

    return-object p0
.end method

.method private static js_of(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    array-length v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeArray;->callConstructorOrCreateArray(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;JZ)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0xc8

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    instance-of p1, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    :goto_0
    array-length p2, p3

    if-ge v0, p2, :cond_1

    const-string p2, "value"

    aget-object v2, p3, v0

    invoke-virtual {p1, p2, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object p2, p0

    check-cast p2, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length p1, p3

    if-ge v0, p1, :cond_1

    int-to-long p1, v0

    aget-object v2, p3, v0

    invoke-static {v1, p0, p1, p2, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length p1, p3

    int-to-long p1, p1

    invoke-static {v1, p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object p0
.end method

.method private static js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p3, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p3, :cond_0

    iget-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p3, v4, v2

    if-lez p3, :cond_0

    sub-long/2addr v4, v0

    iput-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    iget p0, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int p1, v4

    aget-object p1, p0, p1

    long-to-int p2, v4

    sget-object p3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object p3, p0, p2

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide p2

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    sub-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v0
.end method

.method private static js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_1

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v1, v1

    array-length v2, p3

    add-int/2addr v1, v2

    invoke-direct {p2, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length p0, p3

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object p1, p3, v0

    iget-object v1, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v2, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v2

    aput-object p1, v1, v2

    iget p1, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v1

    :goto_1
    array-length p2, p3

    if-ge v0, p2, :cond_2

    int-to-long v3, v0

    add-long/2addr v3, v1

    aget-object p2, p3, v0

    invoke-static {p0, p1, v3, v4, p2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length p2, p3

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p2, 0x78

    if-ne p0, p2, :cond_4

    array-length p0, p3

    if-nez p0, :cond_3

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_3
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p3, p0

    return-object p0

    :cond_4
    return-object p1
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 10

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p3, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p3, :cond_1

    iget-wide v0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_0

    iget-object v0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v0, p3

    aget-object v2, v0, p0

    aput-object v2, v0, p3

    aput-object v1, v0, p0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide p2

    const-wide/16 v0, 0x2

    div-long v0, p2, v0

    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    sub-long v4, p2, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, p1, v2, v3, v9}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    invoke-static {p0, p1, v4, v5, v8}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v2, v6

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private static js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/mozilla/javascript/NativeArray;

    iget-boolean p3, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p3, :cond_1

    iget-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p3, v4, v0

    if-lez p3, :cond_1

    sub-long/2addr v4, v2

    iput-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    iget p0, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, p2, Lorg/mozilla/javascript/NativeArray;->modCount:I

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 p3, 0x0

    aget-object v0, p0, p3

    long-to-int v1, v4

    invoke-static {p0, p1, p0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide p1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p1, p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object p2, p0, p1

    if-ne v0, p2, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide p2

    cmp-long v4, p2, v0

    if-lez v4, :cond_3

    sub-long/2addr p2, v2

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    move-wide v0, v2

    :goto_0
    cmp-long v5, v0, p2

    if-gtz v5, :cond_2

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-static {p0, p1, v6, v7, v5}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v4
.end method

.method private static js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 15

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    array-length v5, v1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    aget-object v5, v1, v8

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10, v3, v4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v9

    array-length v5, v1

    const/4 v11, 0x1

    if-eq v5, v11, :cond_2

    aget-object v1, v1, v11

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v11

    invoke-static {v11, v12, v3, v4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v3

    :cond_2
    :goto_0
    sub-long v11, v3, v9

    const-wide/32 v13, 0x7fffffff

    cmp-long v1, v11, v13

    if-gtz v1, :cond_5

    move-object/from16 v1, p1

    invoke-virtual {p0, v1, v8}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    move-wide v13, v9

    :goto_1
    cmp-long v5, v13, v3

    if-gez v5, :cond_4

    invoke-static {v2, v13, v14}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v8, :cond_3

    sub-long v6, v13, v9

    invoke-static {p0, v1, v6, v7, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_3
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v1

    :cond_5
    const-string v0, "msg.arraylength.bad"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/NativeArray;->sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/util/Comparator;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/NativeArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v5, v4

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    array-length v7, v1

    if-nez v7, :cond_1

    invoke-virtual {v0, v6, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v8

    aget-object v10, v1, v4

    invoke-static {v10}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v10

    add-int/lit8 v12, v7, -0x1

    array-length v13, v1

    const-wide/16 p1, 0x0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    sub-long v15, v8, v10

    move-wide/from16 v30, v15

    move/from16 v16, v14

    move-wide/from16 v14, v30

    move/from16 v17, v5

    goto :goto_2

    :cond_2
    aget-object v12, v1, v14

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v12

    const-wide/16 v15, 0x0

    cmpg-double v15, v12, v15

    if-gez v15, :cond_3

    move/from16 v17, v5

    move/from16 v16, v14

    move-wide/from16 v14, p1

    goto :goto_1

    :cond_3
    move/from16 v16, v14

    sub-long v14, v8, v10

    move/from16 v17, v5

    long-to-double v4, v14

    cmpl-double v4, v12, v4

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    double-to-long v4, v12

    move-wide v14, v4

    :goto_1
    add-int/lit8 v12, v7, -0x2

    :goto_2
    add-long v4, v10, v14

    move-wide/from16 v18, v14

    int-to-long v13, v12

    sub-long v20, v13, v18

    move-wide/from16 v22, v13

    add-long v13, v8, v20

    move-wide/from16 v24, v8

    long-to-double v7, v13

    const-wide v26, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v7, v7, v26

    if-gtz v7, :cond_13

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v18, v7

    if-gtz v9, :cond_12

    cmp-long v9, v18, p1

    const/16 v15, 0x78

    const-wide/16 v26, 0x1

    if-eqz v9, :cond_9

    cmp-long v9, v18, v26

    if-nez v9, :cond_5

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v9

    if-ne v9, v15, :cond_5

    invoke-static {v0, v2, v10, v11}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    move-wide/from16 v18, v7

    goto :goto_4

    :cond_5
    if-eqz v17, :cond_6

    move-wide/from16 v18, v7

    sub-long v7, v4, v10

    long-to-int v7, v7

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v15, v10

    const/4 v1, 0x0

    invoke-static {v9, v15, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v6, v8}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_4

    :cond_6
    move-wide/from16 v18, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    move-wide v7, v10

    :goto_3
    cmp-long v1, v7, v4

    if-eqz v1, :cond_8

    invoke-static {v2, v7, v8}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-wide/from16 v28, v7

    if-eq v1, v9, :cond_7

    sub-long v7, v28, v10

    invoke-static {v0, v6, v7, v8, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_7
    add-long v7, v28, v26

    goto :goto_3

    :cond_8
    sub-long v7, v4, v10

    invoke-static {v0, v6, v7, v8}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    move-wide/from16 v18, v7

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    if-ne v1, v15, :cond_a

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    :goto_4
    if-eqz v17, :cond_d

    cmp-long v1, v13, v18

    if-gez v1, :cond_d

    long-to-int v1, v13

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v0, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v2, v4

    add-long v7, v10, v22

    long-to-int v7, v7

    sub-long v8, v24, v4

    long-to-int v4, v8

    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v12, :cond_b

    iget-object v0, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v2, v10

    const/4 v4, 0x2

    move-object/from16 v7, p3

    invoke-static {v7, v4, v0, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    cmp-long v0, v20, p1

    if-gez v0, :cond_c

    iget-object v0, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-wide/from16 v8, v24

    long-to-int v2, v8

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_c
    iput-wide v13, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    iget v0, v3, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-object v6

    :cond_d
    move-object/from16 v7, p3

    move-wide/from16 v8, v24

    cmp-long v1, v20, p1

    if-lez v1, :cond_e

    sub-long v8, v8, v26

    :goto_5
    cmp-long v1, v8, v4

    if-ltz v1, :cond_10

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    move-wide/from16 p1, v4

    add-long v3, v8, v20

    invoke-static {v0, v2, v3, v4, v1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    sub-long v8, v8, v26

    move-wide/from16 v4, p1

    goto :goto_5

    :cond_e
    move-wide/from16 p1, v4

    if-gez v1, :cond_10

    move-wide/from16 v4, p1

    :goto_6
    cmp-long v1, v4, v8

    if-gez v1, :cond_f

    invoke-static {v2, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    move-wide/from16 p1, v4

    add-long v3, p1, v20

    invoke-static {v0, v2, v3, v4, v1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long v4, p1, v26

    goto :goto_6

    :cond_f
    :goto_7
    sub-long v8, v8, v26

    cmp-long v1, v8, v13

    if-ltz v1, :cond_10

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    goto :goto_7

    :cond_10
    array-length v1, v7

    sub-int/2addr v1, v12

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v12, :cond_11

    int-to-long v8, v4

    add-long/2addr v8, v10

    add-int v3, v4, v1

    aget-object v3, v7, v3

    invoke-static {v0, v2, v8, v9, v3}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    invoke-static {v0, v2, v13, v14}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v6

    :cond_12
    const-string v0, "msg.arraylength.bad"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_13
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.arraylength.too.big"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private static js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    const/4 v2, 0x0

    if-gtz p3, :cond_1

    long-to-int p3, v0

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    sub-int v5, p3, v2

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    invoke-static {p0, p2, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, p1, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const-string p0, "msg.arraylength.bad"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getSortComparator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/util/Comparator;

    move-result-object p3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    long-to-int v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :goto_0
    int-to-long v4, v3

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    invoke-static {p0, p2, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v4, v5, v2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/NativeArray;->sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/util/Comparator;)Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_1
    const-string p0, "msg.arraylength.bad"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_toSpliced(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    array-length v5, v1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-lez v5, :cond_0

    aget-object v5, v1, v6

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10, v3, v4}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->toSliceIndex(DJ)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    array-length v5, v1

    const/4 v11, 0x2

    if-le v5, v11, :cond_1

    array-length v5, v1

    sub-int/2addr v5, v11

    int-to-long v12, v5

    goto :goto_1

    :cond_1
    move-wide v12, v7

    :goto_1
    array-length v5, v1

    if-nez v5, :cond_2

    move-wide v14, v7

    :goto_2
    move-wide/from16 v16, v12

    goto :goto_3

    :cond_2
    array-length v5, v1

    const/4 v14, 0x1

    if-ne v5, v14, :cond_3

    sub-long v14, v3, v9

    goto :goto_2

    :cond_3
    invoke-static {v1, v14}, Lorg/mozilla/javascript/ScriptRuntime;->toLength([Ljava/lang/Object;I)J

    move-result-wide v14

    move-wide/from16 v16, v12

    sub-long v11, v3, v9

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :goto_3
    add-long v3, v3, v16

    sub-long/2addr v3, v14

    long-to-double v11, v3

    const-wide v16, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v5, v11, v16

    if-gtz v5, :cond_8

    const-wide/32 v11, 0x7fffffff

    cmp-long v5, v3, v11

    if-gtz v5, :cond_7

    long-to-int v5, v3

    move-object/from16 v6, p1

    invoke-virtual {v0, v6, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    add-long/2addr v14, v9

    :goto_4
    cmp-long v6, v7, v9

    const-wide/16 v11, 0x1

    if-gez v6, :cond_4

    invoke-static {v0, v2, v7, v8}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v5, v7, v8, v6}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v7, v11

    goto :goto_4

    :cond_4
    const/4 v6, 0x2

    :goto_5
    array-length v9, v1

    if-ge v6, v9, :cond_5

    aget-object v9, v1, v6

    invoke-static {v0, v5, v7, v8, v9}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    cmp-long v1, v7, v3

    if-gez v1, :cond_6

    invoke-static {v0, v2, v14, v15}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v5, v7, v8, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v7, v11

    add-long/2addr v14, v11

    goto :goto_6

    :cond_6
    return-object v5

    :cond_7
    const-string v0, "msg.arraylength.bad"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.arraylength.too.big"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private static js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/NativeArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v5, :cond_0

    iget-wide v5, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v5, v5

    array-length v6, v1

    add-int/2addr v5, v6

    invoke-direct {v3, v5}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v1

    iget-wide v5, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v5, v5

    invoke-static {v0, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v4, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    array-length v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    iput-wide v4, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    iget v0, v3, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lorg/mozilla/javascript/NativeArray;->modCount:I

    long-to-double v0, v4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v5

    array-length v3, v1

    if-lez v3, :cond_3

    int-to-long v7, v3

    add-long v9, v5, v7

    long-to-double v11, v9

    const-wide v13, 0x433fffffffffffffL    # 9.007199254740991E15

    cmpl-double v11, v11, v13

    if-gtz v11, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-lez v11, :cond_1

    const-wide/16 v11, 0x1

    sub-long v13, v5, v11

    :goto_0
    cmp-long v15, v13, v9

    if-ltz v15, :cond_1

    invoke-static {v2, v13, v14}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v16, v5

    add-long v4, v13, v7

    invoke-static {v0, v2, v4, v5, v15}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    sub-long/2addr v13, v11

    move-wide/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v5

    const/4 v4, 0x0

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_4

    int-to-long v5, v4

    aget-object v7, v1, v4

    invoke-static {v0, v2, v5, v6, v7}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg.arraylength.too.big"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_3
    move-wide/from16 v16, v5

    :cond_4
    int-to-long v3, v3

    add-long v5, v16, v3

    invoke-static {v0, v2, v5, v6}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    array-length v2, p3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-lez v2, :cond_0

    aget-object v2, p3, v3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-long v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmp-long v2, v6, v4

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-long/2addr v6, v0

    :goto_1
    cmp-long v2, v6, v4

    if-ltz v2, :cond_6

    cmp-long v2, v6, v0

    if-gez v2, :cond_6

    const-wide/32 v8, 0x7fffffff

    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    long-to-int v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :goto_2
    cmp-long v2, v4, v0

    if-gez v2, :cond_4

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    aget-object v2, p3, v3

    goto :goto_3

    :cond_2
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-static {p0, p2, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-static {p0, p1, v4, v5, v2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    const-string p0, "msg.arraylength.bad"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "index out of range"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private makeUnscopables()Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/NativeObject;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    sget-object v4, Lorg/mozilla/javascript/NativeArray;->UNSCOPABLES:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {v1, v0, v6, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v1
.end method

.method private static setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    long-to-int p0, p2

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    return-void
.end method

.method private setLength(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double p1, v4, v0

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p1, :cond_3

    iget-wide v6, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v2, v6

    if-gez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v0, v2

    array-length v1, p1

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-void

    :cond_1
    const-wide/32 v8, 0x55555554

    cmp-long p1, v2, v8

    if-gez p1, :cond_2

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpg-double p1, v4, v6

    if-gez p1, :cond_2

    long-to-int p1, v2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-void

    :cond_2
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_3
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_7

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1000

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_7

    aget-object v4, p1, v0

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-ltz v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-ltz v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/NativeArray;->delete(I)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move-wide v0, v2

    :goto_2
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_7

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_2

    :cond_7
    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-void

    :cond_8
    const-string p1, "msg.arraylength.bad"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 0

    long-to-double p2, p2

    invoke-static {p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    const-string p2, "length"

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static setMaximumInitialCapacity(I)V
    .locals 0

    sput p0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method private static setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p4, v0, :cond_0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    return-void
.end method

.method private static sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/util/Comparator;)Lorg/mozilla/javascript/Scriptable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-eq v3, v2, :cond_0

    int-to-long v4, v3

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ge v1, v2, :cond_1

    int-to-long v3, v1

    aget-object p2, v0, v1

    invoke-static {p0, p1, v3, v4, p2}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-object p1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "msg.arraylength.too.big"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private static toArrayIndex(D)J
    .locals 4

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    long-to-double v2, v0

    cmpl-double p0, v2, p0

    if-nez p0, :cond_0

    const-wide p0, 0xffffffffL

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static toArrayIndex(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static toArrayIndex(Ljava/lang/String;)J
    .locals 3

    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static toDenseIndex(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_0

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ", "

    goto :goto_0

    :cond_0
    const-string v6, ","

    :goto_0
    iget-object v7, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v7, :cond_c

    :try_start_0
    iget-object v7, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v7

    const/16 v14, 0x96

    if-ge v7, v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    move-wide v14, v12

    const/16 v16, 0x0

    :goto_4
    cmp-long v17, v14, v3

    if-gez v17, :cond_a

    cmp-long v16, v14, v12

    if-lez v16, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v2, v14, v15}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v8, v9, :cond_5

    if-eqz v7, :cond_6

    if-eqz v8, :cond_5

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v8, v9, :cond_6

    :cond_5
    move-wide/from16 v18, v12

    goto :goto_8

    :cond_6
    if-eqz p3, :cond_7

    invoke-static {v1, v0, v8}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move-wide/from16 v18, v12

    goto :goto_7

    :cond_7
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_9

    const-string v9, "toLocaleString"

    invoke-static {v8, v9, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v8

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    move-wide/from16 v18, v12

    sget-object v12, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v8, v1, v0, v9, v12}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    :cond_9
    move-wide/from16 v18, v12

    :goto_6
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const/16 v16, 0x1

    goto :goto_9

    :goto_8
    const/16 v16, 0x0

    :goto_9
    const-wide/16 v8, 0x1

    add-long/2addr v14, v8

    move-wide/from16 v12, v18

    goto :goto_4

    :cond_a
    move-wide/from16 v18, v12

    iget-object v0, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v9, v16

    goto :goto_b

    :goto_a
    if-eqz v10, :cond_b

    iput-object v11, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    :cond_b
    throw v0

    :cond_c
    move-wide/from16 v18, v12

    move-wide/from16 v14, v18

    const/4 v9, 0x0

    :goto_b
    if-eqz v10, :cond_d

    iput-object v11, v1, Lorg/mozilla/javascript/Context;->iterating:Ljava/util/Set;

    :cond_d
    if-eqz p3, :cond_f

    if-nez v9, :cond_e

    cmp-long v0, v14, v18

    if-lez v0, :cond_e

    const-string v0, ", ]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_e
    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    :goto_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeArray;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z
    .locals 6

    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget v2, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    move v2, v1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(II)V

    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {p0, v2, p0, v4}, Lorg/mozilla/javascript/NativeArray;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)Z

    const-string p1, "length"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    :cond_4
    return v3
.end method

.method public delete(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    aput-object v1, v0, p1

    return-void

    .line 8
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "values"

    invoke-super {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Lorg/mozilla/javascript/Symbol;)V

    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p1

    move-object v0, p2

    move-object v3, p3

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    move-object v4, p4

    move-object v5, p5

    :goto_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Array.prototype has no method: "

    invoke-static {p3, p2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_with(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_toSpliced(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_toSorted(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_toReversed(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_flatMap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_flat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_at(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_copyWithin(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_includes(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, v3, p1, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_a
    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, v3, p1, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_b
    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    new-instance p2, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p3, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p2, v3, p1, p3}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p2

    :pswitch_c
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_fill(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    sget-object p1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {v0, p1, v3, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_e
    sget-object p1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {v0, p1, v3, v4, v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->reduceMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_10
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_LAST:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_11
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND_INDEX:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_12
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FIND:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_13
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->SOME:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_14
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->MAP:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_15
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FOR_EACH:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->FILTER:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_17
    sget-object v2, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;->EVERY:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/ArrayLikeAbstractOperations$IterativeOperation;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_18
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_19
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1a
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_1b
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_1c
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1d
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1e
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1f
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_20
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_21
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_22
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_23
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_24
    invoke-static {v0, v3, v4, p2, p3}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_25
    invoke-static {v0, v3, v4, p3, p2}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_26
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    invoke-static {v0, v3, v4, p1, p3}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_27
    if-nez v4, :cond_1

    invoke-static {v0, v3, v5}, Lorg/mozilla/javascript/NativeArray;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, v0, v3, v5}, Lorg/mozilla/javascript/BaseFunction;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :pswitch_28
    array-length p4, v5

    if-lez p4, :cond_2

    aget-object p4, v5, p3

    invoke-static {v0, v3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    array-length p5, v5

    sub-int/2addr p5, p2

    new-array v2, p5, [Ljava/lang/Object;

    invoke-static {v5, p2, v2, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p4

    move-object v5, v2

    :cond_2
    neg-int p1, p1

    goto/16 :goto_0

    :pswitch_29
    array-length p1, v5

    if-lez p1, :cond_3

    aget-object p1, v5, p3

    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, p3

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2a
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_of(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2b
    invoke-static {v0, v3, v4, v5}, Lorg/mozilla/javascript/NativeArray;->js_from(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1e
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const-string v4, "join"

    const/4 v5, 0x1

    const/4 v3, -0x5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "reverse"

    const/4 v5, 0x0

    const/4 v3, -0x6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "sort"

    const/4 v5, 0x1

    const/4 v3, -0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "push"

    const/4 v3, -0x8

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "pop"

    const/4 v5, 0x0

    const/16 v3, -0x9

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "shift"

    const/16 v3, -0xa

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "unshift"

    const/4 v5, 0x1

    const/16 v3, -0xb

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "splice"

    const/4 v5, 0x2

    const/16 v3, -0xc

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "concat"

    const/4 v5, 0x1

    const/16 v3, -0xd

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "slice"

    const/4 v5, 0x2

    const/16 v3, -0xe

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "indexOf"

    const/4 v5, 0x1

    const/16 v3, -0xf

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "lastIndexOf"

    const/16 v3, -0x10

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "every"

    const/16 v3, -0x11

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "filter"

    const/16 v3, -0x12

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "forEach"

    const/16 v3, -0x13

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "map"

    const/16 v3, -0x14

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "some"

    const/16 v3, -0x15

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "find"

    const/16 v3, -0x16

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "findIndex"

    const/16 v3, -0x17

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "findLast"

    const/16 v3, -0x18

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "findLastIndex"

    const/16 v3, -0x19

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "reduce"

    const/16 v3, -0x1a

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "reduceRight"

    const/16 v3, -0x1b

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "isArray"

    const/16 v3, -0x1c

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "of"

    const/4 v5, 0x0

    const/16 v3, -0x1d

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "from"

    const/4 v5, 0x1

    const/16 v3, -0x1e

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 25

    move-object/from16 v0, p1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x13

    const/16 v5, 0x12

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/16 v8, 0xf

    const/16 v9, 0xe

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "indexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v24, 0x27

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v24, 0x26

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "reduceRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x25

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "toSpliced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x24

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "findIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x23

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v24, 0x22

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "shift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x21

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "every"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x20

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "includes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x1f

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x1e

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "sort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x1d

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "some"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x1c

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0x1b

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x1a

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "join"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x19

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "flat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0x18

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "find"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x17

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x16

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    move/from16 v24, v2

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    move/from16 v24, v3

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    move/from16 v24, v4

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "unshift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    move/from16 v24, v5

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "toReversed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    move/from16 v24, v6

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "lastIndexOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    move/from16 v24, v7

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "forEach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    move/from16 v24, v8

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "findLast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    move/from16 v24, v9

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "flatMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move/from16 v24, v10

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "copyWithin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move/from16 v24, v11

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move/from16 v24, v12

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "splice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move/from16 v24, v13

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "reduce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    move/from16 v24, v14

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    move/from16 v24, v15

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "concat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    move/from16 v24, v16

    goto :goto_0

    :sswitch_21
    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    move/from16 v24, v17

    goto :goto_0

    :sswitch_22
    const-string v1, "entries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    move/from16 v24, v18

    goto :goto_0

    :sswitch_23
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    move/from16 v24, v19

    goto :goto_0

    :sswitch_24
    const-string v1, "toSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    :cond_24
    move/from16 v24, v20

    goto :goto_0

    :sswitch_25
    const-string v1, "toSorted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    move/from16 v24, v21

    goto :goto_0

    :sswitch_26
    const-string v1, "toLocaleString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    move/from16 v24, v22

    goto :goto_0

    :sswitch_27
    const-string v1, "findLastIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    move/from16 v24, v23

    :goto_0
    packed-switch v24, :pswitch_data_0

    return v23

    :pswitch_0
    return v8

    :pswitch_1
    return v17

    :pswitch_2
    const/16 v0, 0x1b

    return v0

    :pswitch_3
    const/16 v0, 0x27

    return v0

    :pswitch_4
    const/16 v0, 0x17

    return v0

    :pswitch_5
    return v9

    :pswitch_6
    return v13

    :pswitch_7
    return v6

    :pswitch_8
    const/16 v0, 0x20

    return v0

    :pswitch_9
    const/16 v0, 0x28

    return v0

    :pswitch_a
    return v16

    :pswitch_b
    return v2

    :pswitch_c
    return v15

    :pswitch_d
    const/16 v0, 0x1d

    return v0

    :pswitch_e
    return v18

    :pswitch_f
    const/16 v0, 0x23

    return v0

    :pswitch_10
    const/16 v0, 0x16

    return v0

    :pswitch_11
    const/16 v0, 0x1c

    return v0

    :pswitch_12
    return v14

    :pswitch_13
    return v3

    :pswitch_14
    const/16 v0, 0x22

    return v0

    :pswitch_15
    return v12

    :pswitch_16
    const/16 v0, 0x25

    return v0

    :pswitch_17
    return v7

    :pswitch_18
    return v4

    :pswitch_19
    const/16 v0, 0x18

    return v0

    :pswitch_1a
    const/16 v0, 0x24

    return v0

    :pswitch_1b
    const/16 v0, 0x21

    return v0

    :pswitch_1c
    const/16 v0, 0x1e

    return v0

    :pswitch_1d
    return v11

    :pswitch_1e
    const/16 v0, 0x1a

    return v0

    :pswitch_1f
    return v5

    :pswitch_20
    return v10

    :pswitch_21
    return v22

    :pswitch_22
    const/16 v0, 0x1f

    return v0

    :pswitch_23
    return v21

    :pswitch_24
    return v19

    :pswitch_25
    const/16 v0, 0x26

    return v0

    :pswitch_26
    return v20

    :pswitch_27
    const/16 v0, 0x19

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7abfa1dd -> :sswitch_27
        -0x7866ceda -> :sswitch_26
        -0x6a2ffae8 -> :sswitch_25
        -0x6a2ea58a -> :sswitch_24
        -0x69e9ad94 -> :sswitch_23
        -0x5edd7b70 -> :sswitch_22
        -0x5ead2806 -> :sswitch_21
        -0x50c088ec -> :sswitch_20
        -0x4bf73488 -> :sswitch_1f
        -0x37b90a9a -> :sswitch_1e
        -0x3565b984 -> :sswitch_1d
        -0x311a62de -> :sswitch_1c
        -0x3023ebc0 -> :sswitch_1b
        -0x2e6c30dd -> :sswitch_1a
        -0x287f8811 -> :sswitch_19
        -0x28732996 -> :sswitch_18
        -0x1bdda92d -> :sswitch_17
        -0x10f62ea3 -> :sswitch_16
        -0x108c6a77 -> :sswitch_15
        0xc33 -> :sswitch_14
        0x1a55c -> :sswitch_13
        0x1b251 -> :sswitch_12
        0x2ff583 -> :sswitch_11
        0x2ff5b9 -> :sswitch_10
        0x2fff79 -> :sswitch_f
        0x31dd2a -> :sswitch_e
        0x322df4 -> :sswitch_d
        0x34af1a -> :sswitch_c
        0x35f4f4 -> :sswitch_b
        0x35f59e -> :sswitch_a
        0x37b0c6 -> :sswitch_9
        0x56140cb -> :sswitch_8
        0x5c6731b -> :sswitch_7
        0x6856c82 -> :sswitch_6
        0x6873d92 -> :sswitch_5
        0x1869ee99 -> :sswitch_4
        0x258be26d -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x1e

    return p1

    .line 2
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->UNSCOPABLES:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x29

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    int-to-long v0, p1

    .line 13
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 7
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 8
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    .line 9
    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_2

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of p2, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_1

    .line 11
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string p1, "values"

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Array"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIds(ZZ)[Ljava/lang/Object;
    .locals 7

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int p2, v0

    :cond_1
    if-nez p2, :cond_2

    :goto_0
    return-object p1

    :cond_2
    array-length v0, p1

    add-int v1, p2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-eq v3, p2, :cond_4

    iget-object v5, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v5, v5, v3

    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v4, p2, :cond_5

    add-int p2, v4, v0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1, v2, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p2

    :cond_5
    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getIndexIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    int-to-double v6, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "length"

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-wide v0
.end method

.method public getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toDenseIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeArray;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    array-length v2, v0

    if-ge p1, v2, :cond_2

    aget-object p1, v0, p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 3
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 4
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string p1, "values"

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public initPrototypeId(I)V
    .locals 9

    const/16 v0, 0x29

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->UNSCOPABLES:Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeArray;->makeUnscopables()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeValue(ILorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "with"

    :goto_0
    move v8, v0

    move-object v6, v1

    goto/16 :goto_3

    :pswitch_1
    const-string v1, "toSpliced"

    goto :goto_0

    :pswitch_2
    const-string v1, "toSorted"

    :goto_1
    move-object v6, v1

    move v8, v2

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "toReversed"

    :goto_2
    move-object v6, v0

    move v8, v1

    goto/16 :goto_3

    :pswitch_4
    const-string v1, "flatMap"

    goto :goto_1

    :pswitch_5
    const-string v0, "flat"

    goto :goto_2

    :pswitch_6
    const-string v1, "at"

    goto :goto_1

    :pswitch_7
    const-string v1, "copyWithin"

    goto :goto_0

    :pswitch_8
    const-string v1, "includes"

    goto :goto_1

    :pswitch_9
    const-string v0, "entries"

    goto :goto_2

    :pswitch_a
    const-string v0, "values"

    goto :goto_2

    :pswitch_b
    const-string v0, "keys"

    goto :goto_2

    :pswitch_c
    const-string v1, "fill"

    goto :goto_1

    :pswitch_d
    const-string v1, "reduceRight"

    goto :goto_1

    :pswitch_e
    const-string v1, "reduce"

    goto :goto_1

    :pswitch_f
    const-string v1, "findLastIndex"

    goto :goto_1

    :pswitch_10
    const-string v1, "findLast"

    goto :goto_1

    :pswitch_11
    const-string v1, "findIndex"

    goto :goto_1

    :pswitch_12
    const-string v1, "find"

    goto :goto_1

    :pswitch_13
    const-string v1, "some"

    goto :goto_1

    :pswitch_14
    const-string v1, "map"

    goto :goto_1

    :pswitch_15
    const-string v1, "forEach"

    goto :goto_1

    :pswitch_16
    const-string v1, "filter"

    goto :goto_1

    :pswitch_17
    const-string v1, "every"

    goto :goto_1

    :pswitch_18
    const-string v1, "lastIndexOf"

    goto :goto_1

    :pswitch_19
    const-string v1, "indexOf"

    goto :goto_1

    :pswitch_1a
    const-string v1, "slice"

    goto :goto_0

    :pswitch_1b
    const-string v1, "concat"

    goto :goto_1

    :pswitch_1c
    const-string v1, "splice"

    goto :goto_0

    :pswitch_1d
    const-string v1, "unshift"

    goto :goto_1

    :pswitch_1e
    const-string v0, "shift"

    goto :goto_2

    :pswitch_1f
    const-string v0, "pop"

    goto :goto_2

    :pswitch_20
    const-string v1, "push"

    goto :goto_1

    :pswitch_21
    const-string v1, "sort"

    goto :goto_1

    :pswitch_22
    const-string v0, "reverse"

    goto :goto_2

    :pswitch_23
    const-string v1, "join"

    goto :goto_1

    :pswitch_24
    const-string v0, "toSource"

    goto :goto_2

    :pswitch_25
    const-string v0, "toLocaleString"

    goto :goto_2

    :pswitch_26
    const-string v0, "toString"

    goto :goto_2

    :pswitch_27
    const-string v1, "constructor"

    goto :goto_1

    :goto_3
    sget-object v4, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public jsGet_length()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 3
    new-instance v1, Lorg/mozilla/javascript/NativeArray$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/NativeArray$1;-><init>(Lorg/mozilla/javascript/NativeArray;II)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    .line 5
    invoke-static {p1, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 10

    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    if-ne p2, p0, :cond_4

    .line 10
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    if-ltz p1, :cond_4

    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v3, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v4, v3

    if-ge p1, v4, :cond_2

    .line 14
    aput-object p3, v3, p1

    .line 15
    iget-wide p2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v3, p1

    cmp-long p1, p2, v3

    if-gtz p1, :cond_5

    add-long/2addr v3, v0

    .line 16
    iput-wide v3, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 17
    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-void

    .line 18
    :cond_2
    iget-boolean v4, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v4, :cond_3

    int-to-double v4, p1

    array-length v3, v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    .line 19
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 20
    iget-object p2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, p2, p1

    int-to-long p1, p1

    add-long/2addr p1, v0

    .line 21
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 22
    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 23
    iput-boolean v3, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 24
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_5

    .line 25
    iget p2, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/2addr p2, v2

    if-nez p2, :cond_5

    .line 26
    iget-wide p2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v3, p1

    cmp-long p1, p2, v3

    if-gtz p1, :cond_5

    add-long/2addr v3, v0

    .line 27
    iput-wide v3, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 28
    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    :cond_5
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_0

    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide p1

    .line 6
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 7
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 8
    iget p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray;->modCount:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_0
    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "values"

    invoke-super {p0, v0, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDenseOnly(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    return-void
.end method

.method public setInstanceIdAttributes(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    :cond_0
    return-void
.end method

.method public setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->setLength(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    instance-of p1, p1, Lorg/mozilla/javascript/NativeArray;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeArray;->setDenseOnly(Z)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 5

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-wide v1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "list.length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") exceeds Integer.MAX_VALUE"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    new-instance v0, Lorg/mozilla/javascript/NativeArray$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/NativeArray$2;-><init>(Lorg/mozilla/javascript/NativeArray;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fromIndex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > toIndex("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "toIndex = "

    invoke-static {p2, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "fromIndex = "

    invoke-static {p1, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v0

    .line 3
    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 5
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method
