.class public final LD2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# instance fields
.field public final a:LC1/d;

.field public final b:LC1/d;

.field public final c:LC1/d;

.field public final d:LC1/d;

.field public final e:I


# direct methods
.method public constructor <init>(LC1/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/d;->a:LC1/d;

    const-string v0, "contentImage"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "collectionThumbnailViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "primaryThumbnail"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "thumbnailViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    iput-object v0, p0, LD2/d;->b:LC1/d;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v1, "lockupMetadataViewModel"

    invoke-virtual {p1, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    iput-object p1, p0, LD2/d;->c:LC1/d;

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "contentMetadataViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "metadataRows"

    invoke-virtual {p1, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LC1/c;->b(I)LC1/d;

    move-result-object p1

    iput-object p1, p0, LD2/d;->d:LC1/d;

    :try_start_0
    invoke-virtual {p0}, LD2/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LC2/m;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LD2/d;->e:I
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    iput p1, p0, LD2/d;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, LD2/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LD2/d;->d:LC1/d;

    const-string v1, "metadataParts"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "commandRuns"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "onTap"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget v0, p0, LD2/d;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, LD2/d;->d:LC1/d;

    const-string v1, "metadataParts"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v2}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "attachmentRuns"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/d;->d:LC1/d;

    const-string v1, "metadataParts"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 4

    iget v0, p0, LD2/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v0, p0, LD2/d;->b:LC1/d;

    const-string v2, "overlays"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LC1/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LC1/a;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LD2/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LD2/c;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;

    const-string v2, "thumbnailOverlayBadgeViewModel"

    invoke-virtual {v0, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v2, "thumbnailBadges"

    invoke-virtual {v0, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LC1/a;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, LC1/a;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LD2/c;

    invoke-direct {v2, v1}, LD2/c;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;

    const-string v1, "thumbnailBadgeViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "text"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, LJ2/g;->a:I

    const-string v1, "\\D+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get playlist stream count"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/d;->c:LC1/d;

    const-string v1, "title"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    iget v0, p0, LD2/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, LD2/d;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.youtube.com/playlist?list="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, LD2/d;->a:LC1/d;

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "onTap"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final o()Ljava/util/List;
    .locals 2

    iget-object v0, p0, LD2/d;->b:LC1/d;

    const-string v1, "image"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LD2/d;->a:LC1/d;

    const-string v1, "contentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "watchEndpoint"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "playlistId"

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get playlist ID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
