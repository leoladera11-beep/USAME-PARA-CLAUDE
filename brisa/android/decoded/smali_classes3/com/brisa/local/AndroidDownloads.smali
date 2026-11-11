.class public final Lcom/brisa/local/AndroidDownloads;
.super Ljava/lang/Object;
.source "AndroidDownloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/AndroidDownloads$Http;
    }
.end annotation


# static fields
.field private static final ACTIVE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/brisa/local/DownloadService;",
            "Lcom/brisa/local/AndroidDownloads$Http;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSPECTION_TTL:J = 0x1d4c0L

.field private static lastLink:Ljava/lang/String;

.field private static lastPlan:Lcom/brisa/local/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/brisa/local/AndroidDownloads;->ACTIVE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/brisa/local/AndroidDownloads;->sourceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancel(Lcom/brisa/local/DownloadService;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/brisa/local/AndroidDownloads;->ACTIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brisa/local/AndroidDownloads$Http;

    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/brisa/local/AndroidDownloads$Http;->cancel()V

    .line 57
    :cond_0
    return-void
.end method

.method public static fetch(Lcom/brisa/local/DownloadService;Lcom/brisa/local/l;Lcom/brisa/local/k;LN/Y;Ljava/io/File;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p3}, LN/Y;->b()Z

    move-result v0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "audio.part"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    if-nez v0, :cond_1

    iget-boolean v2, p1, Lcom/brisa/local/l;->h:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El enlace no ofrece una pista de audio independiente."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v4, p2, Lcom/brisa/local/k;->b:Ljava/lang/String;

    invoke-static {v4, p4, v3}, Lcom/brisa/local/AndroidDownloads;->track(Ljava/lang/String;Ljava/io/File;Z)Lcom/brisa/local/RangeTransfer$Track;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    iget-boolean v4, p1, Lcom/brisa/local/l;->h:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_3

    iget-object v4, p2, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "mp4"

    iget-object p3, p3, LN/Y;->b:Ljava/lang/Object;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 39
    :cond_3
    if-eqz v0, :cond_4

    iget-object p3, p2, Lcom/brisa/local/k;->c:Ljava/lang/String;

    if-eqz p3, :cond_4

    iget-object p2, p2, Lcom/brisa/local/k;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lcom/brisa/local/l;->e:Ljava/lang/String;

    .line 40
    :goto_1
    if-eqz p2, :cond_6

    const-string p3, "clen"

    invoke-static {p2, p3}, Lcom/brisa/local/AndroidDownloads;->number(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x300000

    cmp-long p3, v4, v6

    if-ltz p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {p2, v1, v3}, Lcom/brisa/local/AndroidDownloads;->track(Ljava/lang/String;Ljava/io/File;Z)Lcom/brisa/local/RangeTransfer$Track;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_6
    new-instance p2, Lcom/brisa/local/AndroidDownloads$Http;

    new-instance p3, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/DownloadService;)V

    invoke-direct {p2, p3}, Lcom/brisa/local/AndroidDownloads$Http;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 43
    sget-object p3, Lcom/brisa/local/AndroidDownloads;->ACTIVE:Ljava/util/Map;

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :try_start_0
    new-instance p3, Lcom/brisa/local/RangeTransfer;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/brisa/local/DownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "brisa-download-parts"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/DownloadService;)V

    new-instance v4, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/brisa/local/AndroidDownloads$$ExternalSyntheticLambda2;-><init>(Lcom/brisa/local/DownloadService;)V

    invoke-direct {p3, v0, p2, v3, v4}, Lcom/brisa/local/RangeTransfer;-><init>(Ljava/io/File;Lcom/brisa/local/RangeTransfer$Transport;Ljava/util/function/BooleanSupplier;Ljava/util/function/LongConsumer;)V

    .line 46
    invoke-virtual {p3, v2}, Lcom/brisa/local/RangeTransfer;->download(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p2}, Lcom/brisa/local/AndroidDownloads$Http;->cancel()V

    .line 49
    sget-object p3, Lcom/brisa/local/AndroidDownloads;->ACTIVE:Ljava/util/Map;

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    nop

    .line 51
    iget-boolean p0, p1, Lcom/brisa/local/l;->h:Z

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move-object p4, v1

    :goto_3
    return-object p4

    .line 48
    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/brisa/local/AndroidDownloads$Http;->cancel()V

    .line 49
    sget-object p3, Lcom/brisa/local/AndroidDownloads;->ACTIVE:Ljava/util/Map;

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    throw p1
.end method

