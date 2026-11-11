.class public final synthetic Lorg/mozilla/javascript/typedarrays/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;
.implements Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$TypedArrayConstructable;
.implements Lb0/q;
.implements Lt1/j;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/typedarrays/c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/c;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly0/a;

    iget-wide v0, p1, Ly0/a;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/util/Collection;

    sget v0, Lu1/Z;->h:I

    instance-of v0, p1, Lu1/Z;

    if-eqz v0, :cond_1

    check-cast p1, Lu1/Z;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :cond_1
    new-instance v0, Lu1/X;

    instance-of v3, p1, Lu1/u0;

    if-eqz v3, :cond_2

    move-object v4, p1

    check-cast v4, Lu1/u0;

    check-cast v4, Lu1/I0;

    invoke-virtual {v4}, Lu1/I0;->i()Lu1/b0;

    move-result-object v4

    check-cast v4, Lu1/Y;

    invoke-virtual {v4}, Lu1/Y;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v4, 0xb

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lu1/X;->b:Z

    new-instance v5, Lu1/x0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v4}, Lu1/x0;->d(I)V

    iput-object v5, v0, Lu1/X;->a:Lu1/x0;

    if-eqz v3, :cond_7

    check-cast p1, Lu1/u0;

    instance-of v3, p1, Lu1/I0;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lu1/I0;

    iget-object v3, v3, Lu1/I0;->i:Lu1/x0;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    iget p1, v5, Lu1/x0;->c:I

    iget v4, v3, Lu1/x0;->c:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v5, p1}, Lu1/x0;->a(I)V

    iget p1, v3, Lu1/x0;->c:I

    const/4 v4, -0x1

    if-nez p1, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    :goto_2
    if-ltz v1, :cond_8

    iget p1, v3, Lu1/x0;->c:I

    invoke-static {v1, p1}, LF1/i;->i(II)V

    iget-object p1, v3, Lu1/x0;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    iget v5, v3, Lu1/x0;->c:I

    invoke-static {v1, v5}, LF1/i;->i(II)V

    iget-object v5, v3, Lu1/x0;->b:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5, p1}, Lu1/X;->c(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget p1, v3, Lu1/x0;->c:I

    if-ge v1, p1, :cond_4

    goto :goto_2

    :cond_6
    check-cast p1, Lu1/Z;

    invoke-virtual {p1}, Lu1/Z;->j()Lu1/b0;

    move-result-object v1

    iget-object v3, v0, Lu1/X;->a:Lu1/x0;

    iget v4, v3, Lu1/x0;->c:I

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lu1/x0;->a(I)V

    invoke-virtual {p1}, Lu1/Z;->j()Lu1/b0;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu1/w0;

    iget-object v3, v1, Lu1/w0;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lu1/w0;->a()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lu1/X;->c(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu1/X;->a(Ljava/lang/Object;)Lu1/J;

    goto :goto_4

    :cond_8
    iget-object p1, v0, Lu1/X;->a:Lu1/x0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lu1/X;->a:Lu1/x0;

    iget p1, p1, Lu1/x0;->c:I

    if-nez p1, :cond_9

    sget-object p1, Lu1/I0;->l:Lu1/I0;

    goto :goto_5

    :cond_9
    iput-boolean v2, v0, Lu1/X;->b:Z

    new-instance p1, Lu1/I0;

    iget-object v0, v0, Lu1/X;->a:Lu1/x0;

    invoke-direct {p1, v0}, Lu1/I0;-><init>(Lu1/x0;)V

    :goto_5
    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lx1/a;->g:Lt1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_6
    if-ltz v3, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Lt1/a;->c(C)Z

    move-result v4

    if-nez v4, :cond_a

    move v2, v1

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_d

    if-eq v3, v5, :cond_d

    if-ne v3, v2, :cond_e

    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public construct(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/c;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeUint8ClampedArray;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint8ClampedArray;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeUint8Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint8Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeUint16Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeUint16Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/mozilla/javascript/typedarrays/NativeInt8Array;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/typedarrays/NativeInt8Array;-><init>(Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d()[Lb0/n;
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/c;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw0/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_0
    new-instance v0, Lv0/n;

    sget-object v3, Ly0/k;->a:Ld1/m;

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4}, Lv0/n;-><init>(Ly0/k;I)V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public realThis(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/c;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeUint8ClampedArray;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeUint8ClampedArray;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeUint8Array;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeUint8Array;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeUint32Array;->S(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeUint32Array;

    move-result-object p1

    return-object p1

    :sswitch_2
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeUint16Array;->T(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeUint16Array;

    move-result-object p1

    return-object p1

    :sswitch_3
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeInt8Array;->T(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/typedarrays/NativeInt8Array;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
