.class public Lorg/mozilla/javascript/engine/BindingsObject;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# instance fields
.field private final bindings:Ljavax/script/Bindings;


# direct methods
.method public constructor <init>(Ljavax/script/Bindings;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bindings must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "BindingsObject"

    return-object v0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-interface {v0}, Ljavax/script/Bindings;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    iget-object p2, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-interface {p2, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    invoke-static {p3, p2}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
