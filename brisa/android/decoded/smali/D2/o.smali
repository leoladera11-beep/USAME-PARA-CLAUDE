.class public final LD2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/j;


# static fields
.field public static final h:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final a:LC1/d;

.field public final b:LW0/c;

.field public final c:LC1/c;

.field public d:LG2/l;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:LC/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dd/MM/yyyy, HH:mm"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, LD2/o;->h:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(LC1/d;LW0/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/o;->a:LC1/d;

    iput-object p2, p0, LD2/o;->b:LW0/c;

    const-string p2, "metadata"

    invoke-virtual {p1, p2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v0, "lockupMetadataViewModel"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-virtual {p1, p2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string p2, "contentMetadataViewModel"

    invoke-virtual {p1, p2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string p2, "metadataRows"

    invoke-virtual {p1, p2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    iput-object p1, p0, LD2/o;->c:LC1/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, LD2/o;->p()LC/b;

    move-result-object v0

    invoke-virtual {v0}, LC/b;->W0()LC1/d;

    move-result-object v0

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

    const-string v1, "browseEndpoint"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v2, "browseId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "UC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, LE2/a;->c:LE2/a;

    const-string v1, "channel/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "canonicalBaseUrl"

    invoke-virtual {v1, v2, v3}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "/"

    if-nez v2, :cond_2

    sget-object v0, LE2/a;->c:LE2/a;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lv2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "commandMetadata"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "webCommandMetadata"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, v3}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, LE2/a;->c:LE2/a;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v0}, Lv2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader url"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Z
    .locals 3

    invoke-virtual {p0}, LD2/o;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

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

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader verified status: no metadata row"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, LD2/o;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader name: no metadata row"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()LG2/l;
    .locals 4

    iget-object v0, p0, LD2/o;->d:LG2/l;

    if-nez v0, :cond_2

    const-string v0, "contentImage.thumbnailViewModel.overlays"

    const-class v1, LC1/c;

    iget-object v2, p0, LD2/o;->a:LC1/d;

    invoke-static {v2, v0, v1}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LC1/b;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, LC1/b;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LC1/b;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, LC1/b;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LD2/m;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LD2/m;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    sget-object v2, LG2/l;->g:LG2/l;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v3, 0x1a

    invoke-direct {v1, v3}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v3, 0x1b

    invoke-direct {v1, v3}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    invoke-direct {v1, v3}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, LG2/l;->f:LG2/l;

    :goto_0
    iput-object v2, p0, LD2/o;->d:LG2/l;

    :cond_2
    iget-object v0, p0, LD2/o;->d:LG2/l;

    return-object v0
.end method

.method public final e()J
    .locals 3

    invoke-virtual {p0}, LD2/o;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LD2/o;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, LD2/o;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LD2/o;->t()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

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

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no views"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recommended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_4
    invoke-static {v0}, LJ2/g;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    new-instance v0, Lu2/f;

    const-string v1, "Could not get view count"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lu2/f;

    const-string v1, "Could not get view count: no metadata part in the metadata parts array"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, LD2/o;->t()Z

    new-instance v0, Lu2/f;

    const-string v1, "Could not get view count: no metadata part from metadata rows"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, LD2/o;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Private video]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[Deleted video]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, LD2/o;->t()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_6

    invoke-virtual {p0}, LD2/o;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "contentImage.thumbnailViewModel.overlays"

    const-class v3, LC1/c;

    iget-object v4, p0, LD2/o;->a:LC1/d;

    invoke-static {v4, v0, v3}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, LC1/b;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, LC1/b;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, LC1/b;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, LC1/b;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v5, ".*\\d.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v4}, LC2/m;->r(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    return-wide v1

    :cond_5
    new-instance v0, Lu2/f;

    const-string v1, "Could not get duration"

    invoke-direct {v0, v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "metadata.lockupMetadataViewModel.title.content"

    const-class v1, Ljava/lang/String;

    iget-object v2, p0, LD2/o;->a:LC1/d;

    invoke-static {v2, v0, v1}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, LD2/o;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/o;->a:LC1/d;

    :try_start_0
    const-string v1, "contentId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "rendererContext.commandContext.onTap.innertubeCommand.watchEndpoint.videoId"

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, LE2/c;->d:LE2/c;

    invoke-virtual {v0, v1}, LE2/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Lu2/f;

    const-string v2, "Could not get url"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final h()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, LD2/o;->p()LC/b;

    move-result-object v0

    invoke-virtual {v0}, LC/b;->p()LC1/d;

    move-result-object v0

    const-string v1, "avatarViewModel.image.sources"

    const-class v2, LC1/c;

    invoke-static {v0, v1, v2}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, LD2/o;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LD2/o;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LD2/o;->u()Z

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, LD2/o;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LD2/o;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LD2/o;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Premieres "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scheduled for "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final n()Lw2/b;
    .locals 3

    invoke-virtual {p0}, LD2/o;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LD2/o;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LD2/o;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Premieres "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scheduled for "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, LD2/o;->h:Ljava/time/format/DateTimeFormatter;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    new-instance v1, Lw2/b;

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lw2/b;-><init>(Ljava/time/Instant;Z)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not parse premiere upload date"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v1, p0, LD2/o;->b:LW0/c;

    invoke-virtual {v1, v0}, LW0/c;->w(Ljava/lang/String;)Lw2/b;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 3

    const-string v0, "contentImage.thumbnailViewModel.image.sources"

    const-class v1, LC1/c;

    iget-object v2, p0, LD2/o;->a:LC1/d;

    invoke-static {v2, v0, v1}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()LC/b;
    .locals 4

    iget-object v0, p0, LD2/o;->g:LC/b;

    if-nez v0, :cond_4

    iget-object v0, p0, LD2/o;->a:LC1/d;

    const-string v1, "metadata"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "lockupMetadataViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "decoratedAvatarViewModel"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LC1/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, LC1/d;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, LD2/n;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD2/n;-><init>(LC1/d;I)V

    goto :goto_1

    :cond_1
    const-string v1, "avatarStackViewModel"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LC1/d;

    if-eqz v1, :cond_2

    move-object v3, v0

    check-cast v3, LC1/d;

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, LD2/n;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, LD2/n;-><init>(LC1/d;I)V

    :goto_1
    iput-object v0, p0, LD2/o;->g:LC/b;

    goto :goto_2

    :cond_3
    new-instance v0, Lu2/f;

    const-string v1, "Failed to determine channel image view model"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, LD2/o;->g:LC/b;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD2/o;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, LD2/o;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LD2/o;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get date text: no metadata part in the metadata parts array"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "Could not get date text: no metadata part from metadata rows"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public final r()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LD2/o;->c:LC1/c;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v2

    const-string v3, "metadataParts"

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final s()Z
    .locals 3

    iget-object v0, p0, LD2/o;->c:LC1/c;

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 2

    invoke-virtual {p0}, LD2/o;->d()LG2/l;

    move-result-object v0

    sget-object v1, LG2/l;->f:LG2/l;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .locals 2

    invoke-virtual {p0}, LD2/o;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Premieres "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Scheduled for "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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
