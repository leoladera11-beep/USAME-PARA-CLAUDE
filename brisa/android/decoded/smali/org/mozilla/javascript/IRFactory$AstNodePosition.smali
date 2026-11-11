.class public Lorg/mozilla/javascript/IRFactory$AstNodePosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Parser$CurrentPositionReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IRFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AstNodePosition"
.end annotation


# instance fields
.field private savedLine:Ljava/lang/String;

.field private savedLineOffset:I

.field private savedLineno:I

.field private sourceString:Ljava/lang/String;

.field private stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    return-void
.end method

.method private cutAndSaveLine()V
    .locals 8

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getLineno()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0xd

    if-ne v6, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-ne v5, v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    move v4, v3

    :goto_4
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    if-nez v4, :cond_8

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    iput v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return-void

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getPosition()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v0

    return v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    iget v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    return v0
.end method

.method public pop()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    return-void
.end method

.method public push(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method
