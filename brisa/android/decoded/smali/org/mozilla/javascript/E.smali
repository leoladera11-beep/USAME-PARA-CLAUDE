.class public final synthetic Lorg/mozilla/javascript/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/mozilla/javascript/NativePromise;

.field public final synthetic f:Lorg/mozilla/javascript/Context;

.field public final synthetic g:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/E;->e:Lorg/mozilla/javascript/NativePromise;

    iput-object p2, p0, Lorg/mozilla/javascript/E;->f:Lorg/mozilla/javascript/Context;

    iput-object p3, p0, Lorg/mozilla/javascript/E;->g:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/E;->h:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mozilla/javascript/E;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/E;->h:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/E;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/E;->e:Lorg/mozilla/javascript/NativePromise;

    iget-object v3, p0, Lorg/mozilla/javascript/E;->f:Lorg/mozilla/javascript/Context;

    iget-object v4, p0, Lorg/mozilla/javascript/E;->g:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v4, v0, v1}, Lorg/mozilla/javascript/NativePromise$ResolvingFunctions;->c(Lorg/mozilla/javascript/NativePromise;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
