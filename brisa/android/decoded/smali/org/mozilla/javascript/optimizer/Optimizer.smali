.class Lorg/mozilla/javascript/optimizer/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AnyType:I = 0x3

.field static final NoType:I = 0x0

.field static final NumberType:I = 0x1


# instance fields
.field private inDirectCallFunction:Z

.field private parameterUsedInNumberContext:Z

.field theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/Node;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x92

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private convertParameter(Lorg/mozilla/javascript/Node;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private markDCPNumberContext(Lorg/mozilla/javascript/Node;)V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    :cond_0
    return-void
.end method

.method private optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 5

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-static {v1, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    iget-object v0, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setParameterNumberContext(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 3

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0xa3

    invoke-direct {v1, v2, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_1
    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I
    .locals 9

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0xa3

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x27

    if-eq v0, v6, :cond_2e

    const/16 v7, 0x29

    if-eq v0, v7, :cond_2a

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_26

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_25

    const/16 v7, 0x51

    const/16 v8, 0xa4

    if-eq v0, v7, :cond_1f

    const/16 v7, 0x93

    if-eq v0, v7, :cond_1d

    const/16 v7, 0x9a

    if-eq v0, v7, :cond_2a

    const/16 v7, 0xaa

    if-eq v0, v7, :cond_16

    const/16 v7, 0x3c

    if-eq v0, v7, :cond_13

    const/16 p2, 0x3d

    if-eq v0, p2, :cond_16

    const/16 p2, 0x77

    if-eq v0, p2, :cond_d

    const/16 p2, 0x78

    if-eq v0, p2, :cond_d

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return v4

    :pswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v5

    :cond_0
    return v4

    :pswitch_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v4

    :cond_1
    if-ne v6, v5, :cond_6

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-ne v1, v5, :cond_6

    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_5

    if-ne v6, v5, :cond_4

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_4
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_0

    :cond_5
    if-ne v6, v5, :cond_6

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_6
    :goto_0
    return v4

    :pswitch_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v4

    :cond_7
    if-ne v6, v5, :cond_c

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-ne v1, v5, :cond_c

    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_9
    if-ne v1, v5, :cond_b

    if-ne v6, v5, :cond_a

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_a
    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    :cond_b
    if-ne v6, v5, :cond_c

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_c
    :goto_1
    return v4

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/16 v0, 0x1f

    invoke-virtual {p2, v0, v4}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    if-ne v0, v5, :cond_e

    return v4

    :cond_e
    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    if-ne v1, v7, :cond_10

    if-ne v0, v5, :cond_f

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v5

    :cond_f
    return v4

    :cond_10
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    if-eq p1, v6, :cond_12

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 p2, 0x21

    if-ne p1, p2, :cond_11

    goto :goto_2

    :cond_11
    return v4

    :cond_12
    :goto_2
    return v0

    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_14

    if-ne p2, v5, :cond_14

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_14
    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_15
    return v4

    :cond_16
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v2

    iget-boolean v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v6

    if-eqz v6, :cond_19

    if-ne v0, v5, :cond_18

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_17
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v4

    :cond_18
    return v0

    :cond_19
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eq v0, v5, :cond_1a

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_1a
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    return v5

    :cond_1b
    if-ne v0, v5, :cond_1c

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_1c
    return v4

    :cond_1d
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v5, :cond_1e

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_1e
    return v4

    :cond_1f
    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v1

    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    if-ne v1, v5, :cond_22

    if-ne v2, v5, :cond_20

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_20
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v8, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_21
    return v5

    :cond_22
    if-ne v2, v5, :cond_24

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    invoke-direct {v0, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_23
    return v5

    :cond_24
    const/4 p1, 0x3

    return p1

    :cond_25
    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    return v5

    :cond_26
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    if-eqz v0, :cond_28

    :goto_3
    if-eqz p2, :cond_29

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p1

    if-ne p1, v5, :cond_27

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    :cond_27
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_3

    :cond_28
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :cond_29
    return v4

    :cond_2a
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v5, :cond_2b

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_2b
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v5, :cond_2c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_2c

    invoke-virtual {p1, v3, v5}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_2c
    invoke-direct {p0, v2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v5, :cond_2d

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_2d

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance p2, Lorg/mozilla/javascript/Node;

    invoke-direct {p2, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_2d
    return v4

    :cond_2e
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, p2, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v6

    if-ne v6, v5, :cond_2f

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :cond_2f
    invoke-direct {p0, v0, v5}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result p2

    if-ne p2, v5, :cond_30

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result p2

    if-nez p2, :cond_30

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    :cond_30
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
