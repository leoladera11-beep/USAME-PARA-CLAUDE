.class public final LD2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/j;


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:LC1/d;

.field public final b:LW0/c;

.field public c:LG2/l;

.field public d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\d,]+) views$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LD2/l;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(LC1/d;LW0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/l;->a:LC1/d;

    iput-object p2, p0, LD2/l;->b:LW0/c;

    return-void
.end method

.method public static r(Ljava/lang/String;Z)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no views"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, LJ2/g;->f(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    sget p1, LJ2/g;->a:I

    const-string p1, "\\D+"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    const-string v0, "longBylineText"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "runs"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v4, "navigationEndpoint"

    invoke-virtual {v0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "ownerText"

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "shortBylineText"

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader url"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "ownerBadges"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    const-string v0, "longBylineText"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "ownerText"

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "shortBylineText"

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final d()LG2/l;
    .locals 4

    iget-object v0, p0, LD2/l;->c:LG2/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "badges"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LC1/a;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, LC1/a;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "thumbnailOverlays"

    invoke-virtual {v1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, LC1/b;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LG2/l;->f:LG2/l;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG2/l;

    iput-object v0, p0, LD2/l;->c:LG2/l;

    return-object v0
.end method

.method public final e()J
    .locals 6

    invoke-virtual {p0}, LD2/l;->t()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, LD2/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "viewCountText"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v0, v2}, LD2/l;->r(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_1
    invoke-virtual {p0}, LD2/l;->d()LG2/l;

    move-result-object v0

    sget-object v3, LG2/l;->g:LG2/l;

    if-eq v0, v3, :cond_2

    :try_start_1
    invoke-virtual {p0}, LD2/l;->q()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :cond_2
    const-string v0, "videoInfo"

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v3, "runs"

    invoke-virtual {v0, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v3, "text"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LD2/l;->r(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v0

    :catch_2
    :cond_3
    const-string v0, "shortViewCountText"

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0, v4}, LD2/l;->r(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v0

    :catch_3
    :cond_4
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, LD2/l;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LD2/l;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Private video]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LD2/l;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Deleted video]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getDuration()J
    .locals 6

    invoke-virtual {p0}, LD2/l;->d()LG2/l;

    move-result-object v0

    sget-object v1, LG2/l;->g:LG2/l;

    const-wide/16 v2, -0x1

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    const-string v0, "lengthText"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "lengthSeconds"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "thumbnailOverlays"

    invoke-virtual {v1, v4}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v1

    invoke-virtual {v1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LC1/a;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, LC1/a;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LC1/b;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, LC1/b;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, LC1/a;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, LC1/a;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static {v4}, LC2/m;->r(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LD2/l;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v2

    :cond_2
    new-instance v0, Lu2/f;

    const-string v1, "Could not get duration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, LC2/m;->r(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "title"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, LJ2/g;->d(LC1/d;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "runs"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "videoId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LE2/c;->d:LE2/c;

    invoke-virtual {v1, v0}, LE2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final h()Ljava/util/List;
    .locals 3

    const-string v0, "channelThumbnailSupportedRenderers"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-class v2, LC1/c;

    if-eqz v0, :cond_0

    const-string v0, "channelThumbnailSupportedRenderers.channelThumbnailWithLinkRenderer.thumbnail.thumbnails"

    invoke-static {v1, v0, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "channelThumbnail"

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "channelThumbnail.thumbnails"

    invoke-static {v1, v0, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, LD2/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LD2/l;->t()Z

    return-void
.end method

.method public final k()V
    .locals 5

    const-string v0, "navigationEndpoint"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    :try_start_0
    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "commandMetadata"

    invoke-virtual {v2, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "webCommandMetadata"

    invoke-virtual {v2, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "webPageType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WEB_PAGE_TYPE_SHORTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "reelWatchEndpoint"

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    const-string v0, "thumbnailOverlays"

    invoke-virtual {v1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    new-instance v1, Lu2/f;

    const-string v2, "Could not determine if this is short-form content"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final l()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, LD2/l;->d()LG2/l;

    move-result-object v0

    sget-object v1, LG2/l;->g:LG2/l;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, LD2/l;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LD2/l;->p()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "publishedTimeText"

    iget-object v1, p0, LD2/l;->a:LC1/d;

    invoke-virtual {v1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "videoInfo"

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "runs"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "detailedMetadataSnippets"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "snippetText"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v3}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "descriptionSnippet"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0, v3}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final n()Lw2/b;
    .locals 4

    invoke-virtual {p0}, LD2/l;->d()LG2/l;

    move-result-object v0

    sget-object v1, LG2/l;->g:LG2/l;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, LD2/l;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lw2/b;

    invoke-virtual {p0}, LD2/l;->p()Ljava/time/Instant;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/b;-><init>(Ljava/time/Instant;Z)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, LD2/l;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LD2/l;->b:LW0/c;

    if-eqz v1, :cond_2

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {v1, v0}, LW0/c;->w(Ljava/lang/String;)Lw2/b;

    move-result-object v0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get upload date"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v2
.end method

.method public final o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LD2/l;->a:LC1/d;

    invoke-static {v0}, LC2/m;->l(LC1/d;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/time/Instant;
    .locals 4

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "upcomingEventData"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "startTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Could not parse date from premiere: \""

    const-string v3, "\""

    invoke-static {v2, v0, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lu2/f;

    invoke-direct {v2, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final q()J
    .locals 4

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "title"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "accessibilityData"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "label"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "no views"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v1, LD2/l;->e:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, LJ2/a;->g(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, LJ2/g;->a:I

    const-string v1, "\\D+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, LD2/l;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "upcomingEventData"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LD2/l;->d:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, LD2/l;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, LD2/l;->a:LC1/d;

    const-string v1, "badges"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
