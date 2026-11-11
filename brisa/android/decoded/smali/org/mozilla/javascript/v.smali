.class public final synthetic Lorg/mozilla/javascript/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/v;->a:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/v;->a:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/NativeObject;->h(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
