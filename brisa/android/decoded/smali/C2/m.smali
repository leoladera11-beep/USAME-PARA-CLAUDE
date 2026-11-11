.class public abstract LC2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Z = false

.field public static c:Ljava/util/Optional;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/Random;

.field public static final g:Ljava/util/Set;

.field public static final h:Ljava/util/Set;

.field public static final i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, LC2/m;->c:Ljava/util/Optional;

    const-string v0, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    const-string v1, "client.version=([0-9\\.]+)"

    const-string v2, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LC2/m;->d:[Ljava/lang/String;

    const-string v0, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    const-string v1, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LC2/m;->e:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, LC2/m;->f:Ljava/util/Random;

    const-string v0, "&c=WEB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "&c=WEB_EMBEDDED_PLAYER"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "&c=ANDROID"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "&c=IOS"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "&c=VISIONOS"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "google."

    const-string v1, "m.google."

    const-string v2, "www.google."

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "duplicate element: "

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LC2/m;->g:Ljava/util/Set;

    const-string v6, "redirect.invidious.io"

    const-string v7, "yewtu.be"

    const-string v8, "piped.kavin.rocks"

    const-string v9, "piped.video"

    const-string v10, "inv.nadeko.net"

    const-string v11, "invidious.nerdvpn.de"

    const-string v12, "yt.chocolatemoo53.com"

    const-string v13, "invidious.tiekoetter.com"

    const-string v14, "invidious.f5.si"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LC2/m;->h:Ljava/util/Set;

    const-string v0, "youtube.com"

    const-string v1, "www.youtube.com"

    const-string v2, "m.youtube.com"

    const-string v4, "music.youtube.com"

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LC2/m;->i:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "webcache.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cache:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    :cond_1
    return-object p0
.end method

.method public static b()V
    .locals 3

    sget-boolean v0, LC2/m;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LC2/m;->i()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/support/v4/media/session/b;->b:Lw2/c;

    if-nez v1, :cond_1

    sget-object v1, Lw2/c;->g:Lw2/c;

    :cond_1
    const-string v2, "https://www.youtube.com/sw.js_data"

    invoke-static {v2, v0, v1}, Lcom/brisa/local/j;->G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;

    move-result-object v0

    iget-object v0, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ")]}\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :try_start_0
    new-instance v1, LZ0/i;

    const-class v2, LC1/c;

    invoke-direct {v1, v2}, LZ0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, LZ0/i;->q(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->a(I)LC1/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LC1/c;->a(I)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/c;->a(I)LC1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, LC1/c;->a(I)LC1/c;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LC1/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sput-object v0, LC2/m;->a:Ljava/lang/String;
    :try_end_0
    .catch LC1/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    sput-boolean v0, LC2/m;->b:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not extract YouTube WEB InnerTube client version from sw.js"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RDAMVM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "RDCLAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RDGMEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const-string v0, "RD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_4
    new-instance p0, Lu2/f;

    const-string v0, "Could not extract playlist type from empty playlist id"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LJ2/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "X-YouTube-Client-Name"

    invoke-direct {v1, v4, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "X-YouTube-Client-Version"

    invoke-direct {v0, v4, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/util/Map$Entry;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v3, p0, :cond_1

    aget-object v1, v4, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 7

    sget-object v0, Lw2/c;->g:Lw2/c;

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, LC2/m;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, LC2/m;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    sget-boolean v3, LC2/m;->b:Z

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v3, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    const-string v4, "CAE="

    const-string v5, "SOCS="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    const-string v6, "Cookie"

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v4, v2, [Ljava/util/Map$Entry;

    aput-object v5, v4, v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroid/support/v4/media/session/b;->b:Lw2/c;

    if-nez v3, :cond_2

    move-object v3, v0

    :cond_2
    const-string v5, "https://www.youtube.com/results?search_query=&ucbcb=1"

    invoke-static {v5, v4, v3}, Lcom/brisa/local/j;->G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;

    move-result-object v3

    iget-object v3, v3, LI0/G;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_1
    invoke-static {}, LC1/e;->i()LZ0/i;

    move-result-object v4

    sget-object v5, LC2/m;->e:[Ljava/lang/String;

    invoke-static {v3, v5}, LJ2/g;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LZ0/i;->q(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LC1/d;
    :try_end_1
    .catch LC1/f; {:try_start_1 .. :try_end_1} :catch_2
    .catch LJ2/e; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "responseContext"

    invoke-virtual {v4, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    const-string v5, "serviceTrackingParams"

    invoke-virtual {v4, v5}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v4

    invoke-virtual {v4}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, "CSI"

    const-string v6, "cver"

    invoke-static {v4, v5, v6}, LC2/m;->g(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, LC2/m;->a:Ljava/lang/String;

    if-nez v5, :cond_3

    :try_start_2
    sget-object v5, LC2/m;->d:[Ljava/lang/String;

    invoke-static {v3, v5}, LJ2/g;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, LC2/m;->a:Ljava/lang/String;
    :try_end_2
    .catch LJ2/e; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    sget-object v3, LC2/m;->a:Ljava/lang/String;

    invoke-static {v3}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ECATCHER"

    const-string v5, "client.version"

    invoke-static {v4, v3, v5}, LC2/m;->g(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, LC2/m;->a:Ljava/lang/String;

    :cond_4
    sget-object v3, LC2/m;->a:Ljava/lang/String;

    if-eqz v3, :cond_c

    sput-boolean v2, LC2/m;->b:Z

    :goto_0
    sget-boolean v3, LC2/m;->b:Z

    if-eqz v3, :cond_5

    sget-object v0, LC2/m;->a:Ljava/lang/String;

    return-object v0

    :cond_5
    sget-object v3, LC2/m;->c:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const-string v4, "2.20260805.01.00"

    if-eqz v3, :cond_6

    sget-object v0, LC2/m;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_2

    :cond_6
    new-instance v3, LC1/g;

    invoke-direct {v3}, LC1/g;-><init>()V

    invoke-virtual {v3}, LC1/g;->f()V

    const-string v5, "context"

    invoke-virtual {v3, v5}, LC1/g;->g(Ljava/lang/String;)V

    const-string v5, "client"

    invoke-virtual {v3, v5}, LC1/g;->g(Ljava/lang/String;)V

    const-string v5, "hl"

    const-string v6, "en-GB"

    invoke-virtual {v3, v5, v6}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "gl"

    const-string v6, "GB"

    invoke-virtual {v3, v5, v6}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "clientName"

    const-string v6, "WEB"

    invoke-virtual {v3, v5, v6}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "clientVersion"

    invoke-virtual {v3, v5, v4}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "platform"

    const-string v6, "DESKTOP"

    invoke-virtual {v3, v5, v6}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "utcOffsetMinutes"

    invoke-virtual {v3, v5}, LC1/g;->j(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, LC1/g;->l(Ljava/lang/String;)V

    invoke-virtual {v3}, LC1/g;->c()V

    const-string v5, "request"

    invoke-virtual {v3, v5}, LC1/g;->g(Ljava/lang/String;)V

    const-string v5, "internalExperimentFlags"

    invoke-virtual {v3, v5}, LC1/g;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, LC1/g;->c()V

    const-string v5, "useSsl"

    invoke-virtual {v3, v5, v2}, LC1/g;->p(Ljava/lang/String;Z)V

    invoke-virtual {v3}, LC1/g;->c()V

    const-string v5, "user"

    invoke-virtual {v3, v5}, LC1/g;->g(Ljava/lang/String;)V

    const-string v5, "lockedSafetyMode"

    invoke-virtual {v3, v5, v1}, LC1/g;->p(Ljava/lang/String;Z)V

    invoke-virtual {v3}, LC1/g;->c()V

    invoke-virtual {v3}, LC1/g;->c()V

    const-string v5, "fetchLiveState"

    invoke-virtual {v3, v5, v2}, LC1/g;->p(Ljava/lang/String;Z)V

    invoke-virtual {v3}, LC1/g;->c()V

    iget v5, v3, LC1/g;->d:I

    if-gtz v5, :cond_b

    iget-boolean v5, v3, LC1/g;->e:Z

    if-nez v5, :cond_a

    invoke-virtual {v3}, LC1/g;->d()V

    iget-object v3, v3, LC1/g;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v4}, LC2/m;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    sget-object v6, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroid/support/v4/media/session/b;->b:Lw2/c;

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v6

    :goto_1
    const-string v6, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    invoke-static {v6, v5, v3, v0}, Lcom/brisa/local/j;->M(Ljava/lang/String;Ljava/util/Map;[BLw2/c;)LI0/G;

    move-result-object v0

    iget-object v3, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v0, v0, LI0/G;->e:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x1388

    if-le v3, v5, :cond_8

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, LC2/m;->c:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_9

    sput-object v4, LC2/m;->a:Ljava/lang/String;

    return-object v4

    :cond_9
    new-instance v0, Lu2/d;

    const-string v1, "Could not get YouTube WEB client version"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, LC1/i;

    const-string v1, "Nothing was written to the JSON writer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, LC1/i;

    const-string v1, "Unclosed JSON objects and/or arrays when closing writer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lu2/f;

    const-string v1, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not get ytInitialData"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, LC2/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LC2/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LC1/b;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LC1/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LC2/k;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, LC2/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LC1/b;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, LC1/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LC1/a;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LC1/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static h(LC1/c;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LC1/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LC1/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lj$/util/stream/DesugarCollectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static i()Ljava/util/Map;
    .locals 6

    const-string v0, "https://www.youtube.com"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v4, "Origin"

    invoke-direct {v1, v4, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    const-string v5, "Referer"

    invoke-direct {v4, v5, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/util/Map$Entry;

    aput-object v1, v5, v3

    aput-object v4, v5, v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v5, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static j(LC1/d;Z)Ljava/lang/String;
    .locals 10

    invoke-static {p0}, LJ2/g;->d(LC1/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "simpleText"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "runs"

    invoke-virtual {p0, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC1/d;

    const-string v3, "text"

    invoke-virtual {v2, v3, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_d

    const-string v4, "navigationEndpoint"

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-static {v4}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lo2/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lo2/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<a href=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</a>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v4, "bold"

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v2, v4}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    const-string v5, "italics"

    invoke-virtual {v2, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2, v5}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    const-string v8, "strikethrough"

    invoke-virtual {v2, v8}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v8}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v6, v7

    :cond_7
    if-eqz v4, :cond_8

    const-string v2, "<b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v5, :cond_9

    const-string v2, "<i>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v6, :cond_a

    const-string v2, "<s>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_b

    const-string v2, "</s>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v5, :cond_c

    const-string v2, "</i>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v4, :cond_3

    const-string v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_f

    const-string p1, "\\n"

    const-string v0, "<br>"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " {2}"

    const-string v0, " &nbsp;"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static k(LC1/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lu2/f;

    const-string v0, "Could not extract text: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(LC1/d;)Ljava/util/List;
    .locals 2

    :try_start_0
    const-string v0, "thumbnail"

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    const-string v0, "thumbnails"

    invoke-virtual {p0, v0}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p0

    invoke-static {p0}, LC2/m;->h(LC1/c;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lu2/f;

    const-string v1, "Could not get thumbnails from InfoItem"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static m(LC1/d;)Ljava/lang/String;
    .locals 11

    const-string v0, "urlEndpoint"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "https://www.youtube.com"

    const-string v3, "url"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.youtube.com/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_5

    aget-object v7, v0, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    const-string v10, "q"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    sget v0, LJ2/g;->a:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "/channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "browseEndpoint"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "https://www.youtube.com/playlist?list="

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "canonicalBaseUrl"

    invoke-virtual {v0, v1, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "browseId"

    invoke-virtual {v0, v7, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v7, "UC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string p0, "https://www.youtube.com/channel/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v7, "VL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v2, v1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "watchEndpoint"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "playlistId"

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "videoId"

    invoke-virtual {v2, v3, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v2

    const-string v3, "startTimeSeconds"

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, LC1/d;->c(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "watchPlaylistEndpoint"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v7, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string v0, "showDialogCommand"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_0
    const-string v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    const-class v1, LC1/c;

    invoke-static {p0, v0, v1}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/c;

    invoke-virtual {v0, v4}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "listItemViewModel.rendererContext.commandContext.onTap.innertubeCommand"

    const-class v4, LC1/d;

    invoke-static {v0, v1, v4}, LJ2/a;->e(LC1/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;

    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_d
    const-string v0, "commandMetadata"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    const-string v0, "webCommandMetadata"

    invoke-virtual {p0, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v3, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v5
.end method

.method public static n(LI0/G;)Ljava/lang/String;
    .locals 6

    iget v0, p0, LI0/G;->e:I

    iget-object v1, p0, LI0/G;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x194

    const-string v3, "\")"

    if-eq v0, v2, :cond_7

    iget-object v0, p0, LI0/G;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-lt v2, v4, :cond_6

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "www.youtube.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/oops"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lu2/b;

    const-string v0, "Content unavailable"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, LI0/G;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v2, "text/html"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lu2/f;

    const-string v0, "Got HTML document, expected JSON response (latest url was: \""

    invoke-static {v0, v1, v3}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    new-instance p0, Lu2/f;

    const-string v0, "JSON response is too short"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v1, Lu2/b;

    iget-object p0, p0, LI0/G;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Not found (\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static o(LN0/O;Lw2/c;Lw2/a;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p0}, LC2/m;->s(Lw2/c;Lw2/a;LN0/O;)LN0/O;

    move-result-object p0

    iget-object p0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p0, LC1/d;

    invoke-static {p0}, LV0/a;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object p1, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "https://www.youtube.com/youtubei/v1/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "visitor_id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?prettyPrint=false"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroid/support/v4/media/session/b;->b:Lw2/c;

    if-nez p1, :cond_0

    sget-object p1, Lw2/c;->g:Lw2/c;

    :cond_0
    invoke-static {p2, p3, p0, p1}, Lcom/brisa/local/j;->M(Ljava/lang/String;Ljava/util/Map;[BLw2/c;)LI0/G;

    move-result-object p0

    invoke-static {p0}, LC2/m;->n(LI0/G;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ2/a;->j(Ljava/lang/String;)LC1/d;

    move-result-object p0

    const-string p1, "responseContext"

    invoke-virtual {p0, p1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p0

    const-string p1, "visitorData"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lu2/f;

    const-string p1, "Could not get visitorData"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p()Ljava/util/HashMap;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, LC2/m;->i()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, LC2/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LC2/m;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v1, "CAE="

    const-string v2, "SOCS="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static q(Ljava/net/URL;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, LC2/m;->i:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static r(Ljava/lang/String;)I
    .locals 9

    const-string v0, ".*\\d.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SHORTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Error duration string contains no digits: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v1, 0x18

    const/16 v2, 0x3c

    const/4 v3, 0x1

    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v1

    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x4

    if-ltz v2, :cond_6

    const/4 p0, 0x0

    move v3, p0

    move v4, v3

    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_5

    add-int v5, v3, v2

    aget v5, v1, v5

    aget-object v6, v0, v3

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    sget v7, LJ2/g;->a:I

    const-string v7, "\\D+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_4
    :goto_3
    move v6, p0

    :goto_4
    add-int/2addr v4, v6

    mul-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    new-instance v0, Lu2/f;

    const-string v1, "Error duration string with unknown format: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Lw2/c;Lw2/a;LN0/O;)LN0/O;
    .locals 4

    new-instance v0, LN0/O;

    new-instance v1, LC1/d;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LN0/O;-><init>(IZ)V

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, v0, LN0/O;->f:Ljava/lang/Object;

    iput-object v1, v0, LN0/O;->g:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    invoke-virtual {v0, v1}, LN0/O;->Y(Ljava/lang/String;)V

    const-string v1, "client"

    invoke-virtual {v0, v1}, LN0/O;->Y(Ljava/lang/String;)V

    iget-object v1, p2, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LC2/a;

    iget-object v1, v1, LC2/a;->a:Ljava/lang/String;

    const-string v2, "clientName"

    invoke-virtual {v0, v1, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p2, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LC2/a;

    iget-object v2, v1, LC2/a;->b:Ljava/lang/String;

    const-string v3, "clientVersion"

    invoke-virtual {v0, v2, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clientScreen"

    const-string v3, "WATCH"

    invoke-virtual {v0, v3, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, LN0/O;->g:Ljava/lang/Object;

    check-cast p2, LC2/b;

    iget-object v2, p2, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "platform"

    invoke-virtual {v0, v2, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LC2/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "visitorData"

    invoke-virtual {v0, v1, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p2, LC2/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "deviceMake"

    invoke-virtual {v0, v1, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p2, LC2/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "deviceModel"

    invoke-virtual {v0, v1, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p2, LC2/b;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "osName"

    invoke-virtual {v0, v1, v2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, LC2/b;->j:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string v1, "osVersion"

    invoke-virtual {v0, p2, v1}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const-string p2, "hl"

    invoke-virtual {p0}, Lw2/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "gl"

    iget-object p1, p1, Lw2/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utcOffsetMinutes"

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p0}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LN0/O;->L()V

    const-string p0, "request"

    invoke-virtual {v0, p0}, LN0/O;->Y(Ljava/lang/String;)V

    new-instance p0, LC1/c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "internalExperimentFlags"

    invoke-virtual {v0, p0, p2}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/Stack;

    invoke-virtual {p2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LN0/O;->L()V

    const-string p0, "useSsl"

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LN0/O;->L()V

    const-string p0, "user"

    invoke-virtual {v0, p0}, LN0/O;->Y(Ljava/lang/String;)V

    const-string p0, "lockedSafetyMode"

    invoke-virtual {v0, p0, p1}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LN0/O;->L()V

    invoke-virtual {v0}, LN0/O;->L()V

    return-object v0
.end method
