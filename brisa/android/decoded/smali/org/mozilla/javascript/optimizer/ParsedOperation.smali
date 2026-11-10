.class Lorg/mozilla/javascript/optimizer/ParsedOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Ljdk/dynalink/Namespace;

.field private final operation:Ljdk/dynalink/Operation;

.field private final root:Ljdk/dynalink/Operation;


# direct methods
.method public constructor <init>(Ljdk/dynalink/Operation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->root:Ljdk/dynalink/Operation;

    invoke-static {p1}, Ljdk/dynalink/NamedOperation;->getName(Ljdk/dynalink/Operation;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljdk/dynalink/NamedOperation;->getBaseOperation(Ljdk/dynalink/Operation;)Ljdk/dynalink/Operation;

    move-result-object p1

    check-cast p1, Ljdk/dynalink/NamespaceOperation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljdk/dynalink/NamespaceOperation;->getNamespace(I)Ljdk/dynalink/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->namespace:Ljdk/dynalink/Namespace;

    invoke-virtual {p1}, Ljdk/dynalink/NamespaceOperation;->getBaseOperation()Ljdk/dynalink/Operation;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isNamespace(Ljdk/dynalink/Namespace;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->namespace:Ljdk/dynalink/Namespace;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOperation(Ljdk/dynalink/Operation;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->root:Ljdk/dynalink/Operation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
