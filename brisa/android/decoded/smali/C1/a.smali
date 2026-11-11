.class public final synthetic LC1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC1/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, LC1/a;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "BADGE_MEMBERS_ONLY"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    const-string v0, "LIVE"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, LC1/d;

    const-string v0, "badgeStyle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, LC1/d;

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "label"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Premium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, LC1/d;

    const-string v0, "style"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SHORTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "icon"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "iconType"

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "shorts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_4
    check-cast p1, LC1/d;

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, LC1/d;

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BADGE_STYLE_TYPE_LIVE_NOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LIVE NOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_7
    check-cast p1, LC1/d;

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, LC1/d;

    const-string v0, "thumbnailOverlayTimeStatusRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LIVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, LC1/d;

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BADGE_STYLE_TYPE_MEMBERS_ONLY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Ljava/lang/String;

    const-string v0, "Age-restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, LC1/d;

    const-string v0, "engagementPanelSectionListRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "panelIdentifier"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "engagement-panel-macro-markers-description-chapters"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_c
    check-cast p1, LD2/a;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_d
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_e
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_f
    check-cast p1, LC1/d;

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "icon"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "iconType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PRIVACY_UNLISTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_10
    check-cast p1, Lr2/c;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_11
    check-cast p1, LC1/d;

    invoke-static {p1}, LJ2/g;->d(LC1/d;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_12
    check-cast p1, LC1/d;

    invoke-static {p1}, LJ2/g;->d(LC1/d;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_13
    check-cast p1, LC1/d;

    const-string v0, "thumbnailBadgeViewModel"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_14
    check-cast p1, LC1/d;

    const-string v0, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_15
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_16
    check-cast p1, LC1/d;

    const-string v0, "url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_17
    check-cast p1, LC1/d;

    const-string v0, "metadataBadgeRenderer"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BADGE_STYLE_TYPE_VERIFIED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 p1, 0x1

    :goto_6
    return p1

    :pswitch_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_19
    check-cast p1, LC1/d;

    const-string v0, "clientResource"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "imageName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CHECK_CIRCLE_FILLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "AUDIO_BADGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "MUSIC_FILLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 p1, 0x1

    :goto_8
    return p1

    :pswitch_1a
    check-cast p1, LC1/d;

    const-string v0, "element"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "imageType"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "image"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "sources"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LC1/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :pswitch_1b
    instance-of v0, p1, LC1/d;

    if-eqz v0, :cond_9

    check-cast p1, LC1/d;

    const-string v0, "singleActionEmergencySupportRenderer"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_9

    :cond_9
    const/4 p1, 0x0

    :goto_9
    return p1

    :pswitch_1c
    const-class v0, LC1/d;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

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
