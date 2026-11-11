.class public Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "SourceFile"


# instance fields
.field private methodName:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->setMethodName(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getMethodName()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->methodName:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setMethodName(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->methodName:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->methodName:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-static {v0, v1, p1}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/GeneratorMethodDefinition;->methodName:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
