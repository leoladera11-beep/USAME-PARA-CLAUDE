.class public final Lcom/brisa/local/AudioExport;
.super Ljava/lang/Object;
.source "AudioExport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;ILjava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    nop

    .line 90
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.brisa.local.DownloadService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 92
    :goto_0
    const-string v2, "com.brisa.local.p"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 93
    invoke-static {v1}, Lcom/brisa/local/AudioExport;->original(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 95
    :try_start_1
    const-string v1, "F1.i"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/io/File;

    aput-object v9, v8, v7

    const-class v9, Ljava/io/File;

    aput-object v9, v8, v6

    const-class v9, Ljava/io/File;

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    filled-new-array {p0, v0, p1, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/brisa/local/AudioExport;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/brisa/local/AudioExport;->audioOnly(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-interface {p4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 98
    :cond_1
    throw v0

    .line 102
    :cond_2
    :goto_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v7

    const-class v1, Ljava/io/File;

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "com.brisa.local.Mp3Encoder"

    invoke-static {p1, v0, p0}, Lcom/brisa/local/AudioExport;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method private static audioOnly(Ljava/io/File;)Z
    .locals 6

    .line 55
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 57
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 58
    nop

    .line 59
    move p0, v1

    move v2, p0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge p0, v4, :cond_1

    .line 60
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_0

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 59
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    if-nez v3, :cond_2

    move v1, p0

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 63
    return v1

    .line 67
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 68
    throw p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    nop

    .line 67
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 65
    return v1
.end method

.method public static ext(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 40
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    invoke-static {v0, p0}, Lcom/brisa/local/AudioExport;->extensionFor([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string p0, "mp3"

    return-object p0
.end method

.method public static extensionFor([BI)Ljava/lang/String;
    .locals 1

    .line 35
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x4

    aget-byte p1, p0, p1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    aget-byte p1, p0, p1

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    aget-byte p1, p0, p1

    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    aget-byte p0, p0, p1

    const/16 p1, 0x70

    if-ne p0, p1, :cond_0

    const-string p0, "m4a"

    goto :goto_0

    :cond_0
    const-string p0, "mp3"

    :goto_0
    return-object p0
.end method

.method private static varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "F1.i"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "s"

    goto :goto_0

    :cond_0
    const-string p0, "a"

    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    return-void

    .line 74
    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 76
    instance-of p2, p1, Ljava/lang/Exception;

    if-nez p2, :cond_2

    .line 77
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 78
    :cond_1
    throw p0

    .line 76
    :cond_2
    check-cast p1, Ljava/lang/Exception;

    throw p1
.end method

.method public static mime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 50
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 51
    :goto_0
    const-string v0, ".m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, ".webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "audio/webm"

    goto :goto_3

    :cond_2
    const-string v0, ".opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "audio/mpeg"

    goto :goto_3

    :cond_4
    :goto_1
    const-string p0, "audio/ogg"

    goto :goto_3

    :cond_5
    :goto_2
    const-string p0, "audio/mp4"

    :goto_3
    return-object p0
.end method

.method public static original(Landroid/content/Context;)Z
    .locals 3

    .line 26
    if-eqz p0, :cond_0

    const-string v0, "brisa-tuning"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "audioFormat"

    const-string v2, "original"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mp3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setFormat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 30
    const-string v0, "brisa-tuning"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mp3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "original"

    :goto_0
    const-string p1, "audioFormat"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method
