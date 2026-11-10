.class public abstract Lorg/mozilla/javascript/ast/AstNode;
.super Lorg/mozilla/javascript/Node;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;,
        Lorg/mozilla/javascript/ast/AstNode$PositionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/javascript/Node;",
        "Ljava/lang/Comparable<",
        "Lorg/mozilla/javascript/ast/AstNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final INDENTATIONS:[Ljava/lang/String;

.field private static final MAX_INDENT:I = 0x2a

.field private static final operatorNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected inlineComment:Lorg/mozilla/javascript/ast/AstNode;

.field protected length:I

.field protected parent:Lorg/mozilla/javascript/ast/AstNode;

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x2b

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/mozilla/javascript/ast/AstNode;->INDENTATIONS:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string v3, "typeof"

    const/16 v4, 0x39

    const-string v5, "in"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x1f

    const-string v3, "delete"

    const/16 v4, 0x3a

    const-string v5, "instanceof"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x74

    const-string v3, ":"

    const/16 v4, 0x62

    const-string v5, ","

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xb9

    const-string v3, "??"

    const/16 v4, 0x75

    const-string v5, "||"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x76

    const-string v3, "&&"

    const/16 v4, 0xba

    const-string v5, "?."

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x78

    const-string v3, "--"

    const/16 v4, 0x77

    const-string v5, "++"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xa

    const-string v3, "^"

    const/16 v4, 0x9

    const-string v5, "|"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xc

    const-string v3, "=="

    const/16 v4, 0xb

    const-string v5, "&"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xe

    const-string v3, "<"

    const/16 v4, 0xd

    const-string v5, "!="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0xf

    const-string v3, "<="

    const/16 v4, 0x10

    const-string v5, ">"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x12

    const-string v3, "<<"

    const/16 v4, 0x11

    const-string v5, ">="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x14

    const-string v3, ">>>"

    const/16 v4, 0x13

    const-string v5, ">>"

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x15

    const-string v3, "+"

    const/16 v4, 0x16

    const-string v5, "-"

    invoke-static {v2, v0, v3, v4, v5}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x18

    const-string v4, "/"

    const/16 v6, 0x17

    const-string v7, "*"

    invoke-static {v6, v0, v7, v2, v4}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x51

    const-string v4, "**"

    const/16 v6, 0x19

    const-string v7, "%"

    invoke-static {v6, v0, v7, v2, v4}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x1b

    const-string v4, "~"

    const/16 v6, 0x1a

    const-string v7, "!"

    invoke-static {v6, v0, v7, v2, v4}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x1c

    const/16 v4, 0x1d

    invoke-static {v2, v0, v3, v4, v5}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x34

    const-string v3, "!=="

    const/16 v4, 0x33

    const-string v5, "==="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x64

    const-string v3, "|="

    const/16 v4, 0x63

    const-string v5, "="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x67

    const-string v3, "&="

    const/16 v4, 0x65

    const-string v5, "||="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x69

    const-string v3, "<<="

    const/16 v4, 0x68

    const-string v5, "&&="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x6b

    const-string v3, ">>>="

    const/16 v4, 0x6a

    const-string v5, ">>="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x6d

    const-string v3, "-="

    const/16 v4, 0x6c

    const-string v5, "+="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x6f

    const-string v3, "/="

    const/16 v4, 0x6e

    const-string v5, "*="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x66

    const-string v3, "^="

    const/16 v4, 0x70

    const-string v5, "%="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x72

    const-string v3, "??="

    const/16 v4, 0x71

    const-string v5, "**="

    invoke-static {v4, v0, v5, v2, v3}, LB1/e;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x8b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "void"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mozilla/javascript/ast/AstNode;->INDENTATIONS:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 5
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 7
    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    .line 8
    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public static codeBug()Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static operatorToString(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operator: "

    invoke-static {p0, v1}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChild(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public assertNotNull(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->compareTo(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-ge v1, v0, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    return v2

    :cond_3
    if-ge v1, v0, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public debugPrint()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAbsolutePosition()I
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iget-object v1, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getAstRoot()Lorg/mozilla/javascript/ast/AstRoot;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/mozilla/javascript/ast/AstRoot;

    return-object v0
.end method

.method public getEnclosingFunction()Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/FunctionNode;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    return-object v0
.end method

.method public getEnclosingScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/Scope;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getInlineComment()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->inlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return v0
.end method

.method public getLineno()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getParent()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return v0
.end method

.method public hasSideEffects()Z
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x25 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x46 -> :sswitch_0
        0x4e -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0x8f -> :sswitch_0
        0x90 -> :sswitch_0
        0x91 -> :sswitch_0
        0x92 -> :sswitch_0
        0x94 -> :sswitch_0
        0x95 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9b -> :sswitch_0
        0x9c -> :sswitch_0
        0xa7 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x82
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public makeIndent(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x2a

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->INDENTATIONS:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public printList(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_0

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v2, v3, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v2, :cond_1

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBounds(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setPosition(I)V

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method

.method public setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstNode;->inlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public setRelative(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public shortName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toSource(I)Ljava/lang/String;
.end method

.method public abstract visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
.end method
