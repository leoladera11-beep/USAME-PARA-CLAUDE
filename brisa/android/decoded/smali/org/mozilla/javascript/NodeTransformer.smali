.class public Lorg/mozilla/javascript/NodeTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hasFinally:Z

.field private loopEnds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/mozilla/javascript/Node;",
            ">;"
        }
    .end annotation
.end field

.field private loops:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/mozilla/javascript/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    return-object p3

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3
.end method

.method private static replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3

    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Node;->replaceChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3

    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object p3
.end method

.method private transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;Z)V
    .locals 7

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->flattenSymbolTable(Z)V

    move-object v3, p1

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    return-void
.end method

.method private transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    const/4 v8, 0x0

    move-object v2, v8

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    move-object v3, v8

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_1
    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0xa7

    const/16 v9, 0xac

    const/16 v10, 0x8f

    const/16 v11, 0x2c

    if-eqz p4, :cond_5

    const/16 v12, 0xab

    if-eq v4, v10, :cond_2

    const/16 v13, 0x92

    if-eq v4, v13, :cond_2

    if-ne v4, v12, :cond_5

    :cond_2
    instance-of v13, v2, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v13, :cond_5

    move-object v13, v2

    check-cast v13, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v14, Lorg/mozilla/javascript/Node;

    if-ne v4, v12, :cond_3

    move v4, v9

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-direct {v14, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-direct {v4, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v14, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13, v8}, Lorg/mozilla/javascript/ast/Scope;->setSymbolTable(Ljava/util/Map;)V

    invoke-static {v6, v3, v2, v14}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    invoke-virtual {v14, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move/from16 v17, v12

    move-object v12, v4

    move/from16 v4, v17

    goto :goto_4

    :cond_5
    move-object v12, v2

    :goto_4
    const/4 v2, 0x3

    if-eq v4, v2, :cond_3c

    const/4 v13, 0x4

    const/16 v14, 0x95

    const/16 v15, 0x88

    const/16 v16, 0x0

    const/16 v10, 0x5a

    if-eq v4, v13, :cond_31

    const/4 v13, 0x7

    if-eq v4, v13, :cond_2c

    const/16 v13, 0x36

    const/16 v8, 0x8

    if-eq v4, v8, :cond_20

    const/16 v8, 0x2b

    if-eq v4, v8, :cond_1f

    if-eq v4, v11, :cond_21

    const/16 v8, 0x48

    if-eq v4, v8, :cond_1c

    const/16 v8, 0x4e

    if-eq v4, v8, :cond_1b

    if-eq v4, v10, :cond_1a

    const/16 v8, 0x7f

    if-eq v4, v8, :cond_19

    const/16 v8, 0x97

    if-eq v4, v8, :cond_18

    if-eq v4, v9, :cond_e

    const/16 v8, 0xb3

    if-eq v4, v8, :cond_1b

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_a

    :pswitch_0
    iget-object v3, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v3, v12}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    if-eq v4, v2, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v2, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    move-object v5, v12

    check-cast v5, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Jump;->getJumpStatement()Lorg/mozilla/javascript/ast/Jump;

    move-result-object v8

    if-nez v8, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object v9, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mozilla/javascript/Node;

    if-ne v11, v8, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v13

    if-ne v13, v15, :cond_a

    new-instance v11, Lorg/mozilla/javascript/Node;

    invoke-direct {v11, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v6, v3, v12, v11}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_5

    :cond_a
    if-ne v13, v10, :cond_8

    check-cast v11, Lorg/mozilla/javascript/ast/Jump;

    new-instance v13, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v13, v14}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v11

    iput-object v11, v13, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-static {v6, v3, v12, v13}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_5

    :cond_b
    :goto_6
    const/16 v2, 0x85

    if-ne v4, v2, :cond_c

    iget-object v2, v8, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    iput-object v2, v5, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_7

    :cond_c
    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Jump;->getContinue()Lorg/mozilla/javascript/Node;

    move-result-object v2

    iput-object v2, v5, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    :goto_7
    const/4 v2, 0x5

    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_a

    :cond_d
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_2
    invoke-virtual {v0, v12, v1}, Lorg/mozilla/javascript/NodeTransformer;->visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto :goto_a

    :cond_e
    :pswitch_3
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-ne v2, v5, :cond_12

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v4, 0x7a

    if-ne v2, v4, :cond_10

    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v2, v16

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v0, v2, v6, v3, v12}, Lorg/mozilla/javascript/NodeTransformer;->visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    :cond_11
    :goto_a
    move-object v2, v12

    goto/16 :goto_1e

    :cond_12
    :pswitch_4
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x8f

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    :goto_b
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v10

    if-ne v10, v11, :cond_15

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v5, v13}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v15, 0xa8

    if-ne v4, v15, :cond_14

    const/16 v15, 0xa9

    goto :goto_c

    :cond_14
    const/16 v15, 0x8

    :goto_c
    invoke-direct {v14, v15, v5, v10}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v5, v14

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v10

    if-ne v10, v9, :cond_16

    :goto_d
    new-instance v10, Lorg/mozilla/javascript/Node;

    const/16 v14, 0x93

    invoke-direct {v10, v14, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v5

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v14

    invoke-virtual {v10, v5, v14}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    invoke-virtual {v2, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_e
    move-object v5, v8

    goto :goto_b

    :cond_16
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_17
    invoke-static {v6, v3, v12, v2}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    goto :goto_a

    :cond_18
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto :goto_a

    :cond_19
    :pswitch_5
    iget-object v2, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v2, v12}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    move-object v3, v12

    check-cast v3, Lorg/mozilla/javascript/ast/Jump;

    iget-object v3, v3, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    move-object v2, v12

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    iget-object v3, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v3, v12}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1b
    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v2, v12}, Lorg/mozilla/javascript/ast/FunctionNode;->addResumptionPoint(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_a

    :cond_1c
    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    if-eqz v8, :cond_11

    array-length v9, v8

    move/from16 v10, v16

    :goto_f
    if-ge v10, v9, :cond_11

    aget-object v2, v8, v10

    instance-of v3, v2, Lorg/mozilla/javascript/Node;

    if-nez v3, :cond_1d

    goto :goto_12

    :cond_1d
    check-cast v2, Lorg/mozilla/javascript/Node;

    instance-of v3, v12, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v3, :cond_1e

    move-object v3, v12

    check-cast v3, Lorg/mozilla/javascript/ast/Scope;

    :goto_10
    move/from16 v4, p4

    move/from16 v5, p5

    goto :goto_11

    :cond_1e
    move-object v3, v7

    goto :goto_10

    :goto_11
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1f
    invoke-virtual {v0, v12, v1}, Lorg/mozilla/javascript/NodeTransformer;->visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto/16 :goto_a

    :cond_20
    if-eqz p5, :cond_21

    const/16 v2, 0x50

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-ne v2, v13, :cond_21

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    instance-of v5, v2, Lorg/mozilla/javascript/ast/Name;

    if-eqz v5, :cond_21

    check-cast v2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v5, "eval"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "syntax error"

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    :cond_21
    :pswitch_6
    if-eqz p4, :cond_22

    goto/16 :goto_a

    :cond_22
    const/16 v2, 0x1f

    if-ne v4, v11, :cond_23

    move-object v5, v12

    goto :goto_13

    :cond_23
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    if-eq v8, v13, :cond_25

    if-ne v4, v2, :cond_24

    goto/16 :goto_a

    :cond_24
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_25
    :goto_13
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v8

    if-eqz v8, :cond_26

    goto/16 :goto_a

    :cond_26
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    if-ne v4, v11, :cond_27

    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_a

    :cond_27
    const/16 v8, 0x2e

    const/16 v9, 0x8

    if-eq v4, v9, :cond_2b

    const/16 v9, 0x50

    if-ne v4, v9, :cond_28

    goto :goto_14

    :cond_28
    const/16 v9, 0xa9

    if-ne v4, v9, :cond_29

    const/16 v2, 0xaa

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_a

    :cond_29
    if-ne v4, v2, :cond_2a

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x31

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v6, v3, v12, v2}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v12

    goto/16 :goto_a

    :cond_2a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2b
    :goto_14
    const/16 v2, 0x3d

    invoke-virtual {v12, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_a

    :cond_2c
    :pswitch_7
    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    const/4 v3, 0x7

    if-ne v4, v3, :cond_30

    :goto_15
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_2d

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_15

    :cond_2d
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2e

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_30

    :cond_2e
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const-string v8, "undefined"

    if-ne v5, v11, :cond_2f

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object v2, v4

    goto :goto_16

    :cond_2f
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v11, :cond_30

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object v2, v3

    :cond_30
    :goto_16
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_11

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_a

    :cond_31
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x7a

    if-ne v4, v5, :cond_32

    move-object v4, v1

    check-cast v4, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v16, 0x1

    :cond_32
    if-eqz v16, :cond_33

    const/16 v4, 0x14

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_33
    iget-boolean v4, v0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    if-nez v4, :cond_34

    goto/16 :goto_a

    :cond_34
    iget-object v4, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mozilla/javascript/Node;

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    if-eq v9, v10, :cond_36

    if-ne v9, v15, :cond_35

    goto :goto_18

    :cond_35
    const/16 v8, 0x8f

    goto :goto_17

    :cond_36
    :goto_18
    if-ne v9, v10, :cond_37

    new-instance v9, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v9, v14}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    check-cast v8, Lorg/mozilla/javascript/ast/Jump;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v8

    iput-object v8, v9, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_19

    :cond_37
    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-direct {v9, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    :goto_19
    if-nez v5, :cond_38

    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x8f

    invoke-direct {v5, v8}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v11

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getColumn()I

    move-result v13

    invoke-virtual {v9, v11, v13}, Lorg/mozilla/javascript/Node;->setLineColumnNumber(II)V

    goto :goto_1a

    :cond_38
    const/16 v8, 0x8f

    :goto_1a
    invoke-virtual {v5, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_17

    :cond_39
    if-eqz v5, :cond_11

    invoke-virtual {v12}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-static {v6, v3, v12, v5}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    if-eqz v2, :cond_3b

    if-eqz v16, :cond_3a

    goto :goto_1b

    :cond_3a
    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x94

    invoke-direct {v3, v4, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x46

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v3

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    goto :goto_1c

    :cond_3b
    :goto_1b
    invoke-virtual {v5, v12}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_1c
    move-object/from16 v1, p1

    move-object/from16 v7, p3

    move-object v2, v8

    :goto_1d
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3c
    :pswitch_8
    iget-object v1, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_11

    iget-object v1, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v1, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto/16 :goto_a

    :goto_1e
    instance-of v1, v2, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v1, :cond_3d

    move-object v7, v2

    check-cast v7, Lorg/mozilla/javascript/ast/Scope;

    move-object v3, v7

    :goto_1f
    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    goto :goto_20

    :cond_3d
    move-object/from16 v3, p3

    goto :goto_1f

    :goto_20
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    goto :goto_1d

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x90
        :pswitch_5
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa7
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 2

    .line 2
    invoke-virtual {p3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;Z)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1, p2, p3}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;ZLorg/mozilla/javascript/CompilerEnvirons;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method

.method public visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v7, 0xac

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0x2c

    const/16 v9, 0xa7

    const/16 v12, 0x8b

    const/16 v13, 0x93

    const/16 v14, 0x62

    const/16 v15, 0x8f

    if-eqz p1, :cond_9

    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v5, :cond_1

    const/16 v16, 0xad

    move/from16 v10, v16

    :goto_1
    const-wide/16 v16, 0x0

    goto :goto_2

    :cond_1
    move v10, v15

    goto :goto_1

    :goto_2
    invoke-direct {v6, v10}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x48

    invoke-direct {v2, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v7, :cond_5

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v11

    if-ne v11, v9, :cond_4

    if-eqz v5, :cond_2

    new-instance v11, Lorg/mozilla/javascript/Node;

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-direct {v11, v14, v9, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_4

    :cond_2
    new-instance v11, Lorg/mozilla/javascript/Node;

    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v9, v13, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v11, v15, v9, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_4
    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-static/range {v16 .. v17}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-direct {v7, v12, v9}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_6

    :cond_4
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v11, v4

    move-object v4, v3

    :goto_6
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-static/range {v16 .. v17}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {v4, v12, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_6
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v11

    const/16 v7, 0xac

    const/16 v9, 0xa7

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    const/16 v3, 0xc

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x88

    invoke-direct {v1, v2, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_9
    const-wide/16 v16, 0x0

    new-instance v6, Lorg/mozilla/javascript/Node;

    if-eqz v5, :cond_a

    move v7, v14

    goto :goto_7

    :cond_a
    move v7, v15

    :goto_7
    invoke-direct {v6, v7}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, v14}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    :goto_8
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0xac

    if-ne v6, v7, :cond_d

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    const/16 v10, 0xa7

    if-ne v9, v10, :cond_c

    if-eqz v5, :cond_b

    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    invoke-direct {v9, v14, v11, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_9

    :cond_b
    new-instance v9, Lorg/mozilla/javascript/Node;

    new-instance v11, Lorg/mozilla/javascript/Node;

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v11, v13, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-direct {v9, v15, v11, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_9
    move-object v4, v3

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    move-object v7, v2

    check-cast v7, Lorg/mozilla/javascript/ast/Scope;

    invoke-static {v4, v7}, Lorg/mozilla/javascript/ast/Scope;->joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_a

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_d
    const/16 v10, 0xa7

    move-object v9, v4

    move-object v4, v3

    :goto_a
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    if-ne v6, v8, :cond_f

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    if-nez v4, :cond_e

    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-static/range {v16 .. v17}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v4, v12, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :cond_e
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v11, 0x3d

    invoke-direct {v7, v11, v6, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    move-object v4, v9

    goto :goto_8

    :cond_f
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v14}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v1, v4, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v1, :cond_12

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    return-object v0

    :cond_11
    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-direct {v3, v13, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v15}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    instance-of v1, v4, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v1, :cond_12

    check-cast v4, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    check-cast v2, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_12
    return-object v0
.end method

.method public visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0

    return-void
.end method