.method public static declared-synchronized inspect(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/brisa/local/AndroidDownloads;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 19
    sget-object v3, Lcom/brisa/local/AndroidDownloads;->lastLink:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-wide v3, v3, Lcom/brisa/local/l;->b:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    sget-object v3, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-wide v3, v3, Lcom/brisa/local/l;->b:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    sget-object v1, Lcom/brisa/local/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-object v2, v2, Lcom/brisa/local/l;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    if-eq v1, v2, :cond_1

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/brisa/local/m;->b(Ljava/lang/String;)Lcom/brisa/local/l;

    move-result-object v1

    sput-object v1, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    .line 22
    sput-object p0, Lcom/brisa/local/AndroidDownloads;->lastLink:Ljava/lang/String;

    .line 24
    :cond_1
    sget-object p0, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    invoke-virtual {p0}, Lcom/brisa/local/l;->a()Lorg/json/JSONObject;

    move-result-object p0

    .line 25
    const-string v1, "audioAvailable"

    sget-object v2, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-object v2, v2, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-boolean v2, v2, Lcom/brisa/local/l;->h:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    sget-object v1, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-boolean v1, v1, Lcom/brisa/local/l;->h:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-object v1, v1, Lcom/brisa/local/l;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "audioSize"

    sget-object v2, Lcom/brisa/local/AndroidDownloads;->lastPlan:Lcom/brisa/local/l;

    iget-object v2, v2, Lcom/brisa/local/l;->e:Ljava/lang/String;

    const-string v3, "clen"

    invoke-static {v2, v3}, Lcom/brisa/local/AndroidDownloads;->number(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_3
    monitor-exit v0

    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic lambda$fetch$0(Lcom/brisa/local/DownloadService;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/brisa/local/DownloadService;->b:Z

    return p0
.end method

.method static synthetic lambda$fetch$1(Lcom/brisa/local/DownloadService;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/brisa/local/DownloadService;->b:Z

    return p0
.end method

.method static synthetic lambda$fetch$2(Lcom/brisa/local/DownloadService;J)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/brisa/local/AndroidDownloads;->progress(Lcom/brisa/local/DownloadService;J)V

    return-void
.end method

.method private static number(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 90
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/brisa/local/AndroidDownloads;->parameter(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 91
    :catch_0
    move-exception p0

    return-wide v0
.end method

.method private static parameter(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 95
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    .line 96
    if-eqz p0, :cond_1

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static progress(Lcom/brisa/local/DownloadService;J)V
    .locals 4

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/brisa/local/DownloadService;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/brisa/local/DownloadService;->e:J

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 63
    iget-wide v0, p0, Lcom/brisa/local/DownloadService;->g:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 64
    iput-wide p1, p0, Lcom/brisa/local/DownloadService;->g:J

    .line 65
    const-string p1, "downloading"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/brisa/local/DownloadService;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static sourceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 76
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    const-string v2, "googlevideo.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".googlevideo.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/videoplayback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/brisa/local/AndroidDownloads;->parameter(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "itag"

    invoke-static {p0, v1}, Lcom/brisa/local/AndroidDownloads;->number(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "lmt"

    invoke-static {p0, v3}, Lcom/brisa/local/AndroidDownloads;->number(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "clen"

    invoke-static {p0, v5}, Lcom/brisa/local/AndroidDownloads;->number(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 82
    const-string v7, "[A-Za-z0-9_.-]{1,150}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_1

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "youtube:"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_1
    return-object p0
.end method

.method private static track(Ljava/lang/String;Ljava/io/File;Z)Lcom/brisa/local/RangeTransfer$Track;
    .locals 2

    .line 71
    invoke-static {p0}, Lcom/brisa/local/AndroidDownloads;->sourceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/brisa/local/RangeTransfer$Track;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/brisa/local/RangeTransfer$Track;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    return-object v1
.end method
