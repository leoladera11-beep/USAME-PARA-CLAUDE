.class public final LD2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr2/i;

.field public final b:Lv2/a;

.field public c:Z

.field public d:LC1/d;

.field public e:LC1/d;

.field public f:LC1/d;

.field public g:LC1/d;

.field public h:LC1/d;

.field public i:LC1/d;

.field public j:LC1/d;

.field public k:LC1/c;

.field public l:I

.field public m:LG2/l;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr2/i;Lv2/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, LD2/k;->c:Z

    const-string v0, "service is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, LD2/k;->a:Lr2/i;

    const-string p1, "LinkHandler is null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, LD2/k;->b:Lv2/a;

    sget-object p1, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    const-string p2, "downloader is null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static I(LC1/c;)J
    .locals 5

    invoke-virtual {p0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LC1/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC1/d;

    if-eqz p0, :cond_2

    const-string v1, "accessibilityData"

    invoke-virtual {p0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "accessibility"

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "defaultText"

    invoke-virtual {p0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v3, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "no likes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    sget p0, LJ2/g;->a:I

    const-string p0, "\\D+"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    new-instance v1, Lu2/f;

    const-string v2, "Could not parse \""

    const-string v3, "\" as a long"

    invoke-static {v2, v0, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance p0, Lu2/f;

    const-string v0, "Could not get like count from accessibility data"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J(LC1/c;)J
    .locals 4

    invoke-virtual {p0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LC1/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC1/d;

    if-eqz p0, :cond_1

    const-string v1, "accessibilityText"

    invoke-virtual {p0, v1, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    sget v0, LJ2/g;->a:I

    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not parse \""

    const-string v3, "\" as a long"

    invoke-static {v2, p0, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p0, Lu2/f;

    const-string v0, "Could not find buttonViewModel\'s accessibilityText string"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lu2/f;

    const-string v0, "Could not find buttonViewModel object"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, LD2/k;->a()V

    invoke-virtual {p0}, LD2/k;->F()LC1/d;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "avatarStack"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "avatarStackViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "avatars"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "avatarViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, LD2/k;->l:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader avatars"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final B()V
    .locals 5

    iget-object v0, p0, LD2/k;->h:LC1/d;

    const-string v1, "owner.videoOwnerRenderer"

    const-class v2, LC1/d;

    invoke-static {v0, v1, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;

    const-string v1, "subscriberCountText"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v3}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "navigationEndpoint"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    const-class v4, LC1/c;

    invoke-static {v0, v2, v4}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v2, "listItemViewModel"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    const-string v2, "subtitle"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, LJ2/g;->f(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get uploader subscriber count"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final C()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, LD2/k;->a()V

    iget-object v0, p0, LD2/k;->d:LC1/d;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "channelId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LE2/a;->c:LE2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channel/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader url"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D(Ljava/lang/String;)LC1/d;
    .locals 3

    iget-object v0, p0, LD2/k;->e:LC1/d;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC2/k;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, LC2/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC2/f;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LC2/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC1/d;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC1/d;

    return-object p1
.end method

.method public final E()LC1/d;
    .locals 1

    iget-object v0, p0, LD2/k;->g:LC1/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoPrimaryInfoRenderer"

    invoke-virtual {p0, v0}, LD2/k;->D(Ljava/lang/String;)LC1/d;

    move-result-object v0

    iput-object v0, p0, LD2/k;->g:LC1/d;

    return-object v0
.end method

.method public final F()LC1/d;
    .locals 1

    iget-object v0, p0, LD2/k;->h:LC1/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoSecondaryInfoRenderer"

    invoke-virtual {p0, v0}, LD2/k;->D(Ljava/lang/String;)LC1/d;

    move-result-object v0

    iput-object v0, p0, LD2/k;->h:LC1/d;

    return-object v0
.end method

.method public final G()V
    .locals 3

    invoke-virtual {p0}, LD2/k;->E()LC1/d;

    move-result-object v0

    const-string v1, "viewCount"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "videoViewCountRenderer"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, LD2/k;->d:LC1/d;

    const-string v2, "videoDetails"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get view count"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "\\D+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    return-void
.end method

.method public final H()V
    .locals 3

    invoke-virtual {p0}, LD2/k;->F()LC1/d;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "videoOwnerRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    return-void

    :cond_0
    const-string v1, "navigationEndpoint"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    :try_start_0
    const-string v1, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    const-class v2, LC1/c;

    invoke-static {v0, v1, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "listItemViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "attachmentRuns"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, LD2/k;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page is not fetched. Make sure you call fetchPage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;LC1/d;LC2/c;ILjava/lang/String;Ljava/lang/String;)LD2/a;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    const-string v5, "url"

    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, ""

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :cond_0
    const-string v6, "signatureCipher"

    invoke-virtual {v0, v6, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "cipher"

    invoke-virtual {v0, v12, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    return-object v11

    :cond_1
    const-string v12, "&"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, LJ2/c;

    invoke-direct {v13, v8}, LJ2/c;-><init>(I)V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, LD2/m;

    invoke-direct {v13, v9}, LD2/m;-><init>(I)V

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v13, LJ2/c;

    invoke-direct {v13, v9}, LJ2/c;-><init>(I)V

    new-instance v14, LJ2/c;

    invoke-direct {v14, v7}, LJ2/c;-><init>(I)V

    new-instance v15, LJ2/d;

    invoke-direct {v15, v8}, LJ2/d;-><init>(I)V

    invoke-static {v13, v14, v15}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v13, "s"

    invoke-interface {v6, v13, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, LC2/j;->f:Lu2/f;

    if-nez v14, :cond_1d

    invoke-static/range {p1 .. p1}, LC2/j;->a(Ljava/lang/String;)V

    sget-object v14, LC2/j;->c:Ljava/lang/String;

    if-nez v14, :cond_2

    :try_start_0
    sget-object v14, LC2/j;->b:Ljava/lang/String;

    invoke-static {v14}, LC2/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, LC2/j;->c:Ljava/lang/String;
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v2, Lu2/f;

    const-string v3, "Could not get signature parameter deobfuscation JavaScript function"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v2, LC2/j;->f:Lu2/f;

    throw v0

    :goto_1
    sput-object v0, LC2/j;->f:Lu2/f;

    throw v0

    :cond_2
    :goto_2
    :try_start_1
    sget-object v14, LC2/j;->c:Ljava/lang/String;

    const-string v15, "deobfuscate"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v15, v13}, LJ2/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    move-object v13, v10

    :goto_3
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v14, "sp"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    sget-object v6, LC2/j;->a:Ljava/util/HashMap;

    sget-object v6, LC2/p;->a:Ljava/util/regex/Pattern;

    const-string v6, "&n="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "?n="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :catch_2
    move-object v6, v11

    goto :goto_5

    :cond_4
    :try_start_2
    sget-object v6, LC2/p;->a:Ljava/util/regex/Pattern;

    invoke-static {v6, v5, v9}, LJ2/a;->g(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch LJ2/e; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-nez v6, :cond_5

    goto :goto_9

    :cond_5
    sget-object v12, LC2/j;->a:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_6

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_6
    invoke-static/range {p1 .. p1}, LC2/j;->a(Ljava/lang/String;)V

    sget-object v13, LC2/j;->e:Lu2/f;

    if-nez v13, :cond_1c

    sget-object v13, LC2/j;->d:Ljava/lang/String;

    if-nez v13, :cond_7

    :try_start_3
    sget-object v13, LC2/j;->b:Ljava/lang/String;

    invoke-static {v13}, LC2/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, LC2/j;->d:Ljava/lang/String;
    :try_end_3
    .catch Lu2/f; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :goto_6
    new-instance v2, Lu2/f;

    const-string v3, "Could not get throttling parameter deobfuscation JavaScript function"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v2, LC2/j;->e:Lu2/f;

    throw v0

    :goto_7
    sput-object v0, LC2/j;->e:Lu2/f;

    throw v0

    :cond_7
    :goto_8
    :try_start_4
    sget-object v13, LC2/j;->d:Ljava/lang/String;

    const-string v14, "deobfuscate_n_param"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, LJ2/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b

    invoke-virtual {v12, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_9
    const-string v6, "&cpn="

    move-object/from16 v12, p5

    invoke-static {v5, v6, v12}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_8

    const-string v6, "&pot="

    invoke-static {v5, v6, v4}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_8
    const-string v4, "initRange"

    invoke-virtual {v0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    const-string v6, "indexRange"

    invoke-virtual {v0, v6}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v6

    const-string v12, "mimeType"

    invoke-virtual {v0, v12, v10}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "codecs"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v9

    goto :goto_a

    :cond_9
    move-object v12, v10

    :goto_a
    const-string v13, "bitrate"

    invoke-virtual {v0, v8, v13}, LC1/d;->c(ILjava/lang/String;)I

    move-result v13

    iput v13, v2, LC2/c;->j:I

    const-string v13, "width"

    invoke-virtual {v0, v8, v13}, LC1/d;->c(ILjava/lang/String;)I

    move-result v13

    iput v13, v2, LC2/c;->k:I

    const-string v13, "height"

    invoke-virtual {v0, v8, v13}, LC1/d;->c(ILjava/lang/String;)I

    move-result v13

    iput v13, v2, LC2/c;->l:I

    const-string v13, "start"

    const-string v14, "-1"

    invoke-virtual {v4, v13, v14}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v15, "end"

    invoke-virtual {v4, v15, v14}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v6, v13, v14}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v6, v15, v14}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v4, "quality"

    invoke-virtual {v0, v4, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iput-object v12, v2, LC2/c;->m:Ljava/lang/String;

    const-string v4, "isDrc"

    invoke-virtual {v0, v4}, LC1/d;->b(Ljava/lang/String;)Z

    const-string v4, "lastModified"

    invoke-virtual {v0, v4, v14}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const-string v4, "xtags"

    invoke-virtual {v0, v4, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LC2/c;->q:Ljava/lang/String;

    iget-object v4, v1, LD2/k;->m:LG2/l;

    sget-object v6, LG2/l;->g:LG2/l;

    sget-object v12, LG2/l;->h:LG2/l;

    if-eq v4, v6, :cond_a

    if-ne v4, v12, :cond_b

    :cond_a
    const-string v4, "targetDurationSec"

    invoke-virtual {v0, v8, v4}, LC1/d;->c(ILjava/lang/String;)I

    :cond_b
    const/4 v4, -0x1

    if-eq v3, v7, :cond_16

    const/4 v6, 0x3

    if-ne v3, v6, :cond_c

    goto/16 :goto_e

    :cond_c
    if-ne v3, v9, :cond_18

    const-string v3, "audioSampleRate"

    invoke-virtual {v0, v3, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v3, "audioChannels"

    invoke-virtual {v0, v7, v3}, LC1/d;->c(ILjava/lang/String;)I

    const-string v3, "audioTrack"

    invoke-virtual {v0, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_15

    iput-object v13, v2, LC2/c;->n:Ljava/lang/String;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v4, :cond_d

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LJ2/a;->c(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v13

    new-instance v14, LD2/f;

    invoke-direct {v14, v2, v7}, LD2/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_d
    iget-object v13, v2, LC2/c;->q:Ljava/lang/String;

    sget-object v14, LC2/m;->a:Ljava/lang/String;

    if-nez v13, :cond_e

    :catch_5
    :goto_b
    move v7, v8

    goto/16 :goto_d

    :cond_e
    :try_start_5
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, LF2/c;->f([B)LF2/c;

    move-result-object v13

    iget-object v13, v13, LF2/c;->e:LB1/C;

    invoke-interface {v13}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v14, LC1/a;

    const/4 v15, 0x4

    invoke-direct {v14, v15}, LC1/a;-><init>(I)V

    invoke-interface {v13, v14}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v13

    new-instance v14, LC1/b;

    invoke-direct {v14, v6}, LC1/b;-><init>(I)V

    invoke-virtual {v13, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_5
    .catch LB1/v; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v13, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v14, "original"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_c

    :cond_10
    move v4, v15

    goto :goto_c

    :sswitch_1
    const-string v14, "dubbed-auto"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_c

    :cond_11
    move v4, v6

    goto :goto_c

    :sswitch_2
    const-string v14, "secondary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    :cond_12
    move v4, v7

    goto :goto_c

    :sswitch_3
    const-string v14, "dubbed"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    goto :goto_c

    :cond_13
    move v4, v9

    goto :goto_c

    :sswitch_4
    const-string v14, "descriptive"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    goto :goto_c

    :cond_14
    move v4, v8

    :goto_c
    packed-switch v4, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    move v7, v9

    goto :goto_d

    :pswitch_1
    move v7, v15

    goto :goto_d

    :pswitch_2
    move v7, v6

    :goto_d
    :pswitch_3
    iput v7, v2, LC2/c;->s:I

    :cond_15
    invoke-virtual {v0, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v3

    const-string v4, "displayName"

    invoke-virtual {v3, v4, v11}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LC2/c;->o:Ljava/lang/String;

    const-string v4, "isAutoDubbed"

    invoke-virtual {v3, v4}, LC1/d;->b(Ljava/lang/String;)Z

    goto :goto_f

    :cond_16
    :goto_e
    const-string v3, "fps"

    invoke-virtual {v0, v8, v3}, LC1/d;->c(ILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_17

    move v4, v3

    :cond_17
    iput v4, v2, LC2/c;->i:I

    :cond_18
    :goto_f
    const-string v3, "contentLength"

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const-string v3, "approxDurationMs"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    new-instance v3, LD2/a;

    invoke-direct {v3, v5, v2}, LD2/a;-><init>(Ljava/lang/String;LC2/c;)V

    iget-object v2, v1, LD2/k;->m:LG2/l;

    sget-object v4, LG2/l;->f:LG2/l;

    if-ne v2, v4, :cond_19

    const-string v2, "type"

    invoke-virtual {v0, v2, v10}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FORMAT_STREAM_TYPE_OTF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v9

    iput-boolean v0, v3, LD2/a;->g:Z

    goto :goto_10

    :cond_19
    if-eq v2, v12, :cond_1a

    move v8, v9

    :cond_1a
    iput-boolean v8, v3, LD2/a;->g:Z

    :goto_10
    return-object v3

    :catch_6
    move-exception v0

    goto :goto_11

    :cond_1b
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Extracted n-parameter is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_11
    new-instance v2, Lu2/f;

    const-string v3, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    throw v13

    :catch_7
    move-exception v0

    new-instance v2, Lu2/f;

    const-string v3, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1d
    throw v14

    :sswitch_data_0
    .sparse-switch
        -0x66ca7b34 -> :sswitch_4
        -0x4ebc9b10 -> :sswitch_3
        -0x30bb8e8c -> :sswitch_2
        -0x1e91cf94 -> :sswitch_1
        0x523289d1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 3

    iget v0, p0, LD2/k;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LD2/k;->F()LC1/d;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, LD2/k;->l:I

    return v0
.end method

.method public final d()LG2/d;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, LD2/k;->a()V

    invoke-virtual {v0}, LD2/k;->F()LC1/d;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v4

    sget-object v5, LG2/c;->e:LG2/c;

    if-nez v4, :cond_0

    new-instance v2, LG2/d;

    invoke-direct {v2, v1, v5}, LG2/d;-><init>(Ljava/lang/String;LG2/c;)V

    return-object v2

    :cond_0
    invoke-virtual {v0}, LD2/k;->F()LC1/d;

    move-result-object v1

    const-string v4, "attributedDescription"

    invoke-virtual {v1, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    sget-object v4, LC2/h;->a:Ljava/util/regex/Pattern;

    invoke-static {v1}, LJ2/g;->d(LC1/d;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    :goto_0
    move-object v1, v7

    goto/16 :goto_6

    :cond_1
    const-string v4, "content"

    invoke-virtual {v1, v4, v7}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "commandRuns"

    invoke-virtual {v1, v10}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v10

    invoke-virtual {v10}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, LC2/e;

    invoke-direct {v11, v8, v9, v3}, LC2/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v10, "styleRuns"

    invoke-virtual {v1, v10}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v1

    invoke-virtual {v1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v10, LC2/e;

    invoke-direct {v10, v8, v9, v6}, LC2/e;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, LC2/d;

    invoke-direct {v1, v6}, LC2/d;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, LC2/d;

    invoke-direct {v1, v3}, LC2/d;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v1, 0xa0

    const/16 v3, 0x20

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v6

    move v12, v11

    move v13, v12

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LC2/g;

    iget v14, v14, LC2/g;->c:I

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LC2/g;

    iget v15, v15, LC2/g;->c:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LC2/g;

    iget v14, v14, LC2/g;->c:I

    :goto_2
    invoke-virtual {v1, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lo2/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LC2/g;

    iget v12, v12, LC2/g;->c:I

    if-ne v12, v14, :cond_8

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LC2/g;

    add-int/lit8 v11, v11, 0x1

    :goto_3
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LC2/g;

    iget-object v6, v15, LC2/g;->a:Ljava/lang/String;

    iget-object v7, v15, LC2/g;->b:Ljava/lang/String;

    move-object/from16 v16, v9

    iget-object v9, v15, LC2/g;->d:Ljava/util/function/Function;

    move/from16 v17, v11

    iget-object v11, v12, LC2/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v9, :cond_4

    iget v6, v15, LC2/g;->e:I

    if-ltz v6, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    iget v12, v15, LC2/g;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v6, v11, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v16

    move/from16 v11, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v9

    move/from16 v17, v11

    :goto_4
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LC2/g;

    iget-object v7, v6, LC2/g;->a:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move/from16 v11, v17

    goto :goto_5

    :cond_8
    move-object/from16 v16, v9

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LC2/g;

    iget-object v7, v6, LC2/g;->a:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iput v7, v6, LC2/g;->e:I

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    :goto_5
    move v12, v14

    move-object/from16 v9, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "<br>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "  "

    const-string v4, " &nbsp;"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v2, LG2/d;

    invoke-direct {v2, v1, v5}, LG2/d;-><init>(Ljava/lang/String;LG2/c;)V

    return-object v2

    :cond_a
    iget-object v1, v0, LD2/k;->d:LC1/d;

    const-string v3, "videoDetails"

    invoke-virtual {v1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v3, "shortDescription"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, v0, LD2/k;->i:LC1/d;

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v1

    :cond_b
    sget-object v2, LG2/c;->f:LG2/c;

    invoke-static {v1, v2}, LG2/d;->u(Ljava/lang/String;LG2/c;)LG2/d;

    move-result-object v1

    return-object v1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 15

    const-string v0, "$M"

    const-string v1, "playerLiveStoryboardSpecRenderer"

    :try_start_0
    iget-object v2, p0, LD2/k;->d:LC1/d;

    const-string v3, "storyboards"

    invoke-virtual {v2, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "playerStoryboardSpecRenderer"

    :goto_0
    invoke-virtual {v2, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const-string v2, "spec"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void

    :cond_2
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v6

    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_7

    aget-object v7, v1, v5

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/4 v8, 0x5

    aget-object v9, v7, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "$L"

    add-int/lit8 v13, v5, -0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "$N"

    const/4 v14, 0x6

    aget-object v14, v7, v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    aget-object v13, v7, v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "&sigh="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    int-to-double v13, v9

    mul-int/2addr v10, v11

    int-to-double v9, v10

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v2

    :goto_2
    if-ge v11, v9, :cond_5

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    :cond_5
    new-instance v9, LG2/e;

    aget-object v10, v7, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v10, v7, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    return-void

    :goto_4
    new-instance v1, Lu2/d;

    const-string v2, "Could not get frames"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, LD2/k;->a()V

    new-instance v0, LJ2/b;

    iget-object v1, p0, LD2/k;->f:LC1/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJ2/b;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ2/b;

    iget-object v3, v1, LJ2/b;->e:Ljava/io/Serializable;

    if-eqz v3, :cond_0

    check-cast v3, LC1/d;

    const-string v4, "hlsManifestUrl"

    invoke-virtual {v3, v4, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, LJ2/b;->f:Ljava/io/Serializable;

    if-nez v0, :cond_2

    const-string v0, "?"

    invoke-static {v3, v0}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?pot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final i(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 7

    :try_start_0
    iget-object v0, p0, LD2/k;->b:Lv2/a;

    iget-object v0, v0, Lv2/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LJ2/b;

    iget-object v3, p0, LD2/k;->f:LC1/d;

    new-instance v4, LJ2/b;

    iget-object v5, p0, LD2/k;->n:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LJ2/b;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-direct {v2, v3, v4}, LJ2/b;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LD2/h;

    invoke-direct {v3, p0, v0, p2, p1}, LD2/h;-><init>(LD2/k;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LD2/f;

    const/4 p4, 0x1

    invoke-direct {p2, v1, p4}, LD2/f;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Lu2/f;

    const-string p4, "Could not get "

    const-string v0, " streams"

    invoke-static {p4, p3, v0}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()J
    .locals 4

    invoke-virtual {p0}, LD2/k;->a()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LD2/k;->d:LC1/d;

    const-string v2, "videoDetails"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v2, "lengthSeconds"

    invoke-virtual {v1, v2, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    iget-object v1, p0, LD2/k;->f:LC1/d;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC1/d;

    const-string v3, "adaptiveFormats"

    invoke-virtual {v2, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v2

    const-string v3, "approxDurationMs"

    invoke-virtual {v2, v3, v0}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get duration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, LD2/k;->F()LC1/d;

    move-result-object v0

    const-string v1, "metadataRowContainer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "metadataRowContainerRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "rows"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v2, "metadataRowRenderer"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "contents"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v2

    invoke-virtual {v2, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v2

    invoke-static {v2, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Licence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    invoke-virtual {p0}, LD2/k;->a()V

    iget-object v0, p0, LD2/k;->d:LC1/d;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "allowRatings"

    invoke-virtual {v0, v1}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LD2/k;->E()LC1/d;

    move-result-object v0

    const-string v1, "videoActions"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "menuRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "topLevelButtons"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, LD2/k;->J(LC1/c;)J
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :try_start_1
    invoke-static {v0}, LD2/k;->I(LC1/c;)J
    :try_end_1
    .catch Lu2/f; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get like count"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final n()V
    .locals 14

    iget-object v0, p0, LD2/k;->e:LC1/d;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "twoColumnWatchNextResults"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC1/d;

    const-string v4, "itemSectionRenderer"

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v3

    invoke-virtual {v3, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LC1/d;

    const-string v5, "infoPanelContentRenderer"

    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Could not get metadata info URL"

    const-string v8, "Could not get metadata info link text."

    const/4 v9, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    new-instance v6, Lr2/e;

    invoke-direct {v6}, Lr2/e;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "paragraphs"

    invoke-virtual {v5, v11}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "<br>"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    check-cast v12, LC1/d;

    invoke-static {v12, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, LG2/c;->e:LG2/c;

    invoke-static {v10, v11}, LG2/d;->u(Ljava/lang/String;LG2/c;)LG2/d;

    const-string v10, "sourceEndpoint"

    invoke-virtual {v5, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5, v10}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v10

    invoke-static {v10}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-static {v10}, LC2/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lr2/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "inlineSource"

    invoke-virtual {v5, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5, v10}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    invoke-static {v5, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string v10, "disclaimer"

    invoke-virtual {v5, v10}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    invoke-static {v5, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v6, Lr2/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v0, Lu2/f;

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    new-instance v1, Lu2/f;

    invoke-direct {v1, v7, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v5, "clarificationRenderer"

    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    new-instance v6, Lr2/e;

    invoke-direct {v6}, Lr2/e;-><init>()V

    const-string v10, "contentTitle"

    invoke-virtual {v5, v10}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v10

    invoke-static {v10, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v10

    const-string v11, "text"

    invoke-virtual {v5, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v12

    invoke-static {v12, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_c

    if-eqz v12, :cond_c

    const-string v10, "actionButton"

    invoke-virtual {v5, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v5, v10}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v10

    const-string v12, "buttonRenderer"

    invoke-virtual {v10, v12}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v10

    :try_start_1
    const-string v12, "command"

    invoke-virtual {v10, v12}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v12

    invoke-static {v12}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/net/URL;

    invoke-static {v12}, LC2/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v12, v6, Lr2/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v10, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v7

    invoke-static {v7, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v8, v6, Lr2/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    new-instance v0, Lu2/f;

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    new-instance v1, Lu2/f;

    invoke-direct {v1, v7, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_5
    const-string v7, "secondaryEndpoint"

    invoke-virtual {v5, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "secondarySource"

    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v7

    invoke-static {v7}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-static {v7}, LC2/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :try_start_2
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v10, LC2/m;->g:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, LC2/l;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v11}, LC2/l;-><init>(ILjava/io/Serializable;)V

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v10
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catch_4
    move v10, v9

    :goto_6
    if-nez v10, :cond_b

    :try_start_3
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lr2/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    invoke-static {v5, v9}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    move-object v7, v5

    :goto_7
    iget-object v5, v6, Lr2/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get metadata info secondary URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    :goto_8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    new-instance v0, Lu2/f;

    const-string v1, "Could not extract clarification renderer content"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_9
    const-string v5, "emergencyOneboxRenderer"

    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, LC1/a;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, LC1/a;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, LC1/b;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, LC1/b;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC1/d;

    new-instance v6, Lr2/e;

    invoke-direct {v6}, Lr2/e;-><init>()V

    const-string v7, "title"

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v8

    invoke-static {v8, v7}, LC2/m;->k(LC1/d;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "actionText"

    invoke-virtual {v5, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v7

    const-string v8, "action"

    invoke-static {v7, v8}, LC2/m;->k(LC1/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c

    :cond_e
    const-string v8, "contacts"

    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v5, v8}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v8

    move v10, v9

    :goto_b
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ge v10, v11, :cond_f

    invoke-virtual {v8, v10}, LC1/c;->b(I)LC1/d;

    move-result-object v11

    invoke-virtual {v11, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v11

    const-string v12, "contacts.actionText"

    invoke-static {v11, v12}, LC2/m;->k(LC1/d;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    const-string v7, "detailsText"

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v7

    const-string v8, "details"

    invoke-static {v7, v8}, LC2/m;->k(LC1/d;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "navigationText"

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v7

    const-string v8, "urlText"

    invoke-static {v7, v8}, LC2/m;->k(LC1/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lr2/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "navigationEndpoint"

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    invoke-static {v5}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    :try_start_4
    new-instance v7, Ljava/net/URL;

    invoke-static {v5}, LJ2/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lr2/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_6
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not parse emergency renderer url"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Lu2/f;

    const-string v1, "Could not extract emergency renderer url"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lu2/f;

    const-string v1, "Could not extract any meta info from emergency renderer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD2/k;->b:Lv2/a;

    iget-object v0, v0, Lv2/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final p()LR0/v;
    .locals 5

    const-string v0, "secondaryResults"

    invoke-virtual {p0}, LD2/k;->a()V

    invoke-virtual {p0}, LD2/k;->c()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lr2/f;

    iget-object v2, p0, LD2/k;->a:Lr2/i;

    iget v2, v2, Lr2/i;->a:I

    invoke-direct {v1, v2}, Lr2/f;-><init>(I)V

    iget-object v2, p0, LD2/k;->e:LC1/d;

    const-string v3, "contents"

    invoke-virtual {v2, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "twoColumnWatchNextResults"

    invoke-virtual {v2, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {p0}, LD2/k;->x()LW0/c;

    move-result-object v2

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, LD2/e;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, LD2/e;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LC1/a;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, LC1/a;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LD2/f;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, LD2/f;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get related videos"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final q()V
    .locals 9

    iget-object v0, p0, LD2/k;->e:LC1/d;

    const-string v1, "engagementPanels"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, LD2/k;->e:LC1/d;

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void

    :cond_1
    invoke-virtual {p0}, LD2/k;->k()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, LC1/b;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, LC1/b;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LC1/d;

    const-string v6, "onTap"

    invoke-virtual {v5, v6}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v6

    const-string v7, "watchEndpoint"

    invoke-virtual {v6, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v6

    const-string v7, "startTimeSeconds"

    const/4 v8, -0x1

    invoke-virtual {v6, v8, v7}, LC1/d;->c(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_5

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "title"

    invoke-virtual {v5, v6}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, LG2/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, p0, LD2/k;->b:Lv2/a;

    iget-object v7, v7, Lv2/a;->f:Ljava/lang/String;

    const-string v7, "thumbnail"

    invoke-virtual {v5, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    const-string v7, "thumbnails"

    invoke-virtual {v5, v7}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, LC1/c;->b(I)LC1/d;

    move-result-object v5

    const-string v7, "url"

    invoke-virtual {v5, v7, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LC2/m;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lu2/f;

    const-string v1, "Could not get stream segment title."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lu2/f;

    const-string v1, "Could not get stream segment start time."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public final t()Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, LD2/k;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LD2/k;->j:LC1/d;

    const-string v2, "captionTracks"

    invoke-virtual {v1, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v4

    const-string v5, "languageCode"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "baseUrl"

    invoke-virtual {v4, v5, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "vssId"

    invoke-virtual {v4, v7, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    const-string v7, "a."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v6, "&fmt=[^&]*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&tlang=[^&]*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v4, v6}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-static {v4, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v12

    const-string v4, "&fmt=ttml"

    invoke-static {v5, v4}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v10, Lr2/d;->l:Lr2/d;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ttml"

    const-string v5, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, LG2/m;

    const/4 v9, 0x1

    invoke-direct/range {v7 .. v13}, LG2/m;-><init>(Ljava/lang/String;ZLr2/d;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No valid content was specified. Please specify a valid one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public final v()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LD2/k;->d:LC1/d;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "keywords"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LD2/k;->i:LC1/d;

    const-string v1, "uploadDate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LD2/k;->i:LC1/d;

    const-string v1, "publishDate"

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, LD2/k;->i:LC1/d;

    const-string v1, "liveBroadcastDetails"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "endTimestamp"

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "startTimestamp"

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, LD2/k;->a()V

    iget-object v0, p0, LD2/k;->m:LG2/l;

    sget-object v1, LG2/l;->g:LG2/l;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0}, LD2/k;->E()LC1/d;

    move-result-object v0

    const-string v1, "dateText"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v2

    :cond_5
    const-string v1, "Premiered on "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v1, "Premiered "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public final x()LW0/c;
    .locals 9

    iget-object v0, p0, LD2/k;->a:Lr2/i;

    invoke-virtual {v0}, Lr2/i;->a()Lw2/c;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v2, v0, Lw2/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lw2/c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "_"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v4

    :goto_1
    invoke-static {v2, v3}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, LH2/a;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH2/b;

    const/4 v6, 0x0

    if-nez v3, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    new-instance v7, LW0/c;

    const/16 v8, 0x16

    invoke-direct {v7, v3, v1, v8}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_2
    if-eqz v7, :cond_3

    return-object v7

    :cond_3
    invoke-virtual {v0}, Lw2/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH2/b;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v6, LW0/c;

    const/16 v3, 0x16

    invoke-direct {v6, v2, v1, v3}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_3
    if-eqz v6, :cond_5

    return-object v6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Localization is not supported (\""

    const-string v3, "\")"

    invoke-static {v2, v0, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final y()V
    .locals 6

    const-string v0, "((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)"

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, LD2/k;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch LJ2/e; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "(\\d+)s"

    invoke-static {v2, v0, v3}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v4, "(\\d+)m"

    invoke-static {v4, v0, v3}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v5, "(\\d+)h"

    invoke-static {v5, v0, v3}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-object v4, v1

    goto :goto_0

    :catch_1
    move-object v2, v1

    move-object v4, v2

    :catch_2
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "t=(\\d+)"

    invoke-static {v2, v0, v3}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lu2/f; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :goto_4
    new-instance v1, Lu2/f;

    const-string v2, "Could not get timestamp."

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    :cond_4
    :goto_5
    return-void
.end method

.method public final z()V
    .locals 5

    invoke-virtual {p0}, LD2/k;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Lw2/b;

    invoke-static {v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lw2/b;-><init>(Ljava/time/Instant;Z)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lu2/f;

    const-string v3, "Could not parse date: \""

    const-string v4, "\""

    invoke-static {v3, v0, v4}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Lu2/f; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    const-string v2, "en"

    sget-object v3, LH2/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH2/b;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, LW0/c;

    const/16 v4, 0x16

    invoke-direct {v3, v2, v1, v4}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v3

    :goto_0
    invoke-virtual {v1, v0}, LW0/c;->w(Ljava/lang/String;)Lw2/b;
    :try_end_2
    .catch Lu2/f; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    const-string v1, "MMM dd, yyyy"

    invoke-static {v0, v1}, LD2/k;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "dd MMM yyyy"

    invoke-static {v0, v1}, LD2/k;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v2, LC1/b;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, LC1/b;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LD2/i;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LD2/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/b;

    :cond_2
    :goto_2
    return-void
.end method
