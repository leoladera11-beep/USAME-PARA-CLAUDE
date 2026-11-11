.class public final synthetic Lorg/mozilla/javascript/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic g:Lorg/mozilla/javascript/Callable;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lorg/mozilla/javascript/z;->e:I

    iput-object p1, p0, Lorg/mozilla/javascript/z;->f:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/z;->g:Lorg/mozilla/javascript/Callable;

    iput-object p3, p0, Lorg/mozilla/javascript/z;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lorg/mozilla/javascript/z;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lorg/mozilla/javascript/z;->g:Lorg/mozilla/javascript/Callable;

    iget-object v3, p0, Lorg/mozilla/javascript/z;->h:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/z;->f:Lorg/mozilla/javascript/Scriptable;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/NativePromise;->y(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    iget-object v1, p0, Lorg/mozilla/javascript/z;->g:Lorg/mozilla/javascript/Callable;

    iget-object v2, p0, Lorg/mozilla/javascript/z;->h:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/z;->f:Lorg/mozilla/javascript/Scriptable;

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativePromise;->h(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
