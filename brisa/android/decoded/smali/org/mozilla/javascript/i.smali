.class public final synthetic Lorg/mozilla/javascript/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Parser$Transformer;
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/i;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Script;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/JavaAdapter;->a(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/i;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/IRFactory;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->a(Lorg/mozilla/javascript/IRFactory;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method
