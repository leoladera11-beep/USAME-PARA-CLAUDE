.class Lorg/mozilla/javascript/NativePromise$Reaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reaction"
.end annotation


# instance fields
.field capability:Lorg/mozilla/javascript/NativePromise$Capability;

.field handler:Lorg/mozilla/javascript/Callable;

.field reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativePromise$Capability;Lorg/mozilla/javascript/NativePromise$ReactionType;Lorg/mozilla/javascript/Callable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/NativePromise$ReactionType;->FULFILL:Lorg/mozilla/javascript/NativePromise$ReactionType;

    iput-object p1, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iput-object p2, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    iput-object p3, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->handler:Lorg/mozilla/javascript/Callable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->reaction:Lorg/mozilla/javascript/NativePromise$ReactionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->resolve:Lorg/mozilla/javascript/Callable;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativePromise$Reaction;->capability:Lorg/mozilla/javascript/NativePromise$Capability;

    iget-object v0, v0, Lorg/mozilla/javascript/NativePromise$Capability;->reject:Lorg/mozilla/javascript/Callable;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativePromise;->C(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/RhinoException;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
