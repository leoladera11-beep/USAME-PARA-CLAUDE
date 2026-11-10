.class public final synthetic Lorg/mozilla/javascript/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/Context;

.field public final synthetic b:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic c:Lorg/mozilla/javascript/LambdaConstructor;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/H;->a:Lorg/mozilla/javascript/Context;

    iput-object p2, p0, Lorg/mozilla/javascript/H;->b:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/H;->c:Lorg/mozilla/javascript/LambdaConstructor;

    iput-object p4, p0, Lorg/mozilla/javascript/H;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/H;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/H;->a:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/H;->b:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/H;->c:Lorg/mozilla/javascript/LambdaConstructor;

    invoke-static {v1, v2, v3, v0, p1}, Lorg/mozilla/javascript/NativeSymbol;->h(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p1

    return-object p1
.end method
