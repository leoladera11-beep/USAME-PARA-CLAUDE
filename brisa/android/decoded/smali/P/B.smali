.class public final synthetic LP/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements LQ/n;
.implements Lt1/j;
.implements LJ/k;
.implements Lb0/q;
.implements LW1/i;
.implements Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;
.implements Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LP/B;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LP/B;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :pswitch_0
    check-cast p1, LU/Y;

    iget-object p1, p1, LU/Y;->b:LQ/n;

    invoke-interface {p1}, LQ/n;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LP/B;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, LU/l0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LU/l0;->e:Ljava/lang/String;

    iget-object p1, p1, LU/l0;->b:Lu1/C0;

    new-instance v2, Ljava/util/ArrayList;

    iget v3, p1, Lu1/C0;->h:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lu1/P;->m(I)Lu1/N;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lu1/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/r0;

    invoke-virtual {v3}, LG/r0;->c()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_1
    check-cast p1, Ly0/a;

    iget-wide v0, p1, Ly0/a;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Ly0/a;

    iget-wide v0, p1, Ly0/a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, LG/r0;

    iget p1, p1, LG/r0;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, LU/y;

    invoke-interface {p1}, LU/y;->m()LU/l0;

    move-result-object p1

    iget-object p1, p1, LU/l0;->b:Lu1/C0;

    new-instance v0, LP/B;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    invoke-static {p1, v0}, Lu1/s;->v(Ljava/util/List;Lt1/j;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lb0/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_2

    array-length v1, v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    aget-byte v1, v2, v4

    and-int/lit16 v1, v1, 0xfe

    const/16 v3, 0xfc

    if-eq v1, v3, :cond_2

    :cond_1
    array-length v1, v2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    aget-byte v1, v2, v4

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    const/16 v3, 0xe0

    if-ge v1, v3, :cond_2

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/net/UnknownHostException;

    const-string v0, "No se admiten direcciones de red privadas."

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method

.method public c()Ljava/lang/reflect/Constructor;
    .locals 5

    iget v0, p0, LP/B;->e:I

    const/4 v1, 0x0

    const-class v2, Lb0/n;

    packed-switch v0, :pswitch_data_0

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isAvailable"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 1

    iget v0, p0, LP/B;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeInt32Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeInt32Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeInt16Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeInt16Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeFloat64Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeFloat64Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeFloat32Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeFloat32Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()[Lb0/n;
    .locals 3

    iget v0, p0, LP/B;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lh0/b;

    invoke-direct {v0}, Lh0/b;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_1
    new-instance v0, Lg0/b;

    invoke-direct {v0}, Lg0/b;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_2
    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 14

    iget v0, p0, LP/B;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LP/J;

    iget-object p1, p1, LP/J;->a:LP/O;

    iget-object p1, p1, LP/O;->n:La1/g;

    if-eqz p1, :cond_0

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    iget-object v1, p1, LN/a;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, LN/a;->w:LW/o;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p1, p1, LW/o;->f:LW/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, LP/K;

    iget-object v0, p1, LP/K;->a:LP/O;

    iget-object v1, v0, LP/O;->j:LP/K;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, v0, LP/O;->P:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, LP/O;->Q:Z

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    check-cast p1, LP/K;

    iget-object v0, p1, LP/K;->a:LP/O;

    iget-object v1, v0, LP/O;->j:LP/K;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, v0, LP/O;->n:La1/g;

    if-eqz p1, :cond_4

    iget-boolean v0, v0, LP/O;->R:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    iget-object p1, p1, LS/r;->M:LN/A;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LN/A;->a()V

    :cond_4
    :goto_2
    return-void

    :pswitch_2
    check-cast p1, LP/K;

    iget-object p1, p1, LP/K;->a:LP/O;

    iget-object p1, p1, LP/O;->n:La1/g;

    if-eqz p1, :cond_5

    new-instance v0, LP/P;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    iget-object p1, p1, LP/S;->O0:LP/t;

    iget-object v1, p1, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_5

    new-instance v2, LP/r;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v0, v3}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :pswitch_3
    check-cast p1, LP/K;

    iget-object v0, p1, LP/K;->a:LP/O;

    iget-object v1, v0, LP/O;->j:LP/K;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, v0, LP/O;->n:La1/g;

    if-eqz p1, :cond_8

    iget-object p1, v0, LP/O;->p:LM0/s0;

    iget v1, p1, LM0/s0;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget-object p1, p1, LM0/s0;->e:Ljava/lang/Object;

    check-cast p1, LP/p;

    iget p1, p1, LP/p;->f:I

    div-int/2addr p1, v1

    int-to-long v1, p1

    iget-object p1, v0, LP/O;->t:LP/E;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LP/E;->a:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    invoke-static {p1, v1, v2}, LJ/W;->L(IJ)J

    move-result-wide v1

    goto :goto_3

    :cond_7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, LP/O;->Z:J

    sub-long v12, v3, v5

    iget-object p1, v0, LP/O;->n:La1/g;

    iget-object v0, v0, LP/O;->p:LM0/s0;

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, LP/p;

    iget v9, v0, LP/p;->f:I

    invoke-static {v1, v2}, LJ/W;->S(J)J

    move-result-wide v10

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    iget-object v8, p1, LP/S;->O0:LP/t;

    iget-object p1, v8, LP/t;->a:Landroid/os/Handler;

    if-eqz p1, :cond_8

    new-instance v7, LP/r;

    invoke-direct/range {v7 .. v13}, LP/r;-><init>(LP/t;IJJ)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 1

    iget v0, p0, LP/B;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeInt32Array;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeInt32Array;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeInt16Array;->T(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeInt16Array;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeFloat64Array;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeFloat64Array;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeFloat32Array;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeFloat32Array;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
