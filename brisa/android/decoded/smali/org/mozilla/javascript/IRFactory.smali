.class public final Lorg/mozilla/javascript/IRFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/IRFactory$AstNodePosition;
    }
.end annotation


# static fields
.field private static final ALWAYS_FALSE_BOOLEAN:I = -0x1

.field private static final ALWAYS_TRUE_BOOLEAN:I = 0x1

.field private static final LOOP_DO_WHILE:I = 0x0

.field private static final LOOP_FOR:I = 0x2

.field private static final LOOP_WHILE:I = 0x1


# instance fields
.field private astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

.field private parser:Lorg/mozilla/javascript/Parser;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/mozilla/javascript/Parser;

    invoke-direct {v0, p1, p4}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    .line 5
    new-instance p1, Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-direct {p1, p3}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    .line 6
    iget-object p3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, p3, Lorg/mozilla/javascript/Parser;->currentPos:Lorg/mozilla/javascript/Parser$CurrentPositionReporter;

    .line 7
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/Parser;->setSourceURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/javascript/IRFactory;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private static addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object v1, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setDefault(Lorg/mozilla/javascript/Node;)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLoops()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    new-array v11, v8, [Lorg/mozilla/javascript/Node;

    new-array v12, v8, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    move-object v14, v2

    move v2, v13

    :goto_0
    if-ge v2, v8, :cond_1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v5, v5, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v9, 0x60

    invoke-virtual {v6, v9, v5, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    const/16 v9, 0x63

    invoke-direct {v1, v9, v4, v6}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/16 v6, 0x62

    invoke-static {v6, v4, v14}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    move-object v14, v4

    move-object v4, v5

    :goto_1
    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v9, 0xa7

    invoke-virtual {v6, v9, v4, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    aput-object v5, v11, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    aput-object v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw v0

    :cond_1
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v9, p1

    iget v6, v9, Lorg/mozilla/javascript/Node;->type:I

    const/4 v3, 0x0

    const-string v4, "push"

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x93

    invoke-direct {v2, v3, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v0, v7}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-static {v3, v2, v4, v0, v7}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :cond_2
    add-int/lit8 v8, v8, -0x1

    move-object v6, v2

    move v0, v8

    move v2, v13

    :goto_3
    if-ltz v0, :cond_4

    :try_start_1
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v5

    invoke-direct {v1, v4, v3, v5}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v16, v2, 0x1

    move-object v2, v4

    :try_start_2
    aget-object v4, v11, v0

    aget-object v5, v12, v0

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v8

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v9

    move-object/from16 v17, v2

    const/16 v2, 0xa7

    invoke-direct/range {v1 .. v9}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v2, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-ge v13, v2, :cond_3

    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    throw v0

    :cond_4
    :goto_5
    if-ge v13, v2, :cond_5

    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v15, v14}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static closeSwitch(Lorg/mozilla/javascript/Node;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Jump;->getDefault()Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-void

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string p2, "msg.bad.assign.left"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    :cond_1
    :goto_0
    const/16 v0, 0x63

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string p2, "msg.bad.destruct.op"

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-object p3

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    new-instance v0, Lorg/mozilla/javascript/i;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/i;-><init>(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2, p3, v0}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 p1, 0xb9

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x51

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x19

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x18

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x17

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x16

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x15

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x14

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x13

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x12

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x76

    goto :goto_1

    :pswitch_b
    const/16 p1, 0xb

    goto :goto_1

    :pswitch_c
    const/16 p1, 0xa

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x75

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x9

    :goto_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p2

    const/16 v1, 0x98

    const/16 v2, 0x21

    if-eq p2, v2, :cond_6

    const/16 v3, 0x27

    if-eq p2, v3, :cond_6

    const/16 v2, 0x2c

    if-eq p2, v2, :cond_5

    const/16 v2, 0x49

    if-ne p2, v2, :cond_4

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x9c

    invoke-direct {p1, p3, p2, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p1, 0x36

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8

    invoke-direct {p3, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p3, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-ne p2, v2, :cond_7

    const/16 p2, 0x99

    goto :goto_2

    :cond_7
    const/16 p2, 0x9a

    :goto_2
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p2, v3, v4, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v0, p3}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x63
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

.method private static createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x75

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_a

    const/16 v0, 0x76

    if-eq p0, v0, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x1c

    const/16 v3, 0x2d

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    iget v6, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_0
    cmpl-double v0, v4, v0

    if-nez v0, :cond_c

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_1
    iget v4, p1, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v4

    iget v6, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v6, v3, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_1
    cmpl-double v0, v4, v0

    if-nez v0, :cond_c

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :cond_2
    iget v4, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v4, v3, :cond_c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v3

    cmpl-double v0, v3, v0

    if-nez v0, :cond_c

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_2
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    iget v2, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_3
    cmpl-double v0, v0, v4

    if-nez v0, :cond_c

    new-instance p0, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :cond_4
    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_c

    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p0

    :pswitch_3
    iget v0, p1, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xa

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_6

    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p1

    :cond_6
    if-ne v0, v3, :cond_c

    iget v0, p2, Lorg/mozilla/javascript/Node;->type:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :cond_7
    if-ne v0, v2, :cond_c

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    return-object p2

    :cond_8
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v2, :cond_9

    goto :goto_1

    :cond_9
    if-ne v0, v1, :cond_c

    goto :goto_2

    :cond_a
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    if-ne v0, v1, :cond_b

    :goto_1
    return-object p1

    :cond_b
    if-ne v0, v2, :cond_c

    :goto_2
    return-object p2

    :cond_c
    :goto_3
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    const-string v3, "eval"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "With"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    const/16 p1, 0xa

    invoke-virtual {v0, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_3
    return-object v0
.end method

.method private createCatch(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 8

    const/16 v0, 0x8d

    if-nez p1, :cond_0

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_0
    move-object v3, p1

    if-nez p2, :cond_1

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_1
    move-object v4, p2

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x89

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)V

    return-object v1
.end method

.method private static createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x73

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 0

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x27

    invoke-direct {p2, p4, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p2

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x93

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v0
.end method

.method private static createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ast/Scope;->splitScope(Lorg/mozilla/javascript/ast/Scope;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 p1, 0x8d

    invoke-direct {v6, p1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v3, 0x2

    move-object v2, p0

    move-object v5, p2

    move-object v7, p3

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_0
    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    move-object v3, p4

    const/4 v2, 0x2

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "msg.bad.for.in.lhs"

    const/16 v5, 0x47

    const/16 v6, 0xa7

    const/16 v7, 0x87

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v2, v7, :cond_5

    if-ne v2, v6, :cond_0

    goto :goto_3

    :cond_0
    if-eq v2, v5, :cond_3

    if-ne v2, v8, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v0}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    move v12, v2

    :goto_1
    move v2, v10

    goto :goto_5

    :cond_3
    :goto_2
    :try_start_2
    instance-of v3, v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_4
    move-object v5, v0

    move v12, v2

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    if-eq v12, v5, :cond_8

    if-ne v12, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v5, 0x2c

    if-ne v12, v5, :cond_7

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move v12, v2

    move-object v5, v3

    goto :goto_1

    :cond_7
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    :goto_4
    instance-of v2, v11, Lorg/mozilla/javascript/ast/ArrayLiteral;

    if-eqz v2, :cond_9

    move-object v2, v11

    check-cast v2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v9

    :cond_9
    move-object v5, v11

    move v2, v12

    :goto_5
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x9b

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eqz p7, :cond_a

    const/16 v4, 0x40

    goto :goto_6

    :cond_a
    if-eqz p8, :cond_b

    const/16 v4, 0x42

    goto :goto_6

    :cond_b
    if-eq v2, v10, :cond_c

    const/16 v4, 0x41

    goto :goto_6

    :cond_c
    const/16 v4, 0x3f

    :goto_6
    new-instance v11, Lorg/mozilla/javascript/Node;

    move-object/from16 v13, p4

    invoke-direct {v11, v4, v13}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 v4, 0x3

    invoke-virtual {v11, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x43

    invoke-direct {v13, v14}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v13, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v15, 0x44

    invoke-direct {v14, v15}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v14, v4, v3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v15, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x8f

    invoke-direct {v15, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    if-eq v2, v10, :cond_e

    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    new-instance v10, Lorg/mozilla/javascript/i;

    invoke-direct {v10, v1}, Lorg/mozilla/javascript/i;-><init>(Ljava/lang/Object;)V

    move/from16 v6, p1

    invoke-virtual {v4, v6, v5, v14, v10}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez p7, :cond_f

    if-nez p8, :cond_f

    if-eq v2, v8, :cond_d

    const/4 v2, 0x2

    if-eq v9, v2, :cond_f

    :cond_d
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v5, "msg.bad.for.in.destruct"

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v2, v5, v14}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    :cond_f
    :goto_7
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x93

    invoke-direct {v2, v5, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v15, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v2, p5

    invoke-virtual {v15, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v2, p2

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x1

    move-object/from16 v16, v13

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-eq v12, v7, :cond_10

    const/16 v4, 0xa7

    if-ne v12, v4, :cond_11

    :cond_10
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_11
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_8
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw v0
.end method

.method private static createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-static {p0}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x8f

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object p0

    :cond_2
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    new-instance p4, Lorg/mozilla/javascript/ast/Jump;

    const/4 v1, 0x7

    invoke-direct {p4, v1, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object p3, p4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    if-eqz p2, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/4 p4, 0x5

    invoke-static {p4, p1}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :cond_4
    return-object v0
.end method

.method private static createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/16 p2, 0x78

    if-ne p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x2

    :cond_3
    const/16 p1, 0xd

    invoke-virtual {v0, p1, p0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object v0
.end method

.method private static createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, 0x8d

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x32

    invoke-direct {p3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :cond_0
    new-instance v4, Lorg/mozilla/javascript/ast/Jump;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p3}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    iput-object v0, v4, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    invoke-direct {v5, v2, v6, v7}, Lorg/mozilla/javascript/Node;-><init>(III)V

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    iput-object p3, p0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_6

    :cond_3
    const/4 p3, 0x5

    invoke-static {p3, v1}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    if-ne p1, v3, :cond_6

    invoke-virtual {p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p3, 0x93

    if-eq p1, v2, :cond_5

    const/16 v0, 0x87

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_4

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object p4, p1

    :cond_4
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-eq p1, v2, :cond_6

    new-instance p1, Lorg/mozilla/javascript/Node;

    invoke-direct {p1, p3, p5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_6
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/Jump;->setContinue(Lorg/mozilla/javascript/Node;)V

    return-object p0
.end method

.method private createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v1, 0x92

    invoke-virtual {v0, v1, p2, p3}, Lorg/mozilla/javascript/Parser;->createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;

    move-result-object p2

    if-eqz p1, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    :cond_0
    return-object p2
.end method

.method private createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_2

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x57

    invoke-direct {p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p2, 0x58

    invoke-direct {p1, p2, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x55

    invoke-direct {p2, v0, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_4
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x56

    invoke-direct {p2, v1, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :goto_2
    if-eqz p4, :cond_5

    const/16 p2, 0x10

    invoke-virtual {p1, p2, p4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_5
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x49

    invoke-direct {p2, p3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object p2
.end method

.method private createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_7

    if-nez p4, :cond_7

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 p4, 0x21

    invoke-virtual {p2, p3, p4}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0xba

    const/16 v2, 0x4f

    const/16 v3, 0x1e

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p2

    if-ne p2, v2, :cond_2

    instance-of p2, p1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    new-instance p2, Lorg/mozilla/javascript/ast/KeywordLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    const/16 v4, 0x30

    invoke-direct {p2, p4, v2, v4}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {p2, p4, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    new-instance p2, Lorg/mozilla/javascript/Node;

    const/16 p4, 0x4d

    invoke-direct {p2, p4, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/16 p1, 0x11

    invoke-virtual {p2, p1, p3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 p3, 0x49

    invoke-direct {p1, p3, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-ne p5, v1, :cond_3

    invoke-virtual {p2, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {p1, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_3
    return-object p1

    :cond_4
    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-direct {p2, p4, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    if-ne p5, v1, :cond_5

    invoke-virtual {p2, v3, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-ne p1, v2, :cond_6

    const/16 p1, 0x1f

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_6
    return-object p2

    :cond_7
    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    or-int/2addr p4, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private static createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    return-object p0
.end method

.method private createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x8f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v2, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v2

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    :goto_1
    return-object v0

    :cond_3
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x9b

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v8, Lorg/mozilla/javascript/ast/Jump;

    const/16 v9, 0x5a

    invoke-direct {v8, v9, v0}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    move/from16 v0, p4

    move/from16 v9, p5

    invoke-virtual {v8, v0, v9}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/4 v9, 0x5

    if-eqz v2, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v10

    iput-object v10, v8, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v10, Lorg/mozilla/javascript/Node;

    invoke-direct {v10, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    move-object v11, v7

    move v7, v3

    :goto_2
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v12

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v13

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual {v15}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v11, v14}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11, v15}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-direct {v9, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v9, 0x5

    invoke-static {v9, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v15}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v9, 0x8d

    if-ne v0, v9, :cond_4

    move/from16 v3, v16

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    invoke-static {v15, v4, v0, v12, v13}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v4

    :goto_3
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v9, 0x3e

    invoke-static {v6}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-direct {v0, v9, v14, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v10}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    const/16 v9, 0xe

    invoke-virtual {v0, v9, v7}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-virtual {v10, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {v10}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    move-object/from16 v9, p0

    invoke-direct {v9, v0, v4, v12, v13}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x3

    const/4 v9, 0x5

    goto :goto_2

    :cond_5
    move-object/from16 v9, p0

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    if-nez v3, :cond_6

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x38

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_6
    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_4

    :cond_7
    move-object/from16 v9, p0

    :goto_4
    if-eqz v5, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/ast/Jump;->setFinally(Lorg/mozilla/javascript/Node;)V

    const/16 v2, 0x95

    invoke-static {v2, v0}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x8a

    invoke-direct {v0, v3, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_8
    invoke-virtual {v6, v8}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v6
.end method

.method private static createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/4 v3, 0x1

    const/16 v4, 0x32

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-ne v0, v2, :cond_8

    const/16 p0, 0x97

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    :pswitch_2
    if-ne v0, v2, :cond_0

    const/16 v0, 0x36

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x49

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x4b

    invoke-direct {v1, v0, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v1, p0, v0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, p0, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v1, v2

    :goto_1
    const/4 p0, 0x0

    const/16 v0, 0x1f

    invoke-virtual {p1, v0, p0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p0

    if-ne p0, v3, :cond_4

    invoke-virtual {v1, v0, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_4
    return-object v1

    :pswitch_3
    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :pswitch_4
    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    not-int p0, p0

    int-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    return-object p1

    :pswitch_5
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x31

    if-ne v1, v3, :cond_5

    move v1, p0

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    if-eq v0, v4, :cond_7

    if-ne v0, p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    return-object p0

    :cond_7
    :goto_3
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    return-object p1

    :cond_8
    :goto_4
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    const/16 v0, 0x9b

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8f

    invoke-direct {v0, v1, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(III)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x88

    invoke-direct {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getLoops()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v11, v4, [Lorg/mozilla/javascript/Node;

    new-array v12, v4, [Lorg/mozilla/javascript/Node;

    const/4 v13, 0x0

    move v5, v13

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_0

    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v14, 0x60

    invoke-virtual {v9, v14, v8, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    const/16 v14, 0x63

    invoke-direct {v1, v14, v7, v9}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v9, 0x62

    invoke-static {v9, v7, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v7, v8

    :goto_1
    iget-object v8, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v8, v7}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v14, 0xa7

    invoke-virtual {v9, v14, v7, v13}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    aput-object v8, v11, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v7}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    aput-object v6, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :goto_2
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw v0

    :cond_1
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    const/16 v8, 0x4e

    invoke-direct {v5, v8, v3, v6, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x93

    invoke-direct {v3, v6, v5, v0, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    const/4 v14, 0x0

    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-static {v5, v3, v14, v0, v2}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move v0, v4

    move v2, v13

    :goto_3
    if-ltz v0, :cond_4

    :try_start_1
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v4

    invoke-direct {v1, v14, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v15, v2, 0x1

    :try_start_2
    aget-object v4, v11, v0

    aget-object v5, v12, v0

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;->isForEach()Z

    move-result v8

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v9

    const/16 v2, 0xa7

    invoke-direct/range {v1 .. v9}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, -0x1

    move v2, v15

    goto :goto_3

    :catchall_1
    move-exception v0

    move v2, v15

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_4
    if-ge v13, v2, :cond_3

    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    throw v0

    :cond_4
    :goto_5
    if-ge v13, v2, :cond_5

    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    return-object v6
.end method

.method private static initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x7a

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x36

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/16 v4, 0x8

    invoke-direct {v2, v4, p3, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    const/16 p3, 0x93

    invoke-direct {v0, p3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Node;->addChildrenToFront(Lorg/mozilla/javascript/Node;)V

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/4 v0, 0x4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    if-eq p3, v0, :cond_3

    :cond_2
    new-instance p3, Lorg/mozilla/javascript/Node;

    invoke-direct {p3, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return-object p0
.end method

.method private static isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I
    .locals 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 p0, 0x2f

    if-eq v0, p0, :cond_1

    const/16 p0, 0x31

    if-eq v0, p0, :cond_1

    const/16 p0, 0x32

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method private static makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    iput-object p1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method private static makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private propagateSuperFromLhs(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p2, v1, v0}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_0
    return-object p1
.end method

.method private transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_16

    const/16 v1, 0x48

    if-eq v0, v1, :cond_15

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_14

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_13

    const/16 v1, 0x59

    if-eq v0, v1, :cond_12

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_11

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_14

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_10

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    instance-of v0, p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UpdateExpression;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/mozilla/javascript/ast/UpdateExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUpdate(Lorg/mozilla/javascript/ast/UpdateExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/mozilla/javascript/ast/ComputedPropertyKey;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformComputedPropertyKey(Lorg/mozilla/javascript/ast/ComputedPropertyKey;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LetNode;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/mozilla/javascript/ast/XmlRef;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v0, p1, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformGeneratorMethodDefinition(Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Can\'t transform: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/GeneratorExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/ContinueStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/mozilla/javascript/ast/BreakStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_3
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ForInLoop;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_e
    check-cast p1, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_f
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTemplateLiteralCall(Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayComprehension;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    :pswitch_b
    :sswitch_5
    return-object p1

    :sswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_7
    check-cast p1, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_8
    check-cast p1, Lorg/mozilla/javascript/ast/IfStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_9
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_b
    check-cast p1, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_c
    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_d
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_e
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_f
    check-cast p1, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :sswitch_10
    check-cast p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_10
    check-cast p1, Lorg/mozilla/javascript/ast/TemplateLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_11
    check-cast p1, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_12
    check-cast p1, Lorg/mozilla/javascript/ast/BigIntLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBigInt(Lorg/mozilla/javascript/ast/BigIntLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_14
    check-cast p1, Lorg/mozilla/javascript/ast/Yield;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_15
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_16
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x1e -> :sswitch_f
        0x21 -> :sswitch_e
        0x27 -> :sswitch_d
        0x35 -> :sswitch_c
        0x37 -> :sswitch_b
        0x73 -> :sswitch_a
        0x7a -> :sswitch_9
        0x7d -> :sswitch_8
        0x7f -> :sswitch_7
        0x88 -> :sswitch_6
        0x8d -> :sswitch_5
        0x8f -> :sswitch_4
        0x96 -> :sswitch_3
        0xab -> :sswitch_2
        0xb7 -> :sswitch_1
        0xba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x82
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xae
        :pswitch_6
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method private transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;
    .locals 9

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v3, 0xab

    invoke-virtual {v2, v3, v0, v1}, Lorg/mozilla/javascript/Parser;->createScopeNode(III)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const/16 v5, 0xa7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x8f

    invoke-direct {v4, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v6, "Array"

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    iget-object v7, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v7, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v8, 0x63

    invoke-direct {p0, v8, v7, v5}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v7, 0x93

    invoke-direct {v6, v7, v5, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/IRFactory;->arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;
    .locals 8

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x47

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x8d

    if-eq v6, v7, :cond_1

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x15

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0xb

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method private transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/IRFactory;->transformAssignmentLeft(Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->isDestructuring(Lorg/mozilla/javascript/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1
.end method

.method private transformAssignmentLeft(Lorg/mozilla/javascript/ast/Assignment;Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_1

    instance-of p3, p3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p3, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {p3}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/ast/KeywordLiteral;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object p3

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private transformBigInt(Lorg/mozilla/javascript/ast/BigIntLiteral;)Lorg/mozilla/javascript/Node;
    .locals 0

    return-object p1
.end method

.method private transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 4

    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    move-object v2, p1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Node;

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_3
    return-object p1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_4
    throw p1
.end method

.method private transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;
    .locals 0

    return-object p1
.end method

.method private transformComputedPropertyKey(Lorg/mozilla/javascript/ast/ComputedPropertyKey;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ComputedPropertyKey;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    iget p1, p1, Lorg/mozilla/javascript/Node;->type:I

    invoke-direct {v1, p1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v1
.end method

.method private transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTestExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/IRFactory;->createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;
    .locals 0

    return-object p1
.end method

.method private transformDefaultXmlNamespace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/16 v0, 0x52

    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x92

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/DoLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x27

    invoke-direct {v2, v3, v0, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iget p1, p1, Lorg/mozilla/javascript/Node;->type:I

    const/16 v1, 0xba

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x1e

    invoke-virtual {v2, p1, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1f

    invoke-virtual {v2, p1, v3}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1
    return-object v2
.end method

.method private transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v1
.end method

.method private transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;
    .locals 11

    const/16 v0, 0x92

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/VariableDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v9

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForOf()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, p1

    move-object v2, p0

    move-object v4, p1

    :try_start_3
    invoke-direct/range {v2 .. v10}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/AstNode;ZZ)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v2, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :goto_3
    iget-object v0, v2, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;
    .locals 5

    const/16 v0, 0x92

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getIncrement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-static {p1, v0, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object v1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    throw p1
.end method

.method private transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    iget-object v3, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    iget-object v4, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Parser;->createPerFunctionVariables(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    move-result-object v4

    const/16 v5, 0x17

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v8

    iget-object v9, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v10, v9, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v10, v6

    iput v10, v9, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getDefaultParams()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v6

    :goto_0
    if-lez v13, :cond_1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v14, :cond_0

    add-int/lit8 v14, v13, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/mozilla/javascript/ast/AstNode;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v16, v6

    :try_start_1
    iget-object v6, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v6, v14}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    iget-object v12, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v11, "undefined"

    invoke-virtual {v12, v11}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    const/16 v12, 0x33

    invoke-static {v12, v6, v11}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    new-instance v11, Lorg/mozilla/javascript/Node;

    iget-object v12, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v12, v14}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    invoke-direct {v1, v15}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    const/16 v15, 0x63

    invoke-direct {v1, v15, v12, v14}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v14

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v4

    const/16 v4, 0x93

    :try_start_2
    invoke-direct {v11, v4, v12, v14, v15}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v4

    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v12

    const/4 v14, 0x0

    invoke-static {v6, v11, v14, v4, v12}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v16, v6

    goto/16 :goto_4

    :cond_0
    move-object/from16 v17, v4

    move/from16 v16, v6

    :goto_1
    add-int/lit8 v13, v13, -0x2

    move/from16 v6, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_1
    move-object/from16 v17, v4

    move/from16 v16, v6

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getDestructuringRvalues()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/mozilla/javascript/Node;

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aget-object v6, v6, v16

    instance-of v11, v6, Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v11, :cond_2

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x93

    invoke-direct {v4, v6, v7, v5, v8}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v9, v4}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v4

    invoke-static {v0, v3, v9, v4}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v2, :cond_5

    iget-object v5, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v15, 0x63

    :try_start_3
    invoke-direct {v1, v15, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    const/4 v2, 0x2

    if-eq v4, v2, :cond_5

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-static {v3, v2, v0}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_3

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    iget-object v0, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v2, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    return-object v3

    :goto_4
    iget-object v2, v1, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v3, v2, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw v0
.end method

.method private transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->isOptionalCall()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1
    const/16 p1, 0x1f

    invoke-virtual {v0, p1, v3}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1
.end method

.method private transformGenExpr(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;
    .locals 11

    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Parser;->createPerFunctionVariables(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    move-result-object v4

    const/16 v5, 0x17

    :try_start_0
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v9, v8, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->genExprTransformHelper(Lorg/mozilla/javascript/ast/GeneratorExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    if-eqz v6, :cond_0

    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x93

    invoke-direct {v9, v10, v6, v5, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v5

    invoke-static {v0, v3, v8, v5}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v2, :cond_1

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x63

    :try_start_1
    invoke-direct {p0, v6, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v2}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    if-eq v5, v1, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v0

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    const/16 v0, 0x2b

    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0

    :goto_2
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    invoke-virtual {v4}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private transformGeneratorMethodDefinition(Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->getMethodName()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getThenPart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-eq v2, v0, :cond_0

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v2, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    :cond_0
    return-object v2
.end method

.method private transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x8f

    invoke-direct {v2, v3, v0, p1, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    return-object v2
.end method

.method private transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getVariables()Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    instance-of v0, v0, Lorg/mozilla/javascript/ast/FunctionCall;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.super.shorthand.function"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;
    .locals 0

    return-object p1
.end method

.method private transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_1
    return-object v0
.end method

.method private transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;
    .locals 0

    return-object p1
.end method

.method private transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;
    .locals 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_4

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/Parser;->getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aput-object v4, p1, v2

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aput-object v4, p1, v2

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetterMethod()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v3, 0xa5

    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetterMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v3, 0xa6

    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ObjectProperty;->isNormalMethod()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb1

    invoke-static {v3, v4}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_6
    :goto_4
    const/16 v0, 0xc

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v1
.end method

.method private transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    const/16 v0, 0x13

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object p1
.end method

.method private transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;
    .locals 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p1, Lorg/mozilla/javascript/Node;->type:I

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V

    return-object p1
.end method

.method private transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getReturnValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    if-nez v0, :cond_1

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v2, v1, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v0
.end method

.method private transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8f

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->removeChildren()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2
    return-object p1
.end method

.method private transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v0
.end method

.method private transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    const/16 v3, 0x8f

    invoke-direct {v0, v3, p1, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/SwitchCase;->getStatements()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_1
    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/IRFactory;->addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/IRFactory;->closeSwitch(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TemplateLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0xb5

    const/16 v4, 0x15

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v1, Lorg/mozilla/javascript/ast/TemplateCharacters;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/TemplateCharacters;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private transformTemplateLiteralCall(Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;)Lorg/mozilla/javascript/Node;
    .locals 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TaggedTemplateLiteral;->getTemplateLiteral()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/TemplateLiteral;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TemplateLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0xb5

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addTemplateLiteral(Lorg/mozilla/javascript/ast/TemplateLiteral;)V

    return-object v1
.end method

.method private transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x37

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    return-object v1
.end method

.method private transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;
    .locals 12

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getTryBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/CatchClause;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getVarName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    :goto_1
    move-object v7, v4

    move-object v8, v5

    goto :goto_2

    :cond_0
    new-instance v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>()V

    goto :goto_1

    :cond_1
    move-object v7, v4

    move-object v8, v7

    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/CatchClause;->getBody()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v10

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/mozilla/javascript/IRFactory;->createCatch(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    move-object v6, p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    move-object v1, v6

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDefaultXmlNamespace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformUpdate(Lorg/mozilla/javascript/ast/UpdateExpression;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UpdateExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UpdateExpression;->isPostfix()Z

    move-result p1

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/IRFactory;->createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/VariableInitializer;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_1
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    new-instance v5, Lorg/mozilla/javascript/i;

    invoke-direct {v5, p0}, Lorg/mozilla/javascript/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Parser$Transformer;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_4
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    :cond_5
    return-object p1
.end method

.method private transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    return-object p1
.end method

.method private transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;
    .locals 7

    const/16 v0, 0x92

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WhileLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Loop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;
    .locals 6

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v2

    const/16 v3, 0x1e

    invoke-direct {v0, v3, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(III)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->getFragments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/XmlString;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    if-eqz v1, :cond_0

    const-string v1, "XMLList"

    goto :goto_0

    :cond_0
    const-string v1, "XML"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/XmlFragment;

    instance-of v3, v2, Lorg/mozilla/javascript/ast/XmlString;

    const/16 v4, 0x15

    if-eqz v3, :cond_2

    check-cast v2, Lorg/mozilla/javascript/ast/XmlString;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    :cond_2
    check-cast v2, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->isXmlAttribute()Z

    move-result v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    instance-of v5, v5, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v5, :cond_3

    const-string v2, ""

    invoke-static {v2}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_2
    if-eqz v3, :cond_4

    const/16 v3, 0x53

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v3}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/16 v3, 0x54

    invoke-static {v3, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    :goto_3
    invoke-static {v4, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0
.end method

.method private transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getMemberRef()Lorg/mozilla/javascript/ast/XmlRef;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v3, 0x9d

    if-ne p1, v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    :cond_1
    invoke-direct {p0, v1, v0, v2}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;
    .locals 7

    .line 3
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlRef;->getNamespace()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :goto_1
    instance-of v0, p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/XmlPropRef;->getPropName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget v6, p2, Lorg/mozilla/javascript/Node;->type:I

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;II)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v5, p3

    .line 8
    check-cast p2, Lorg/mozilla/javascript/ast/XmlElemRef;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlElemRef;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    .line 9
    invoke-direct {p0, v2, v3, p1, v5}, Lorg/mozilla/javascript/IRFactory;->createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method private transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, v0, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;II)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public isDestructuring(Lorg/mozilla/javascript/Node;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    invoke-interface {p1}, Lorg/mozilla/javascript/ast/DestructuringForm;->isDestructuring()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    iput-object p1, v0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    iput-boolean v1, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->push(Lorg/mozilla/javascript/ast/AstNode;)V

    :try_start_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ScriptNode;
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Parser;->reportErrorsIfExists(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {p1}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->astNodePos:Lorg/mozilla/javascript/IRFactory$AstNodePosition;

    invoke-virtual {v0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->pop()V

    throw p1
.end method
