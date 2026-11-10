.class public final synthetic LC1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC1/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LC1/b;->a:I

    const-string v1, "contents"

    const-string v2, "thumbnailOverlayTimeStatusRenderer"

    const-string v3, "thumbnailBottomOverlayViewModel"

    const/4 v4, 0x1

    const-string v5, "text"

    const-string v6, "badges"

    const-string v7, "thumbnailBadgeViewModel"

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/time/temporal/ChronoUnit;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :pswitch_0
    check-cast p1, LC1/d;

    const-string v0, "listItemViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, LC1/d;

    invoke-virtual {p1, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, LC1/d;

    invoke-virtual {p1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v6}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, LC1/d;

    invoke-virtual {p1, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, LC1/d;

    const-string v0, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "thumbnailBadges"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, LC1/d;

    invoke-virtual {p1, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v5, v8}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, LC1/d;

    invoke-virtual {p1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v6}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, LC1/d;

    const-string v0, "badgeViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "badgeStyle"

    invoke-virtual {p1, v0, v8}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, LC1/d;

    const-string v0, "clientResource"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "imageName"

    invoke-virtual {p1, v0, v8}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, LC1/d;

    invoke-virtual {p1, v6}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, LC1/d;

    invoke-virtual {p1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, LC1/d;

    sget-object p1, LD2/l;->e:Ljava/util/regex/Pattern;

    sget-object p1, LG2/l;->g:LG2/l;

    return-object p1

    :pswitch_c
    check-cast p1, LC1/d;

    invoke-virtual {p1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, LC1/d;

    const-string v0, ""

    invoke-virtual {p1, v5, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, LC1/d;

    const-string v0, "runs"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, LC1/d;

    const-string v0, "metadataRowRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, LC1/d;

    const-string v0, "macroMarkersListItemRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, LC1/d;

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "macroMarkersListRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    return-object p1

    :pswitch_12
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :pswitch_13
    check-cast p1, Ljava/time/LocalDate;

    new-instance v0, Lw2/b;

    invoke-virtual {p1}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-direct {v0, p1, v4}, Lw2/b;-><init>(Ljava/time/LocalDateTime;Z)V

    return-object v0

    :pswitch_14
    check-cast p1, LC1/d;

    const-string v0, "segmentedLikeDislikeButtonRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "likeButton"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "toggleButtonRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, LC1/d;

    const-string v0, "segmentedLikeDislikeButtonViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "likeButtonViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "toggleButtonViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "defaultButtonViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "buttonViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, LC1/d;

    const-string v0, "value"

    invoke-virtual {p1, v0, v8}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, LC1/d;

    const-string v0, "params"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, LC1/d;

    const/4 v0, -0x1

    const-string v1, "height"

    invoke-virtual {p1, v0, v1}, LC1/d;->c(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Lr2/a;

    const-string v3, "url"

    invoke-virtual {p1, v3, v8}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LC2/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "width"

    invoke-virtual {p1, v0, v5}, LC1/d;->c(ILjava/lang/String;)I

    move-result p1

    if-gtz v1, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xaf

    if-ge v1, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d0

    if-ge v1, v0, :cond_2

    const/4 v4, 0x2

    :cond_2
    :goto_0
    invoke-direct {v2, v3, v1, p1, v4}, Lr2/a;-><init>(Ljava/lang/String;III)V

    return-object v2

    :pswitch_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_1a
    check-cast p1, LC1/d;

    const-string v0, "singleActionEmergencySupportRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Ljava/lang/String;

    sget-object v0, LC2/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    :pswitch_1c
    const-class v0, LC1/d;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
