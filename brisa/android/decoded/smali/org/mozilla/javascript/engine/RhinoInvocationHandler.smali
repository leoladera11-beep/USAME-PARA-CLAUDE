.class public Lorg/mozilla/javascript/engine/RhinoInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

.field private final thiz:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    iput-object p2, p0, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;->thiz:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoInvocationHandler;->thiz:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->invokeMethodRaw(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
