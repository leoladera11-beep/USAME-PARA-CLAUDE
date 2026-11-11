.class public Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;
.super Lorg/mozilla/javascript/VMBridge;
.source "SourceFile"


# static fields
.field private static final contextLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;->contextLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/VMBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lorg/mozilla/javascript/Context;

    return-object p1
.end method

.method public getInterfaceProxyHelper(Lorg/mozilla/javascript/ContextFactory;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ContextFactory;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    const-class p2, Ljava/lang/reflect/InvocationHandler;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getThreadContextHelper()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/reflect/Constructor;

    new-instance v0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$1;

    move-object v1, p0

    move-object v4, p2

    move-object v3, p3

    move-object v2, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$1;-><init>(Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;Ljava/lang/Object;Lorg/mozilla/javascript/InterfaceAdapter;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;)V

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public tryToMakeAccessible(Ljava/lang/reflect/AccessibleObject;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    return v1
.end method
