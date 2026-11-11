.class Lorg/mozilla/javascript/NativeConsole$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeConsole;->formatObj(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/javascript/NativeConsole$1;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x1

    aget-object p1, p4, p1

    :goto_0
    instance-of p2, p1, Lorg/mozilla/javascript/Delegator;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Delegator;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "function "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {p1}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() {...}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/mozilla/javascript/NativeConsole$1;->val$arg:Ljava/lang/Object;

    instance-of p3, p2, Lorg/mozilla/javascript/NativeError;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/mozilla/javascript/NativeError;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeError;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method
