.class public Lorg/mozilla/javascript/engine/Builtins;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BUILTIN_KEY:Ljava/lang/Object;


# instance fields
.field private stdout:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/engine/Builtins;->BUILTIN_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/engine/Builtins;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/engine/Builtins;->BUILTIN_KEY:Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/engine/Builtins;

    return-object p0
.end method

.method public static print(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .locals 2

    invoke-static {p1}, Lorg/mozilla/javascript/engine/Builtins;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/engine/Builtins;

    move-result-object p0

    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p2, p3

    iget-object v1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    iget-object p0, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method


# virtual methods
.method public register(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Ljavax/script/ScriptContext;)V
    .locals 1

    invoke-interface {p3}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljavax/script/ScriptContext;->getWriter()Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/engine/Builtins;->stdout:Ljava/io/Writer;

    :goto_0
    const-string p1, "print"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-class p3, Lorg/mozilla/javascript/engine/Builtins;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    return-void
.end method
