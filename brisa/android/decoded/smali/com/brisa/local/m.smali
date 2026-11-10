.class public abstract Lcom/brisa/local/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/brisa/local/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "mp4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/brisa/local/l;
    .locals 25

    sget-object v0, Lcom/brisa/local/W;->a:LW1/q;

    if-eqz p0, :cond_59

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_59

    new-instance v0, Ljava/net/URI;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_58

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_58

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appassets.androidplatform.net"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/W;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v8, ".*\\.(mp4|m4v|webm|mov|mkv|3gp)$"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pega un enlace de YouTube o un archivo directo de v\u00eddeo."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    const-string v9, "youtu.be"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    array-length v8, v1

    if-ne v8, v7, :cond_2

    aget-object v0, v1, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/watch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v9, v4

    move-object v8, v5

    :goto_0
    if-ge v9, v1, :cond_4

    aget-object v10, v0, v9

    const-string v11, "v="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    array-length v0, v1

    if-ne v0, v3, :cond_6

    const-string v0, "shorts"

    const-string v8, "live"

    const-string v9, "embed"

    const-string v10, "v"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aget-object v8, v1, v6

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v1, v7

    goto :goto_1

    :cond_6
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_57

    const-string v1, "[\\w-]{11}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/brisa/local/l;

    invoke-direct {v1}, Lcom/brisa/local/l;-><init>()V

    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/brisa/local/W;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iput-boolean v6, v1, Lcom/brisa/local/l;->h:Z

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".*/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brisa/local/W;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/brisa/local/l;->d:Ljava/lang/String;

    new-instance v2, Lcom/brisa/local/k;

    invoke-direct {v2}, Lcom/brisa/local/k;-><init>()V

    iput-object v0, v2, Lcom/brisa/local/k;->b:Ljava/lang/String;

    const-string v3, "Calidad original"

    iput-object v3, v2, Lcom/brisa/local/k;->e:Ljava/lang/String;

    const-string v3, "Formato del archivo"

    iput-object v3, v2, Lcom/brisa/local/k;->d:Ljava/lang/String;

    iput-boolean v6, v2, Lcom/brisa/local/k;->i:Z

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".*\\."

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    sget-object v3, Lcom/brisa/local/W;->a:LW1/q;

    new-instance v4, LC2/b;

    invoke-direct {v4}, LC2/b;-><init>()V

    invoke-virtual {v4, v0}, LC2/b;->s(Ljava/lang/String;)V

    const-string v6, "HEAD"

    invoke-virtual {v4, v6, v5}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    invoke-virtual {v4}, LC2/b;->b()LM0/r0;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, La2/h;

    invoke-direct {v5, v3, v4}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v5}, La2/h;->d()LW1/v;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, LW1/v;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Content-Length"

    const-string v5, "0"

    iget-object v6, v3, LW1/v;->j:LW1/k;

    invoke-virtual {v6, v4}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v4

    :goto_3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/brisa/local/k;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, LW1/v;->close()V

    iput-object v0, v1, Lcom/brisa/local/l;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/brisa/local/l;->c:Ljava/util/LinkedHashMap;

    iget-object v3, v2, Lcom/brisa/local/k;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    goto/16 :goto_29

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_8
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No se puede acceder al archivo (HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, LW1/v;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual {v3}, LW1/v;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_9
    const-class v8, Lcom/brisa/local/m;

    monitor-enter v8

    :try_start_3
    sget-boolean v10, Lcom/brisa/local/m;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v10, :cond_a

    monitor-exit v8

    goto :goto_6

    :cond_a
    :try_start_4
    new-instance v10, Lcom/brisa/local/j;

    invoke-direct {v10, v4}, Lcom/brisa/local/j;-><init>(I)V

    invoke-static {v10}, Landroid/support/v4/media/session/b;->g(Lcom/brisa/local/j;)V

    sput-boolean v6, Lcom/brisa/local/m;->b:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v8

    :goto_6
    sget-object v8, Lr2/g;->a:LC2/n;

    const-string v10, "getInfo({service},{url})"

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, LJ2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, LE2/c;->d:LE2/c;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_56

    :try_start_5
    invoke-static {v0}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    const-string v13, "google"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "&url=([^&]+)(?:&|$)"

    invoke-static {v11, v0, v6}, LJ2/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v11, v12}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_b
    move-object v11, v0

    :try_start_6
    invoke-static {v11}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "://"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "unknown protocol: "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_55

    const/16 v0, 0x12

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v10, v11, v0}, Lcom/brisa/local/a;->l(Ljava/lang/String;Ljava/lang/String;)Lv2/a;

    move-result-object v0

    new-instance v10, LD2/k;

    invoke-direct {v10, v8, v0}, LD2/k;-><init>(Lr2/i;Lv2/a;)V

    iput v2, v10, LD2/k;->l:I

    const-string v0, "getInfo({extractor})"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, LJ2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LJ2/a;->b:Lcom/brisa/local/j;

    sget-object v2, LJ2/a;->a:Lcom/brisa/local/j;

    if-ne v0, v2, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v6}, Lz/K;->b(I)I

    :goto_8
    iget-boolean v0, v10, LD2/k;->c:Z

    if-eqz v0, :cond_e

    sget-object v0, LJ2/a;->b:Lcom/brisa/local/j;

    if-ne v0, v2, :cond_d

    goto :goto_9

    :cond_d
    invoke-static {v6}, Lz/K;->b(I)I

    :goto_9
    move-object/from16 v20, v1

    goto/16 :goto_11

    :cond_e
    const-string v0, "racyCheckOk"

    const-string v2, "contentCheckOk"

    const-string v8, "videoId"

    const-string v11, "videoDetails"

    const-string v12, "playabilityStatus"

    iget-object v13, v10, LD2/k;->b:Lv2/a;

    iget-object v13, v13, Lv2/a;->g:Ljava/lang/String;

    iget-object v14, v10, LD2/k;->a:Lr2/i;

    invoke-virtual {v14}, Lr2/i;->a()Lw2/c;

    move-result-object v15

    sget-object v16, Lw2/a;->f:Lw2/a;

    sget-object v17, Landroid/support/v4/media/session/b;->c:Lw2/a;

    if-nez v17, :cond_f

    move-object/from16 v9, v16

    goto :goto_a

    :cond_f
    move-object/from16 v9, v17

    :goto_a
    invoke-virtual {v14}, Lr2/i;->b()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_b

    :cond_10
    move-object/from16 v9, v16

    :goto_b
    const/16 v14, 0x10

    sget-object v3, LC2/m;->f:Ljava/util/Random;

    invoke-static {v14, v3}, LJ2/a;->d(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, LD2/k;->n:Ljava/lang/String;

    new-instance v14, LN0/O;

    move/from16 v17, v4

    new-instance v4, LC2/a;

    const-string v5, "VISIONOS"

    const-string v6, "1.04"

    invoke-direct {v4, v5, v6}, LC2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, LC2/b;

    const-string v20, "MOBILE"

    const-string v21, "Apple"

    const-string v22, "RealityDevice17,1"

    const-string v23, "visionOS"

    const-string v24, "26.6.0.23O770"

    invoke-direct/range {v19 .. v24}, LC2/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v19

    invoke-direct {v14, v4, v5, v7}, LN0/O;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v4, "User-Agent"

    invoke-virtual {v15}, Lw2/c;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.visionos.youtube/1.04(RealityDevice17,1; U; CPU visionOS 26_6_0 like Mac OS X; "

    const-string v7, ")"

    invoke-static {v6, v5, v7}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v5, v5, v17

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const-string v6, "X-Goog-Api-Format-Version"

    const-string v18, "2"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v21, v7

    aget-object v7, v18, v17

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v7, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, v6, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/util/Map$Entry;

    aput-object v7, v5, v17

    aput-object v4, v5, v21

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    move/from16 v6, v17

    :goto_c
    if-ge v6, v1, :cond_12

    aget-object v1, v5, v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x2

    goto :goto_c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v4, v14, LN0/O;->f:Ljava/lang/Object;

    check-cast v4, LC2/a;

    invoke-static {v14, v15, v9, v1}, LC2/m;->o(LN0/O;Lw2/c;Lw2/a;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LC2/a;->c:Ljava/lang/String;

    invoke-static {v15, v9, v14}, LC2/m;->s(Lw2/c;Lw2/a;LN0/O;)LN0/O;

    move-result-object v4

    invoke-virtual {v4, v13, v8}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_13

    const-string v5, "cpn"

    invoke-virtual {v4, v3, v5}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    const/4 v7, 0x1

    invoke-virtual {v4, v2, v7}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0, v7}, LN0/O;->m0(Ljava/lang/String;Z)V

    iget-object v3, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v3, LC1/d;

    invoke-static {v3}, LV0/a;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/16 v4, 0xc

    sget-object v5, LC2/m;->f:Ljava/util/Random;

    invoke-static {v4, v5}, LJ2/a;->d(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&id="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v1, v3, v15}, Lcom/brisa/local/j;->M(Ljava/lang/String;Ljava/util/Map;[BLw2/c;)LI0/G;

    move-result-object v1

    invoke-static {v1}, LC2/m;->n(LI0/G;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/a;->j(Ljava/lang/String;)LC1/d;

    move-result-object v1

    iput-object v1, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v1, v12}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v3, "\""

    const-string v4, ": \""

    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    const-string v7, "ok"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto/16 :goto_e

    :cond_14
    const-string v0, "reason"

    invoke-virtual {v1, v0, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "login_required"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "inappropriate for some users"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "messages"

    invoke-virtual {v1, v2}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LC1/a;

    const/16 v6, 0xe

    invoke-direct {v2, v6}, LC1/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LC1/b;

    const/16 v6, 0xa

    invoke-direct {v2, v6}, LC1/b;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LC1/a;

    const/16 v6, 0xf

    invoke-direct {v2, v6}, LC1/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "a bot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    new-instance v1, Lu2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "YouTube probably temporarily blocked anonymous watch access with this IP , got error "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v0, Lu2/a;

    const-string v1, "This video is private"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lu2/a;

    const-string v1, "This age-restricted video cannot be watched anonymously"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    const-string v1, "unplayable"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "error"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_19
    const-string v1, "Music Premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "members"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "country"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "terminated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1a
    new-instance v1, Lu2/a;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v0, Lu2/a;

    const-string v1, "This video is not available in client\'s country."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Lu2/a;

    const-string v1, "This video is only available for members of the channel of this video"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Lu2/a;

    const-string v1, "This video is a paid video"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lu2/a;

    const-string v1, "This video is a YouTube Music Premium video"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v1, Lu2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Got error "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    :goto_e
    iget-object v1, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v1, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, v10, LD2/k;->d:LC1/d;

    const-string v3, "streamingData"

    invoke-virtual {v1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    iput-object v1, v10, LD2/k;->f:LC1/d;

    iget-object v1, v10, LD2/k;->d:LC1/d;

    const-string v3, "captions"

    invoke-virtual {v1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v3, "playerCaptionsTracklistRenderer"

    invoke-virtual {v1, v3}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    iput-object v1, v10, LD2/k;->j:LC1/d;

    iget-object v1, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v1, v12}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v3, "liveStreamability"

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, LG2/l;->g:LG2/l;

    iput-object v1, v10, LD2/k;->m:LG2/l;

    goto :goto_f

    :cond_21
    iget-object v1, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v1, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v3, "isPostLiveDvr"

    invoke-virtual {v1, v3}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, LG2/l;->h:LG2/l;

    iput-object v1, v10, LD2/k;->m:LG2/l;

    goto :goto_f

    :cond_22
    sget-object v1, LG2/l;->f:LG2/l;

    iput-object v1, v10, LD2/k;->m:LG2/l;

    :goto_f
    const-string v1, "thumbnail"

    const-string v3, "thumbnails"

    :try_start_7
    invoke-static {v15, v9, v13}, Landroid/support/v4/media/session/b;->f(Lw2/c;Lw2/a;Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "microformat"

    invoke-virtual {v4, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    const-string v6, "playerMicroformatRenderer"

    invoke-virtual {v5, v6}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v5

    iput-object v5, v10, LD2/k;->i:LC1/d;

    invoke-virtual {v4, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v4, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v4

    iput-object v4, v10, LD2/k;->k:LC1/c;

    goto :goto_10

    :cond_23
    iget-object v4, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v4, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v4

    iput-object v4, v10, LD2/k;->k:LC1/c;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_10

    :catch_2
    new-instance v4, LC1/d;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v10, LD2/k;->i:LC1/d;

    iget-object v4, v10, LD2/k;->d:LC1/d;

    invoke-virtual {v4, v11}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v4

    invoke-virtual {v4, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    invoke-virtual {v1, v3}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v1

    iput-object v1, v10, LD2/k;->k:LC1/c;

    :cond_24
    :goto_10
    new-instance v1, LN0/O;

    new-instance v3, LC1/d;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move/from16 v4, v17

    const/4 v7, 0x1

    invoke-direct {v1, v7, v4}, LN0/O;-><init>(IZ)V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v4, v1, LN0/O;->f:Ljava/lang/Object;

    iput-object v3, v1, LN0/O;->g:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "context"

    invoke-virtual {v1, v3}, LN0/O;->Y(Ljava/lang/String;)V

    const-string v3, "client"

    invoke-virtual {v1, v3}, LN0/O;->Y(Ljava/lang/String;)V

    const-string v3, "hl"

    invoke-virtual {v15}, Lw2/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "gl"

    iget-object v4, v9, Lw2/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientName"

    const-string v4, "WEB"

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientVersion"

    invoke-static {}, LC2/m;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "originalUrl"

    const-string v4, "https://www.youtube.com"

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "platform"

    const-string v4, "DESKTOP"

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "utcOffsetMinutes"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LN0/O;->L()V

    const-string v3, "request"

    invoke-virtual {v1, v3}, LN0/O;->Y(Ljava/lang/String;)V

    const-string v3, "internalExperimentFlags"

    new-instance v4, LC1/c;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v3}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, LN0/O;->L()V

    const-string v3, "useSsl"

    const/4 v7, 0x1

    invoke-virtual {v1, v3, v7}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v1}, LN0/O;->L()V

    const-string v3, "user"

    invoke-virtual {v1, v3}, LN0/O;->Y(Ljava/lang/String;)V

    const-string v3, "lockedSafetyMode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v1}, LN0/O;->L()V

    invoke-virtual {v1}, LN0/O;->L()V

    invoke-virtual {v1, v13, v8}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7}, LN0/O;->m0(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0, v7}, LN0/O;->m0(Ljava/lang/String;Z)V

    iget-object v0, v1, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LC1/d;

    invoke-static {v0}, LV0/a;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {}, LC2/m;->p()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    const-string v3, "https://www.youtube.com/youtubei/v1/next?prettyPrint=false"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v0, v15}, Lcom/brisa/local/j;->M(Ljava/lang/String;Ljava/util/Map;[BLw2/c;)LI0/G;

    move-result-object v0

    invoke-static {v0}, LC2/m;->n(LI0/G;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/a;->j(Ljava/lang/String;)LC1/d;

    move-result-object v0

    iput-object v0, v10, LD2/k;->e:LC1/d;

    :try_start_8
    const-string v1, "contents"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "twoColumnWatchNextResults"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "conversationBar"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "liveChatRenderer"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "continuations"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    const-string v1, "reloadContinuationData"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "continuation"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    const/4 v7, 0x1

    iput-boolean v7, v10, LD2/k;->c:Z

    :goto_11
    :try_start_9
    invoke-static {v10}, LG2/h;->b(LD2/k;)LG2/h;

    move-result-object v0

    invoke-static {v0, v10}, LG2/h;->d(LG2/h;LD2/k;)V

    invoke-static {v0, v10}, LG2/h;->c(LG2/h;LD2/k;)V
    :try_end_9
    .catch Lu2/d; {:try_start_9 .. :try_end_9} :catch_8

    iget-object v1, v0, LG2/h;->k:LG2/l;

    sget-object v2, LG2/l;->f:LG2/l;

    if-ne v1, v2, :cond_52

    iget-object v1, v0, LG2/h;->i:Ljava/lang/String;

    move-object/from16 v2, v20

    iput-object v1, v2, Lcom/brisa/local/l;->d:Ljava/lang/String;

    iget-wide v3, v0, LG2/h;->l:J

    iput-wide v3, v2, Lcom/brisa/local/l;->f:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, LG2/h;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG2/b;

    iget-boolean v5, v4, LG2/f;->g:Z

    if-eqz v5, :cond_25

    iget v5, v4, LG2/f;->h:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_25

    iget-object v5, v4, LG2/f;->f:Ljava/lang/String;

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    new-instance v3, Lcom/brisa/local/i;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/brisa/local/i;-><init>(I)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v6, 0x0

    goto :goto_13

    :cond_27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, LG2/b;

    :goto_13
    if-nez v6, :cond_28

    const/4 v3, 0x0

    goto :goto_14

    :cond_28
    iget-object v3, v6, LG2/f;->f:Ljava/lang/String;

    :goto_14
    iput-object v3, v2, Lcom/brisa/local/l;->e:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, LG2/h;->s:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, LC2/d;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LC2/d;-><init>(I)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, LD2/m;

    const/4 v7, 0x3

    invoke-direct {v5, v7}, LD2/m;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG2/m;

    iget-boolean v8, v7, LG2/f;->g:Z

    if-eqz v8, :cond_29

    iget-object v8, v7, LG2/f;->f:Ljava/lang/String;

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    if-eqz v4, :cond_2a

    iget-object v8, v7, LG2/m;->k:Ljava/lang/String;

    const-string v9, "es"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v8, v7, LG2/m;->l:Ljava/lang/String;

    if-nez v8, :cond_2b

    iget-object v8, v7, LG2/m;->i:Ljava/util/Locale;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    :cond_2b
    iget-object v9, v7, LG2/f;->f:Ljava/lang/String;

    const-string v10, "<this>"

    invoke-static {v9, v10}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LW1/l;

    invoke-direct {v10}, LW1/l;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, LW1/l;->d(LW1/m;Ljava/lang/String;)V

    invoke-virtual {v10}, LW1/l;->b()LW1/m;

    move-result-object v9

    invoke-virtual {v9}, LW1/m;->f()LW1/l;

    move-result-object v9

    const-string v10, "fmt"

    const-string v12, "srv3"

    invoke-virtual {v9, v10, v12}, LW1/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2c

    const-string v7, "tlang"

    const-string v8, "es"

    invoke-virtual {v9, v7, v8}, LW1/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Espa\u00f1ol \u00b7 traducci\u00f3n de YouTube"

    goto :goto_16

    :cond_2c
    iget-boolean v7, v7, LG2/m;->j:Z

    if-eqz v7, :cond_2d

    const-string v7, " \u00b7 autom\u00e1ticos"

    invoke-static {v8, v7}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2d
    :goto_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, LW1/l;->b()LW1/m;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto/16 :goto_15

    :cond_2e
    iget-object v7, v2, Lcom/brisa/local/l;->g:Lorg/json/JSONArray;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "url"

    invoke-virtual {v9}, LW1/l;->b()LW1/m;

    move-result-object v9

    iget-object v9, v9, LW1/m;->h:Ljava/lang/String;

    invoke-virtual {v10, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "label"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "format"

    const-string v12, "srv3"

    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "effects"

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "sin efecto"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30

    const-string v12, "without"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30

    const-string v12, "no effect"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_30

    const-string v12, "efecto"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2f

    const-string v12, "effect"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2f

    const-string v12, "karaoke"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_30

    :cond_2f
    const/4 v8, 0x1

    goto :goto_17

    :cond_30
    const/4 v8, 0x0

    :goto_17
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v4, :cond_32

    iget-object v7, v2, Lcom/brisa/local/l;->g:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0x14

    if-lt v7, v8, :cond_29

    goto :goto_18

    :cond_31
    const/4 v11, 0x0

    :cond_32
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG2/b;

    iget-object v4, v3, LG2/b;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/brisa/local/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_19

    :cond_34
    move-object v3, v11

    :goto_19
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, LG2/h;->p:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, LG2/h;->n:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, LC2/d;

    const/4 v7, 0x3

    invoke-direct {v0, v7}, LC2/d;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    new-instance v4, LC2/d;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, LC2/d;-><init>(I)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG2/n;

    iget-boolean v5, v4, LG2/f;->g:Z

    if-eqz v5, :cond_35

    iget v5, v4, LG2/f;->h:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_35

    iget-object v5, v4, LG2/f;->f:Ljava/lang/String;

    const-string v7, "https://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-boolean v5, v4, LG2/n;->j:Z

    if-eqz v5, :cond_36

    if-nez v6, :cond_36

    goto :goto_1a

    :cond_36
    iget-object v5, v4, LG2/n;->o:Ljava/lang/String;

    if-nez v5, :cond_37

    const-string v5, ""

    :cond_37
    const-string v7, "avc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string v5, "video/avc"

    goto :goto_1c

    :cond_38
    const-string v7, "vp9"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "vp09"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_1b

    :cond_39
    const-string v7, "av01"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "video/av01"

    goto :goto_1c

    :cond_3a
    move-object v5, v11

    goto :goto_1c

    :cond_3b
    :goto_1b
    const-string v5, "video/x-vnd.on2.vp9"

    :goto_1c
    if-nez v5, :cond_3c

    goto :goto_1a

    :cond_3c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, LG2/n;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, LG2/n;->n:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    goto/16 :goto_1a

    :cond_3d
    iget v7, v4, LG2/n;->l:I

    iget v8, v4, LG2/n;->m:I

    iget v9, v4, LG2/n;->n:I

    if-lez v7, :cond_3e

    if-gtz v8, :cond_3f

    :cond_3e
    move-object/from16 v16, v0

    goto/16 :goto_20

    :cond_3f
    :try_start_a
    new-instance v10, Landroid/media/MediaCodecList;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v10}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v12, :cond_44

    aget-object v14, v10, v13

    invoke-virtual {v14}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v15

    if-eqz v15, :cond_41

    move-object/from16 v16, v0

    :cond_40
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    goto :goto_1f

    :cond_41
    invoke-virtual {v14}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v15

    array-length v11, v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v11, :cond_40

    move/from16 v19, v0

    :try_start_b
    aget-object v0, v15, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_42

    invoke-virtual {v14, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v0, :cond_42

    move-object/from16 v20, v1

    move-object/from16 v18, v3

    const/4 v1, 0x1

    :try_start_c
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v21, v2

    int-to-double v1, v3

    :try_start_d
    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_22

    :catch_4
    move-object/from16 v21, v2

    goto :goto_21

    :cond_42
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    :cond_43
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v3, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    goto :goto_1e

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    const/4 v11, 0x0

    goto :goto_1d

    :catch_5
    :cond_44
    move-object/from16 v16, v0

    :catch_6
    :goto_20
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    :catch_7
    :goto_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_45

    if-eqz v18, :cond_45

    move-object/from16 v1, v18

    goto :goto_23

    :cond_45
    move-object v1, v6

    :goto_23
    new-instance v2, Lcom/brisa/local/k;

    invoke-direct {v2}, Lcom/brisa/local/k;-><init>()V

    iget-object v3, v4, LG2/f;->f:Ljava/lang/String;

    iput-object v3, v2, Lcom/brisa/local/k;->b:Ljava/lang/String;

    if-nez v1, :cond_46

    const/4 v3, 0x0

    goto :goto_24

    :cond_46
    iget-object v3, v1, LG2/f;->f:Ljava/lang/String;

    :goto_24
    iput-object v3, v2, Lcom/brisa/local/k;->c:Ljava/lang/String;

    iget v3, v4, LG2/n;->m:I

    iput v3, v2, Lcom/brisa/local/k;->f:I

    iget v3, v4, LG2/n;->n:I

    iput v3, v2, Lcom/brisa/local/k;->g:I

    iget-object v3, v4, LG2/n;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/brisa/local/k;->e:Ljava/lang/String;

    const-string v3, "video/avc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "H.264"

    goto :goto_25

    :cond_47
    const-string v3, "vp9"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_48

    const-string v3, "VP9"

    goto :goto_25

    :cond_48
    const-string v3, "AV1"

    :goto_25
    iput-object v3, v2, Lcom/brisa/local/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_4a

    if-eqz v1, :cond_49

    iget-object v0, v1, LG2/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/brisa/local/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_49
    const/4 v0, 0x1

    goto :goto_26

    :cond_4a
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, v2, Lcom/brisa/local/k;->i:Z

    if-eqz v1, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/brisa/local/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, LG2/b;->k:Ljava/lang/String;

    if-eqz v3, :cond_4b

    const-string v5, "opus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, " \u00b7 Opus"

    goto :goto_27

    :cond_4b
    const-string v3, " \u00b7 AAC"

    :goto_27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/brisa/local/k;->d:Ljava/lang/String;

    :cond_4c
    iget v0, v4, LG2/n;->k:I

    int-to-long v3, v0

    if-nez v1, :cond_4d

    const/4 v0, 0x0

    goto :goto_28

    :cond_4d
    iget v0, v1, LG2/b;->j:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_28
    int-to-long v0, v0

    add-long/2addr v3, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-object/from16 v3, v21

    iget-wide v4, v3, Lcom/brisa/local/l;->f:J

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x8

    div-long/2addr v0, v4

    iput-wide v0, v2, Lcom/brisa/local/k;->h:J

    iget-object v0, v3, Lcom/brisa/local/l;->c:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lcom/brisa/local/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move-object/from16 v1, v20

    const/4 v11, 0x0

    goto/16 :goto_1a

    :cond_4e
    move-object v3, v2

    iget-object v0, v3, Lcom/brisa/local/l;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, v3, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_4f

    goto :goto_29

    :cond_4f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "YouTube no ofrece formatos descargables para este v\u00eddeo. Prueba otro enlace o actualiza Brisa."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    :goto_29
    sget-object v0, Lcom/brisa/local/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, LD2/m;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, LD2/m;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lt v1, v5, :cond_51

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_51
    iget-object v1, v3, Lcom/brisa/local/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Por ahora se descargan v\u00eddeos terminados; los directos a\u00fan no est\u00e1n disponibles."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    :try_start_e
    iget-object v1, v10, LD2/k;->d:LC1/d;

    const-string v2, "playabilityStatus"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v2, "errorScreen"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v2, "playerErrorMessageRenderer"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_2a

    :catch_9
    const/4 v5, 0x0

    :goto_2a
    invoke-static {v5}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    throw v0

    :cond_53
    new-instance v1, Lu2/b;

    invoke-direct {v1, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_54
    new-instance v0, Lu2/d;

    const-string v1, "VISIONOS player response is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v1, Lu2/f;

    const-string v2, "Malformed url: "

    invoke-static {v2, v11}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The url is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0

    :cond_57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "El enlace no identifica un v\u00eddeo de YouTube."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Usa un enlace HTTPS p\u00fablico."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Enlace no v\u00e1lido."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
