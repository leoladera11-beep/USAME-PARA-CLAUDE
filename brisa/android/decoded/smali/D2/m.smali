.class public final synthetic LD2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LD2/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, LD2/m;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/l;

    iget-wide v2, p1, Lcom/brisa/local/l;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    check-cast p1, LG2/m;

    iget-object p1, p1, LG2/m;->k:Ljava/lang/String;

    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, [Ljava/lang/String;

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_3
    check-cast p1, LC1/d;

    const-string v0, "badgeStyle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "icon"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "sources"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LC1/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LC1/b;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LC1/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
