.class public final synthetic Lcom/brisa/local/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/brisa/local/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 6

    iget v0, p0, Lcom/brisa/local/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->J(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast p1, LG2/b;

    iget v0, p1, LG2/b;->i:I

    if-gtz v0, :cond_0

    iget v0, p1, LG2/b;->j:I

    div-int/lit16 v0, v0, 0x3e8

    :cond_0
    iget-object v1, p1, LG2/b;->k:Ljava/lang/String;

    iget p1, p1, LG2/b;->n:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const p1, 0x186a0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const p1, 0xc350

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    int-to-double v2, p1

    int-to-double v4, v0

    if-eqz v1, :cond_3

    const-string p1, "opus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    return-wide v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
