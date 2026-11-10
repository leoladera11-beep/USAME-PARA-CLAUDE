.class public final synthetic Lorg/mozilla/javascript/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lorg/mozilla/javascript/NativePromise$Reaction;

.field public final synthetic g:Lorg/mozilla/javascript/Context;

.field public final synthetic h:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lorg/mozilla/javascript/w;->e:I

    iput-object p1, p0, Lorg/mozilla/javascript/w;->f:Lorg/mozilla/javascript/NativePromise$Reaction;

    iput-object p2, p0, Lorg/mozilla/javascript/w;->g:Lorg/mozilla/javascript/Context;

    iput-object p3, p0, Lorg/mozilla/javascript/w;->h:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/w;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/w;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/w;->h:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/w;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/w;->f:Lorg/mozilla/javascript/NativePromise$Reaction;

    iget-object v3, p0, Lorg/mozilla/javascript/w;->g:Lorg/mozilla/javascript/Context;

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativePromise;->j(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/w;->h:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/w;->i:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/w;->f:Lorg/mozilla/javascript/NativePromise$Reaction;

    iget-object v3, p0, Lorg/mozilla/javascript/w;->g:Lorg/mozilla/javascript/Context;

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativePromise;->x(Lorg/mozilla/javascript/NativePromise$Reaction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
