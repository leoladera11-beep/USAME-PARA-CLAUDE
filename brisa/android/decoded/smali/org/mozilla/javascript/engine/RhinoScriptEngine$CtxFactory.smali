.class final Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;
.super Lorg/mozilla/javascript/ContextFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/engine/RhinoScriptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CtxFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/engine/RhinoScriptEngine$CtxFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeature(Lorg/mozilla/javascript/Context;I)Z
    .locals 1

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ContextFactory;->hasFeature(Lorg/mozilla/javascript/Context;I)Z

    move-result p1

    return p1
.end method

.method public onContextCreated(Lorg/mozilla/javascript/Context;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    return-void
.end method
