.class final Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/AccessorSlot$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/AccessorSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionSetter"
.end annotation


# instance fields
.field final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;->target:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
    .locals 0

    iget-object p1, p0, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;->target:Ljava/lang/Object;

    instance-of p2, p1, Lorg/mozilla/javascript/Function;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Function;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSameSetterFunction(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;->target:Ljava/lang/Object;

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/Function;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    iget-object p2, p0, Lorg/mozilla/javascript/AccessorSlot$FunctionSetter;->target:Ljava/lang/Object;

    instance-of v0, p2, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/mozilla/javascript/Function;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, v1, p3, p1}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
