.class final Lorg/mozilla/javascript/Interpreter$ContinueLoop;
.super Lorg/mozilla/javascript/Interpreter$NewState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContinueLoop"
.end annotation


# instance fields
.field private final frame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field private final indexReg:I

.field private final stackTop:I


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Interpreter$NewState;-><init>(I)V

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->frame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 4
    iput p2, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->stackTop:I

    .line 5
    iput p3, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->indexReg:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter$ContinueLoop;-><init>(Lorg/mozilla/javascript/Interpreter$CallFrame;II)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->frame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->indexReg:I

    return p0
.end method

.method public static bridge synthetic c(Lorg/mozilla/javascript/Interpreter$ContinueLoop;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/Interpreter$ContinueLoop;->stackTop:I

    return p0
.end method
