.class public final LE2/b;
.super Lv2/c;
.source "SourceFile"


# static fields
.field public static final c:LE2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LE2/b;->c:LE2/b;

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    const-string p2, "https://www.youtube.com/playlist?list="

    invoke-static {p2, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, LJ2/g;->c(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, LC2/m;->q(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LC2/m;->h:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/playlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lu2/f;

    const-string v0, "the url given is neither a video nor a playlist URL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "list"

    invoke-static {p1, v0}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "[a-zA-Z0-9_-]{10,}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lu2/f;

    const-string v0, "the list-ID given in the URL does not match the list pattern"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lu2/f;

    const-string v0, "the URL given does not include a playlist"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lu2/f;

    const-string v0, "the url given is not a YouTube-URL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lu2/f;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error could not parse URL: "

    invoke-static {v2, v1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, LE2/b;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
