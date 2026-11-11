.class public final synthetic Lorg/mozilla/javascript/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lorg/mozilla/javascript/l;->e:I

    iput-object p1, p0, Lorg/mozilla/javascript/l;->f:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/l;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lorg/mozilla/javascript/l;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/l;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;

    iget-object v0, p0, Lorg/mozilla/javascript/l;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;->a(Lorg/mozilla/javascript/NativePromise$PromiseAnyRejector;Lorg/mozilla/javascript/NativePromise$PromiseElementResolver;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    iget-object p1, p0, Lorg/mozilla/javascript/l;->f:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, p0, Lorg/mozilla/javascript/l;->g:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/Interpreter$CallFrame;->a(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
