.class public Lorg/mozilla/javascript/LambdaAccessorSlot;
.super Lorg/mozilla/javascript/Slot;
.source "SourceFile"


# instance fields
.field private transient getter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getterFunction:Lorg/mozilla/javascript/LambdaFunction;

.field private transient setter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private setterFunction:Lorg/mozilla/javascript/LambdaFunction;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->lambda$setGetter$0(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->lambda$setSetter$1(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setGetter$0(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setSetter$1(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    aget-object p1, p4, p1

    invoke-interface {p0, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    if-nez v2, :cond_4

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "writable"

    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->setCommonDescriptorProperties(IZ)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    if-eqz v2, :cond_5

    const-string v5, "get"

    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    const-string v5, "set"

    if-eqz v2, :cond_6

    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_7
    :goto_4
    if-eqz p1, :cond_a

    and-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_8

    move p1, v3

    goto :goto_5

    :cond_8
    move p1, v4

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "enumerable"

    invoke-virtual {v0, v2, p1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "configurable"

    invoke-virtual {v0, v1, p1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_a
    return-object v0
.end method

.method public copySlot()Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 2

    .line 2
    new-instance v0, Lorg/mozilla/javascript/LambdaAccessorSlot;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/LambdaAccessorSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 5
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 6
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 9
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    return-object v0
.end method

.method public bridge synthetic copySlot()Lorg/mozilla/javascript/Slot;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaAccessorSlot;->copySlot()Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/LambdaAccessorSlot;->buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isSetterSlot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValueSlot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public replaceWith(Lorg/mozilla/javascript/LambdaAccessorSlot;)V
    .locals 1

    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    return-void
.end method

.method public setGetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/B;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lorg/mozilla/javascript/B;-><init>(Ljava/lang/Object;I)V

    const/4 p2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    :cond_0
    return-void
.end method

.method public setSetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    if-eqz p2, :cond_0

    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "set "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/B;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3}, Lorg/mozilla/javascript/B;-><init>(Ljava/lang/Object;I)V

    const/4 p2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z
    .locals 1

    iget-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Slot;->throwNoSetterException(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-super {p0, p1, p3, p3, p4}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p2, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method
