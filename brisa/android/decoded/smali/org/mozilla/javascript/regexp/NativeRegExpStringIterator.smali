.class public final Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "SourceFile"


# static fields
.field private static final ITERATOR_TAG:Ljava/lang/String; = "RegExpStringIterator"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fullUnicode:Z

.field private global:Z

.field private next:Ljava/lang/Object;

.field private nextDone:Z

.field private regexp:Lorg/mozilla/javascript/Scriptable;

.field private string:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->next:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ZZ)V
    .locals 1

    .line 3
    const-string v0, "RegExpStringIterator"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->next:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    .line 6
    iput-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->string:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->global:Z

    .line 8
    iput-boolean p5, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->fullUnicode:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->nextDone:Z

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;-><init>()V

    const-string v1, "RegExpStringIterator"

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method

.method private regExpExec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "exec"

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->string:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->string:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->js_exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "RegExp String Iterator"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "RegExpStringIterator"

    return-object v0
.end method

.method public isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->nextDone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regExpExec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->next:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->next:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->nextDone:Z

    return v1

    :cond_1
    iget-boolean v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->global:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->nextDone:Z

    return v3

    :cond_2
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    const-string v0, "lastIndex"

    invoke-static {p2, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toLength(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->string:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->fullUnicode:Z

    invoke-static {p2, v1, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->advanceStringIndex(Ljava/lang/String;JZ)J

    move-result-wide v1

    iget-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->regexp:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    :cond_3
    return v3
.end method

.method public nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->next:Ljava/lang/Object;

    return-object p1
.end method
