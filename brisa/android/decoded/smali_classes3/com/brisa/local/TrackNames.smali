.class public final Lcom/brisa/local/TrackNames;
.super Ljava/lang/Object;
.source "TrackNames.java"


# static fields
.field private static final ADORNOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUDIO:Ljava/util/regex/Pattern;

.field private static final CHANNELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEDIA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "official video"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "official music video"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "official audio"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "official lyric video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "official lyrics video"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "official visualizer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "official mv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "official hd video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "official 4k video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "video oficial"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "v\u00eddeo oficial"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "videoclip oficial"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "audio oficial"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "video lyric oficial"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lyric video"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lyrics video"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "video lyric"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lyrics"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "letra"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "con letra"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "video con letra"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "visualizer"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "audio"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "video"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "v\u00eddeo"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mv"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "m/v"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hd"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "hq"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "4k"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "1080p"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "720p"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/TrackNames;->ADORNOS:Ljava/util/List;

    .line 29
    const-string v0, "(?i)\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|mp4|amr|aiff?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/TrackNames;->AUDIO:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "(?i)\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|mp4|amr|aiff?|mkv|mov|3gp)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/TrackNames;->MEDIA:Ljava/util/regex/Pattern;

    .line 33
    new-instance v0, Lcom/brisa/local/TrackNames$1;

    invoke-direct {v0}, Lcom/brisa/local/TrackNames$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/TrackNames;->CHANNELS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channel(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 82
    const-string v0, "d"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "videoDetails"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "author"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 85
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/brisa/local/TrackNames;->CHANNELS:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    nop

    .line 87
    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 38
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    move-object v2, p0

    .line 42
    :goto_0
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x5b

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 43
    if-gez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 44
    :goto_1
    if-gez v4, :cond_3

    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4

    const/16 v3, 0x29

    goto :goto_2

    :cond_4
    const/16 v3, 0x5d

    :goto_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 46
    if-gez v3, :cond_6

    .line 51
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[\\s|-]+|[\\s|-]+$"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    .line 47
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 48
    sget-object v5, Lcom/brisa/local/TrackNames;->ADORNOS:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 49
    :cond_7
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    goto :goto_0
.end method

.method public static complete(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "artist"

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/brisa/local/TrackNames;->AUDIO:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "offlineReady"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    :cond_1
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brisa/local/TrackNames;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/brisa/local/TrackNames;->names(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 120
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object p0, p0, v4

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_2
    return-object p1
.end method

.method public static entry(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v0, v1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "a"

    const-string v2, "c"

    invoke-static {v1, v2, v0, p0}, Lcom/brisa/local/MobileVideoFiles;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 129
    :try_start_0
    invoke-static {p1, p0}, Lcom/brisa/local/TrackNames;->complete(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    return-object p0
.end method

.method public static forDownload(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {p1}, Lcom/brisa/local/TrackNames;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/brisa/local/TrackNames;->MEDIA:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/brisa/local/TrackNames;->CHANNELS:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/brisa/local/TrackNames;->names(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/brisa/local/TrackNames;->names(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static names(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 62
    invoke-static {p0}, Lcom/brisa/local/TrackNames;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, " - "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " \u2013 "

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " \u2014 "

    const/4 v5, 0x2

    aput-object v2, v1, v5

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, v1, v2

    .line 64
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 65
    if-lez v7, :cond_0

    .line 66
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-array p0, v5, [Ljava/lang/String;

    aput-object v6, p0, v3

    aput-object v8, p0, v4

    return-object p0

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_1
    const-string v0, " - Topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    return-object v0
.end method

.method static remember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/brisa/local/TrackNames;->CHANNELS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static rename(Ljava/lang/String;)V
    .locals 3

    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    const-string p0, "com.brisa.local.PlaybackService"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 141
    const-string v1, "z"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    instance-of v2, v1, Landroid/app/Service;

    if-nez v2, :cond_0

    return-void

    .line 143
    :cond_0
    const-string v2, "u"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance v2, Lcom/brisa/local/TrackNames$2;

    invoke-direct {v2, v1, v0}, Lcom/brisa/local/TrackNames$2;-><init>(Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 155
    return-void
.end method

.method public static save(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    const-string v0, "title"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "audio"

    const-string v4, "kind"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    .line 103
    nop

    .line 104
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    .line 105
    :goto_0
    :try_start_2
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/brisa/local/TrackNames;->forDownload(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "artist"

    aget-object v3, v3, v1

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    :cond_0
    :goto_1
    nop

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v0, v1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "a"

    const-string v1, "z"

    invoke-static {p1, v1, v0, p0}, Lcom/brisa/local/MobileVideoFiles;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/brisa/local/TrackNames;->AUDIO:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
