.class final Lorg/mozilla/javascript/NativeProxy$Revoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Revoker"
.end annotation


# instance fields
.field private revocableProxy:Lorg/mozilla/javascript/NativeProxy;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeProxy;->k(Lorg/mozilla/javascript/NativeProxy;)V

    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeProxy;->l(Lorg/mozilla/javascript/NativeProxy;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method
