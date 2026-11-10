.class public final synthetic LC2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC2/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, LC2/d;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lq2/o;

    invoke-virtual {p1}, Lq2/o;->a()I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, LG2/n;

    iget p1, p1, LG2/n;->n:I

    return p1

    :pswitch_1
    check-cast p1, LG2/n;

    iget p1, p1, LG2/n;->m:I

    return p1

    :pswitch_2
    check-cast p1, LG2/m;

    iget-object v0, p1, LG2/m;->k:Ljava/lang/String;

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, LG2/m;->j:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1

    :pswitch_3
    check-cast p1, LC2/g;

    iget p1, p1, LC2/g;->c:I

    return p1

    :pswitch_4
    check-cast p1, LC2/g;

    iget p1, p1, LC2/g;->c:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
