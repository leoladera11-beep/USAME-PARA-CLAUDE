.class public Lorg/mozilla/javascript/optimizer/Bootstrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOOTSTRAP_HANDLE:Lorg/mozilla/classfile/ClassFileWriter$MHandle;

.field private static final SEPARATOR:Ljava/util/regex/Pattern;

.field private static final linker:Ljdk/dynalink/DynamicLinker;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->SEPARATOR:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    const-string v1, "bootstrap"

    const-string v2, "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;"

    const/4 v3, 0x6

    const-string v4, "org.mozilla.javascript.optimizer.Bootstrapper"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$MHandle;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->BOOTSTRAP_HANDLE:Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    new-instance v0, Ljdk/dynalink/DynamicLinkerFactory;

    invoke-direct {v0}, Ljdk/dynalink/DynamicLinkerFactory;-><init>()V

    new-instance v1, Ljdk/dynalink/linker/support/CompositeTypeBasedGuardingDynamicLinker;

    const/16 v2, 0x8

    new-array v2, v2, [Ljdk/dynalink/linker/TypeBasedGuardingDynamicLinker;

    new-instance v4, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/ConstAwareLinker;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-instance v4, Lorg/mozilla/javascript/optimizer/BooleanLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/BooleanLinker;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-instance v4, Lorg/mozilla/javascript/optimizer/IntegerLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/IntegerLinker;-><init>()V

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-instance v4, Lorg/mozilla/javascript/optimizer/DoubleLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/DoubleLinker;-><init>()V

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-instance v4, Lorg/mozilla/javascript/optimizer/StringLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/StringLinker;-><init>()V

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-instance v4, Lorg/mozilla/javascript/optimizer/ConsStringLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/ConsStringLinker;-><init>()V

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-instance v4, Lorg/mozilla/javascript/optimizer/NativeArrayLinker;

    invoke-direct {v4}, Lorg/mozilla/javascript/optimizer/NativeArrayLinker;-><init>()V

    aput-object v4, v2, v3

    new-instance v3, Lorg/mozilla/javascript/optimizer/BaseFunctionLinker;

    invoke-direct {v3}, Lorg/mozilla/javascript/optimizer/BaseFunctionLinker;-><init>()V

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljdk/dynalink/linker/support/CompositeTypeBasedGuardingDynamicLinker;-><init>(Ljava/lang/Iterable;)V

    new-array v2, v7, [Ljdk/dynalink/linker/GuardingDynamicLinker;

    aput-object v1, v2, v5

    new-instance v1, Lorg/mozilla/javascript/optimizer/DefaultLinker;

    invoke-direct {v1}, Lorg/mozilla/javascript/optimizer/DefaultLinker;-><init>()V

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Ljdk/dynalink/DynamicLinkerFactory;->setPrioritizedLinkers([Ljdk/dynalink/linker/GuardingDynamicLinker;)V

    invoke-virtual {v0}, Ljdk/dynalink/DynamicLinkerFactory;->createLinker()Ljdk/dynalink/DynamicLinker;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->linker:Ljdk/dynalink/DynamicLinker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    .locals 3

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->parseOperation(Ljava/lang/String;)Ljdk/dynalink/Operation;

    move-result-object p1

    sget-object v0, Lorg/mozilla/javascript/optimizer/Bootstrapper;->linker:Ljdk/dynalink/DynamicLinker;

    new-instance v1, Ljdk/dynalink/support/ChainedCallSite;

    new-instance v2, Ljdk/dynalink/CallSiteDescriptor;

    invoke-direct {v2, p0, p1, p2}, Ljdk/dynalink/CallSiteDescriptor;-><init>(Ljava/lang/invoke/MethodHandles$Lookup;Ljdk/dynalink/Operation;Ljava/lang/invoke/MethodType;)V

    invoke-direct {v1, v2}, Ljdk/dynalink/support/ChainedCallSite;-><init>(Ljdk/dynalink/CallSiteDescriptor;)V

    invoke-virtual {v0, v1}, Ljdk/dynalink/DynamicLinker;->link(Ljdk/dynalink/RelinkableCallSite;)Ljdk/dynalink/RelinkableCallSite;

    move-result-object p0

    check-cast p0, Ljava/lang/invoke/CallSite;

    return-object p0
.end method

.method private static getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    array-length p1, p0

    if-lt p2, p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseOperation(Ljava/lang/String;)Ljdk/dynalink/Operation;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/mozilla/javascript/optimizer/Bootstrapper;->SEPARATOR:Ljava/util/regex/Pattern;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PROP"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0xb

    const-string v9, "GETWITHTHISOPTIONAL"

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const-string v13, "SET"

    const/4 v14, 0x7

    const-string v15, "GET"

    const-string v2, "GETWITHTHIS"

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/4 v3, 0x2

    if-eqz v7, :cond_d

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "GETELEMENTSUPER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "SETELEMENT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v10

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "GETNOWARN"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v11

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v12

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v14

    goto :goto_1

    :sswitch_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v2, v16

    goto :goto_1

    :sswitch_7
    const-string v2, "SETELEMENTSUPER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v2, v17

    goto :goto_1

    :sswitch_8
    const-string v2, "GETSUPER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v2, v18

    goto :goto_1

    :sswitch_9
    const-string v2, "GETINDEX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v2, v19

    goto :goto_1

    :sswitch_a
    const-string v2, "GETELEMENT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    move v2, v3

    goto :goto_1

    :sswitch_b
    const-string v2, "SETSUPER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    move v2, v5

    goto :goto_1

    :sswitch_c
    const-string v2, "SETINDEX"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-object v2, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_8
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_a
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_c
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v7, "NAME"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    :sswitch_d
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    move/from16 v2, v16

    goto :goto_3

    :sswitch_e
    const-string v2, "BIND"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    move/from16 v2, v17

    goto :goto_3

    :sswitch_f
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    move/from16 v2, v18

    goto :goto_3

    :sswitch_10
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    move/from16 v2, v19

    goto :goto_3

    :sswitch_11
    const-string v2, "SETSTRICT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_2

    :cond_12
    move v2, v3

    goto :goto_3

    :sswitch_12
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_2

    :cond_13
    move v2, v5

    goto :goto_3

    :sswitch_13
    const-string v2, "SETCONST"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_2

    :cond_14
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_d
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_e
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_f
    sget-object v2, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_10
    sget-object v2, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Ljdk/dynalink/StandardOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_11
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_12
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v2

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/optimizer/Bootstrapper;->getNameSegment([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljdk/dynalink/NamespaceOperation;->named(Ljava/lang/Object;)Ljdk/dynalink/NamedOperation;

    move-result-object v0

    return-object v0

    :cond_15
    const-string v1, "MATH"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_4
    const/4 v2, -0x1

    goto/16 :goto_5

    :sswitch_14
    const-string v1, "TONUMERIC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    move v2, v8

    goto/16 :goto_5

    :sswitch_15
    const-string v1, "COMPARELT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    move v2, v10

    goto/16 :goto_5

    :sswitch_16
    const-string v1, "COMPARELE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    move v2, v11

    goto/16 :goto_5

    :sswitch_17
    const-string v1, "COMPAREGT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4

    :cond_19
    move v2, v12

    goto/16 :goto_5

    :sswitch_18
    const-string v1, "COMPAREGE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_4

    :cond_1a
    move v2, v14

    goto :goto_5

    :sswitch_19
    const-string v1, "SHALLOWEQ"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4

    :cond_1b
    move/from16 v2, v16

    goto :goto_5

    :sswitch_1a
    const-string v1, "ADD"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_4

    :cond_1c
    move/from16 v2, v17

    goto :goto_5

    :sswitch_1b
    const-string v1, "EQ"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_4

    :cond_1d
    move/from16 v2, v18

    goto :goto_5

    :sswitch_1c
    const-string v1, "TOUINT32"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_4

    :cond_1e
    move/from16 v2, v19

    goto :goto_5

    :sswitch_1d
    const-string v1, "TONUMBER"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_4

    :cond_1f
    move v2, v3

    goto :goto_5

    :sswitch_1e
    const-string v1, "TOINT32"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_4

    :cond_20
    move v2, v5

    goto :goto_5

    :sswitch_1f
    const-string v1, "TOBOOLEAN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_4

    :cond_21
    const/4 v2, 0x0

    :goto_5
    packed-switch v2, :pswitch_data_2

    goto :goto_6

    :pswitch_14
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_15
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_16
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_17
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_18
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_19
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1a
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1b
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1c
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1d
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1e
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :pswitch_1f
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->withNamespace(Ljdk/dynalink/Namespace;)Ljdk/dynalink/NamespaceOperation;

    move-result-object v0

    return-object v0

    :cond_22
    :goto_6
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7c703650 -> :sswitch_c
        -0x7bdfefa7 -> :sswitch_b
        -0x6b9e511a -> :sswitch_a
        -0x5afe50c4 -> :sswitch_9
        -0x5a6e0a1b -> :sswitch_8
        -0x5107dcbf -> :sswitch_7
        -0x3fb06666 -> :sswitch_6
        0x11336 -> :sswitch_5
        0x14042 -> :sswitch_4
        0x3d31e7d -> :sswitch_3
        0x7d2fc5a -> :sswitch_2
        0x42c19afa -> :sswitch_1
        0x78af2835 -> :sswitch_0
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

    :sswitch_data_1
    .sparse-switch
        -0x7cc427bf -> :sswitch_13
        -0x3fb06666 -> :sswitch_12
        -0x2b2675 -> :sswitch_11
        0x11336 -> :sswitch_10
        0x14042 -> :sswitch_f
        0x1f1c3d -> :sswitch_e
        0x42c19afa -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x1c67c2d3 -> :sswitch_1f
        -0x197c4b2d -> :sswitch_1e
        -0xd252e7c -> :sswitch_1d
        -0x1dba68c -> :sswitch_1c
        0x8ac -> :sswitch_1b
        0xfc81 -> :sswitch_1a
        0x3dfe29a0 -> :sswitch_19
        0x51e3b463 -> :sswitch_18
        0x51e3b472 -> :sswitch_17
        0x51e3b4fe -> :sswitch_16
        0x51e3b50d -> :sswitch_15
        0x6880ec12 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
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
    .end packed-switch
.end method
