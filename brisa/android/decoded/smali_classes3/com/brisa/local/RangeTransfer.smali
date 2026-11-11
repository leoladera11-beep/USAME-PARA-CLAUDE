.class final Lcom/brisa/local/RangeTransfer;
.super Ljava/lang/Object;
.source "RangeTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/RangeTransfer$Transport;,
        Lcom/brisa/local/RangeTransfer$Track;,
        Lcom/brisa/local/RangeTransfer$Version;,
        Lcom/brisa/local/RangeTransfer$Changed;,
        Lcom/brisa/local/RangeTransfer$Reader;,
        Lcom/brisa/local/RangeTransfer$Response;
    }
.end annotation


# static fields
.field private static final CONTENT_RANGE:Ljava/util/regex/Pattern;

.field static final MAX_AGE:J

.field private static final PARALLEL_MIN:J = 0x300000L


# instance fields
.field private final cache:Ljava/io/File;

.field private final cancelled:Ljava/util/function/BooleanSupplier;

.field private final connections:Ljava/util/concurrent/Semaphore;

.field private final progress:Ljava/util/function/LongConsumer;

.field private final transport:Lcom/brisa/local/RangeTransfer$Transport;


# direct methods
.method public static synthetic $r8$lambda$phMJnUSDNE1oaCR8Amcd4RFLhw0(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/brisa/local/RangeTransfer;->MAX_AGE:J

    .line 19
    const-string v0, "bytes (\\d+)-(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/RangeTransfer;->CONTENT_RANGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/brisa/local/RangeTransfer$Transport;Ljava/util/function/BooleanSupplier;Ljava/util/function/LongConsumer;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/brisa/local/RangeTransfer;->connections:Ljava/util/concurrent/Semaphore;

    .line 53
    iput-object p1, p0, Lcom/brisa/local/RangeTransfer;->cache:Ljava/io/File;

    .line 54
    iput-object p2, p0, Lcom/brisa/local/RangeTransfer;->transport:Lcom/brisa/local/RangeTransfer$Transport;

    .line 55
    iput-object p3, p0, Lcom/brisa/local/RangeTransfer;->cancelled:Ljava/util/function/BooleanSupplier;

    .line 56
    iput-object p4, p0, Lcom/brisa/local/RangeTransfer;->progress:Ljava/util/function/LongConsumer;

    .line 57
    return-void
.end method

.method private assemble(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 257
    iget v0, p3, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 258
    invoke-static {p2, v1}, Lcom/brisa/local/RangeTransfer;->part(Ljava/io/File;I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Track;->output:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array p3, v2, [Ljava/nio/file/CopyOption;

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v0, p3, v1

    invoke-static {p2, p1, p3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 259
    return-void

    .line 261
    :cond_0
    iget-wide v2, p3, Lcom/brisa/local/RangeTransfer$Version;->length:J

    invoke-static {p2, v2, v3}, Lcom/brisa/local/RangeTransfer;->checkSpace(Ljava/io/File;J)V

    .line 262
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Track;->output:Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 263
    const/high16 p1, 0x10000

    :try_start_0
    new-array p1, p1, [B

    .line 264
    nop

    .line 265
    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    iget v5, p3, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    if-ge v4, v5, :cond_2

    .line 266
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {p2, v4}, Lcom/brisa/local/RangeTransfer;->part(Ljava/io/File;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 267
    :goto_1
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 269
    invoke-virtual {v0, p1, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 272
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 274
    :cond_2
    iget-wide p1, p3, Lcom/brisa/local/RangeTransfer$Version;->length:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    cmp-long p1, v2, p1

    if-nez p1, :cond_3

    .line 275
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 276
    return-void

    .line 274
    :cond_3
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "La descarga qued\u00f3 incompleta."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 262
    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method private static bounds(Lcom/brisa/local/RangeTransfer$Response;)[J
    .locals 10

    .line 301
    const-string v0, "Content-Range"

    invoke-interface {p0, v0}, Lcom/brisa/local/RangeTransfer$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 302
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 303
    :cond_0
    sget-object v1, Lcom/brisa/local/RangeTransfer;->CONTENT_RANGE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 306
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 307
    cmp-long p0, v2, v5

    if-gtz p0, :cond_2

    cmp-long p0, v5, v8

    if-gez p0, :cond_2

    new-array p0, v7, [J

    const/4 v7, 0x0

    aput-wide v2, p0, v7

    aput-wide v5, p0, v1

    aput-wide v8, p0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :cond_2
    return-object v0

    .line 308
    :catch_0
    move-exception p0

    return-object v0
.end method

.method private checkCancelled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer;->cancelled:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Descarga cancelada."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSpace(Ljava/io/File;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x1000000

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Falta espacio libre para descargar y unir el v\u00eddeo."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_1
    :goto_0
    return-void
.end method

.method private static clear(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 298
    return-void
.end method

.method private copy(Lcom/brisa/local/RangeTransfer$Response;Ljava/io/File;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-interface {p1}, Lcom/brisa/local/RangeTransfer$Response;->stream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 238
    :try_start_1
    invoke-virtual {v0, p5, p6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    const/high16 p2, 0x10000

    new-array p2, p2, [B

    .line 240
    move-wide v1, p5

    .line 241
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 243
    cmp-long v4, p3, v5

    if-ltz v4, :cond_1

    int-to-long v4, v3

    sub-long v6, p3, v1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {v0, p5, p6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 245
    new-instance p2, Lcom/brisa/local/RangeTransfer$Changed;

    invoke-direct {p2}, Lcom/brisa/local/RangeTransfer$Changed;-><init>()V

    throw p2

    .line 247
    :cond_1
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 248
    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 249
    iget-object v5, p0, Lcom/brisa/local/RangeTransfer;->progress:Ljava/util/function/LongConsumer;

    invoke-interface {v5, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :cond_2
    cmp-long p2, v1, v5

    if-eqz p2, :cond_5

    cmp-long p2, p3, v5

    if-ltz p2, :cond_3

    cmp-long p2, v1, p3

    if-nez p2, :cond_5

    .line 252
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 253
    :cond_4
    return-void

    .line 251
    :cond_5
    :try_start_3
    new-instance p2, Ljava/io/EOFException;

    const-string p3, "La conexi\u00f3n se interrumpi\u00f3 antes de completar el archivo."

    invoke-direct {p2, p3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :catchall_0
    move-exception p2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_6

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p2
.end method

.method private static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 373
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 377
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private directory(Lcom/brisa/local/RangeTransfer$Track;)Ljava/io/File;
    .locals 4

    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/brisa/local/RangeTransfer;->cache:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Track;->output:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brisa/local/RangeTransfer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private downloadTrack(Lcom/brisa/local/RangeTransfer$Track;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/brisa/local/RangeTransfer;->directory(Lcom/brisa/local/RangeTransfer$Track;)Ljava/io/File;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 80
    :try_start_0
    invoke-static {v3}, Lcom/brisa/local/RangeTransfer$Version;->read(Ljava/io/File;)Lcom/brisa/local/RangeTransfer$Version;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_1

    invoke-static {p1, v4}, Lcom/brisa/local/RangeTransfer;->resumable(Lcom/brisa/local/RangeTransfer$Track;Lcom/brisa/local/RangeTransfer$Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v4, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {v3, v11}, Lcom/brisa/local/RangeTransfer;->part(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 83
    :try_start_1
    iget-wide v0, v4, Lcom/brisa/local/RangeTransfer$Version;->length:J
    :try_end_1
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v5, 0x1

    sub-long v8, v0, v5

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/brisa/local/RangeTransfer;->segment(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;IJJZ)V

    .line 84
    invoke-direct {p0, v2, v3, v4}, Lcom/brisa/local/RangeTransfer;->assemble(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    :try_end_2
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 85
    :cond_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v2, p1

    .line 87
    :goto_0
    :try_start_3
    invoke-static {v3}, Lcom/brisa/local/RangeTransfer;->clear(Ljava/io/File;)V

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v11, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_1

    .line 81
    :cond_1
    move-object v1, p0

    move-object v2, p1

    .line 92
    :goto_1
    iget-boolean p1, v2, Lcom/brisa/local/RangeTransfer$Track;->split:Z

    if-eqz p1, :cond_7

    .line 93
    move-object v6, v4

    move-object v4, v2

    invoke-direct {p0, v4, v3}, Lcom/brisa/local/RangeTransfer;->probe(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)Lcom/brisa/local/RangeTransfer$Version;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    if-nez v2, :cond_3

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 94
    :cond_2
    return-void

    .line 95
    :cond_3
    :try_start_4
    iget p1, v2, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 96
    iget-wide v7, v2, Lcom/brisa/local/RangeTransfer$Version;->length:J

    invoke-static {v3, v7, v8}, Lcom/brisa/local/RangeTransfer;->checkSpace(Ljava/io/File;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :try_start_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    move-object v5, v3

    move v3, v11

    :goto_2
    :try_start_6
    iget v0, v2, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    if-ge v3, v0, :cond_4

    .line 100
    nop

    .line 101
    new-instance v0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v6}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda1;-><init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Version;ILcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    :try_end_6
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v12, v6

    move-object v6, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v12

    move-object v12, v5

    move v5, v3

    move-object v3, v12

    :try_start_7
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    move-object v5, v3

    move v3, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v0

    goto :goto_2

    .line 108
    :cond_4
    move-object v0, v2

    move-object v2, v4

    move-object v3, v5

    invoke-direct {p0, p1, v11}, Lcom/brisa/local/RangeTransfer;->run(Ljava/util/List;Z)V

    .line 109
    invoke-direct {p0, v2, v3, v0}, Lcom/brisa/local/RangeTransfer;->assemble(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    :try_end_7
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 110
    :cond_5
    return-void

    .line 111
    :catch_2
    move-exception v0

    goto :goto_3

    .line 118
    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_4

    .line 111
    :catch_3
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v4

    goto :goto_3

    .line 95
    :cond_6
    move-object v2, v4

    .line 116
    :cond_7
    :goto_3
    :try_start_8
    invoke-direct {p0, v2, v3}, Lcom/brisa/local/RangeTransfer;->full(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 120
    :cond_8
    return-void

    .line 118
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_4
    move-object p1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 119
    :cond_9
    throw p1
.end method

.method private full(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Track;->url:Ljava/lang/String;

    new-instance v1, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda6;-><init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/brisa/local/RangeTransfer;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brisa/local/RangeTransfer$Reader;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method private fullResponse(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/16 v0, 0xc8

    invoke-static {p3, v0}, Lcom/brisa/local/RangeTransfer;->requireMedia(Lcom/brisa/local/RangeTransfer$Response;I)V

    .line 154
    invoke-interface {p3}, Lcom/brisa/local/RangeTransfer$Response;->length()J

    move-result-wide v2

    .line 155
    invoke-static {p3}, Lcom/brisa/local/RangeTransfer;->tag(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/String;

    move-result-object v4

    .line 156
    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    const-string v1, "youtube:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "La pista cambi\u00f3 de tama\u00f1o. Vuelve a consultar el enlace."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    :goto_0
    new-instance v1, Lcom/brisa/local/RangeTransfer$Version;

    invoke-interface {p3}, Lcom/brisa/local/RangeTransfer$Response;->resource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/RangeTransfer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/brisa/local/RangeTransfer$Version;-><init>(JLjava/lang/String;ILjava/lang/String;)V

    .line 160
    move-object v10, v1

    invoke-static {p2, v10}, Lcom/brisa/local/RangeTransfer;->reset(Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V

    .line 161
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/brisa/local/RangeTransfer;->part(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    .line 162
    invoke-static {p2, v2, v3}, Lcom/brisa/local/RangeTransfer;->checkSpace(Ljava/io/File;J)V

    .line 164
    const-wide/16 v6, 0x0

    move-wide v4, v2

    move-object v2, p3

    move-object v3, v1

    move-object v1, p0

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/brisa/local/RangeTransfer;->copy(Lcom/brisa/local/RangeTransfer$Response;Ljava/io/File;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v10

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    move-object p3, v3

    move-wide v2, v4

    .line 166
    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 167
    invoke-static {p1, v10}, Lcom/brisa/local/RangeTransfer;->resumable(Lcom/brisa/local/RangeTransfer$Track;Lcom/brisa/local/RangeTransfer$Version;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-gez p3, :cond_2

    .line 168
    const-wide/16 v0, 0x1

    sub-long v8, v2, v0

    move-object v1, v10

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/brisa/local/RangeTransfer;->segment(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;IJJZ)V

    .line 170
    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/brisa/local/RangeTransfer;->assemble(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V

    .line 171
    return-void

    .line 167
    :cond_2
    move-object v1, p0

    throw v0
.end method

.method static synthetic lambda$segment$4(Lcom/brisa/local/RangeTransfer$Version;Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brisa/local/RangeTransfer;->validateRange(Lcom/brisa/local/RangeTransfer$Response;Lcom/brisa/local/RangeTransfer$Version;JJ)V

    .line 186
    const/4 p0, 0x0

    return-object p0
.end method

.method private static part(Ljava/io/File;I)Ljava/io/File;
    .locals 2

    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".part"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private probe(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)Lcom/brisa/local/RangeTransfer$Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Track;->url:Ljava/lang/String;

    new-instance v1, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;)V

    const-string p1, "bytes=0-0"

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/brisa/local/RangeTransfer;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brisa/local/RangeTransfer$Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/RangeTransfer$Version;

    return-object p1
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brisa/local/RangeTransfer$Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/brisa/local/RangeTransfer$Reader<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer;->connections:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    nop

    .line 326
    :try_start_1
    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 327
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer;->transport:Lcom/brisa/local/RangeTransfer$Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/brisa/local/RangeTransfer$Transport;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/RangeTransfer$Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p4, p1}, Lcom/brisa/local/RangeTransfer$Reader;->read(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-interface {p1}, Lcom/brisa/local/RangeTransfer$Response;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/brisa/local/RangeTransfer;->connections:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 327
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_4
    invoke-interface {p1}, Lcom/brisa/local/RangeTransfer$Response;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 329
    :catchall_2
    move-exception p1

    iget-object p2, p0, Lcom/brisa/local/RangeTransfer;->connections:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 330
    throw p1

    .line 321
    :catch_0
    move-exception p1

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 323
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Descarga cancelada."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static requireMedia(Lcom/brisa/local/RangeTransfer$Response;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 228
    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Lcom/brisa/local/RangeTransfer$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lcom/brisa/local/RangeTransfer$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    if-eqz p1, :cond_0

    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 231
    const-string p1, "identity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El enlace no devolvi\u00f3 un archivo multimedia v\u00e1lido."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_2
    :goto_0
    return-void

    .line 227
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "La descarga fall\u00f3 (HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static reset(Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p0}, Lcom/brisa/local/RangeTransfer;->clear(Ljava/io/File;)V

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 291
    iget-wide v0, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/brisa/local/RangeTransfer$Version;->write(Ljava/io/File;)V

    .line 292
    :cond_0
    return-void
.end method

.method private static resumable(Lcom/brisa/local/RangeTransfer$Track;Lcom/brisa/local/RangeTransfer$Version;)Z
    .locals 4

    .line 212
    iget-wide v0, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    .line 213
    const-string v1, "youtube:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 212
    :goto_0
    return p0
.end method

.method private run(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 335
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 337
    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 336
    :catch_1
    move-exception p1

    throw p1

    .line 339
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 340
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 342
    const-wide v4, 0x7fffffffffffffffL

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Callable;

    invoke-interface {v3, v7}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 343
    :cond_1
    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/brisa/local/RangeTransfer;->transport:Lcom/brisa/local/RangeTransfer$Transport;

    invoke-interface {p1}, Lcom/brisa/local/RangeTransfer$Transport;->cancel()V

    .line 353
    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 355
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    .line 357
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_4

    .line 358
    :try_start_3
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    goto :goto_2

    :catch_2
    move-exception p1

    move p1, v2

    goto :goto_2

    .line 362
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 364
    :cond_5
    nop

    .line 365
    return-void

    .line 362
    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 363
    :cond_6
    throw p2

    .line 352
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 347
    :catch_3
    move-exception p1

    .line 348
    :try_start_4
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 349
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 350
    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 344
    :catch_4
    move-exception p1

    .line 345
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 346
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Descarga cancelada."

    invoke-direct {v1, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 352
    :goto_3
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/brisa/local/RangeTransfer;->transport:Lcom/brisa/local/RangeTransfer$Transport;

    invoke-interface {p2}, Lcom/brisa/local/RangeTransfer$Transport;->cancel()V

    .line 353
    :cond_8
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 355
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    .line 357
    :goto_4
    :try_start_5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_9

    .line 358
    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 359
    goto :goto_4

    :catch_5
    move-exception p2

    move p2, v2

    goto :goto_4

    .line 362
    :cond_9
    if-eqz p2, :cond_a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 364
    :cond_a
    throw p1

    .line 362
    :catchall_2
    move-exception p1

    if-eqz p2, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 363
    :cond_b
    throw p1
.end method

.method private segment(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;IJJZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-wide/from16 v7, p7

    move/from16 v3, p4

    invoke-static {v0, v3}, Lcom/brisa/local/RangeTransfer;->part(Ljava/io/File;I)Ljava/io/File;

    move-result-object v9

    .line 176
    sub-long v3, v7, p5

    const-wide/16 v5, 0x1

    add-long v10, v3, v5

    .line 177
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 178
    cmp-long v5, v3, v10

    if-gtz v5, :cond_5

    .line 179
    sub-long v13, v10, v3

    invoke-static {v0, v13, v14}, Lcom/brisa/local/RangeTransfer;->checkSpace(Ljava/io/File;J)V

    .line 180
    if-eqz p9, :cond_0

    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-lez v0, :cond_0

    if-gez v5, :cond_0

    iget-object v0, v1, Lcom/brisa/local/RangeTransfer;->progress:Ljava/util/function/LongConsumer;

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 182
    :cond_0
    if-nez v5, :cond_3

    .line 183
    if-eqz p9, :cond_1

    iget v0, v2, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 184
    iget-object v0, v12, Lcom/brisa/local/RangeTransfer$Track;->url:Ljava/lang/String;

    iget-object v5, v2, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    new-instance v6, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda2;-><init>(Lcom/brisa/local/RangeTransfer$Version;)V

    const-string v2, "bytes=0-0"

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/brisa/local/RangeTransfer;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brisa/local/RangeTransfer$Reader;)Ljava/lang/Object;

    .line 189
    :cond_1
    if-eqz p9, :cond_2

    iget-object v0, v1, Lcom/brisa/local/RangeTransfer;->progress:Ljava/util/function/LongConsumer;

    invoke-interface {v0, v3, v4}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 190
    :cond_2
    return-void

    .line 192
    :cond_3
    const/4 v0, 0x0

    move v13, v0

    .line 193
    :goto_0
    invoke-direct {v1}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 194
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 196
    :try_start_0
    iget-object v14, v12, Lcom/brisa/local/RangeTransfer$Track;->url:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v3, p5, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    move-object v3, v0

    new-instance v0, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;

    move-object v12, v3

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v11}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda3;-><init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Version;JJJLjava/io/File;J)V

    invoke-direct {v1, v14, v15, v12, v0}, Lcom/brisa/local/RangeTransfer;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brisa/local/RangeTransfer$Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/brisa/local/RangeTransfer$Changed; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-direct {v1}, Lcom/brisa/local/RangeTransfer;->checkCancelled()V

    .line 206
    const/4 v3, 0x2

    if-eq v13, v3, :cond_4

    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lcom/brisa/local/RangeTransfer;->resumable(Lcom/brisa/local/RangeTransfer$Track;Lcom/brisa/local/RangeTransfer$Version;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-gez v3, :cond_4

    .line 192
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, p7

    goto :goto_0

    .line 206
    :cond_4
    throw v0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    throw v0

    .line 178
    :cond_5
    new-instance v0, Lcom/brisa/local/RangeTransfer$Changed;

    invoke-direct {v0}, Lcom/brisa/local/RangeTransfer$Changed;-><init>()V

    throw v0
.end method

.method private static tag(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/String;
    .locals 2

    .line 312
    const-string v0, "ETag"

    invoke-interface {p0, v0}, Lcom/brisa/local/RangeTransfer$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 313
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static validateRange(Lcom/brisa/local/RangeTransfer$Response;Lcom/brisa/local/RangeTransfer$Version;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result v0

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_3

    .line 218
    const/16 v0, 0xce

    invoke-static {p0, v0}, Lcom/brisa/local/RangeTransfer;->requireMedia(Lcom/brisa/local/RangeTransfer$Response;I)V

    .line 219
    invoke-static {p0}, Lcom/brisa/local/RangeTransfer;->bounds(Lcom/brisa/local/RangeTransfer$Response;)[J

    move-result-object v0

    .line 220
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_2

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iget-wide v3, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Version;->resource:Ljava/lang/String;

    .line 221
    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->resource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/RangeTransfer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lcom/brisa/local/RangeTransfer;->tag(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    :cond_0
    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    invoke-interface {p0}, Lcom/brisa/local/RangeTransfer$Response;->length()J

    move-result-wide p0

    sub-long/2addr p4, p2

    const-wide/16 p2, 0x1

    add-long/2addr p4, p2

    cmp-long p0, p0, p4

    if-nez p0, :cond_2

    .line 224
    :cond_1
    return-void

    .line 223
    :cond_2
    new-instance p0, Lcom/brisa/local/RangeTransfer$Changed;

    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer$Changed;-><init>()V

    throw p0

    .line 217
    :cond_3
    new-instance p0, Lcom/brisa/local/RangeTransfer$Changed;

    invoke-direct {p0}, Lcom/brisa/local/RangeTransfer$Changed;-><init>()V

    throw p0
.end method


# virtual methods
.method download(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brisa/local/RangeTransfer$Track;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer;->cache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 62
    iget-object v0, p0, Lcom/brisa/local/RangeTransfer;->cache:Ljava/io/File;

    new-instance v4, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-wide v8, Lcom/brisa/local/RangeTransfer;->MAX_AGE:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    :cond_0
    invoke-static {v5}, Lcom/brisa/local/RangeTransfer;->clear(Ljava/io/File;)V

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brisa/local/RangeTransfer$Track;

    new-instance v3, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Lcom/brisa/local/RangeTransfer$$ExternalSyntheticLambda5;-><init>(Lcom/brisa/local/RangeTransfer;Lcom/brisa/local/RangeTransfer$Track;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/brisa/local/RangeTransfer;->run(Ljava/util/List;Z)V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brisa/local/RangeTransfer$Track;

    invoke-direct {p0, v0}, Lcom/brisa/local/RangeTransfer;->directory(Lcom/brisa/local/RangeTransfer$Track;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/RangeTransfer;->clear(Ljava/io/File;)V

    goto :goto_2

    .line 70
    :cond_4
    return-void
.end method

.method synthetic lambda$download$0$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Track;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/brisa/local/RangeTransfer;->downloadTrack(Lcom/brisa/local/RangeTransfer$Track;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$downloadTrack$1$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Version;ILcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p5

    iget-wide v1, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    iget v5, p1, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    int-to-long v5, v5

    div-long/2addr v1, v5

    int-to-long v5, p2

    mul-long/2addr v5, v1

    .line 103
    iget v1, p1, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-wide v7, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    int-to-long v9, v1

    div-long/2addr v7, v9

    add-int/lit8 v1, p2, 0x1

    int-to-long v9, v1

    mul-long/2addr v7, v9

    .line 104
    :goto_0
    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/brisa/local/RangeTransfer$Version;->same(Lcom/brisa/local/RangeTransfer$Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v9, v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v9}, Lcom/brisa/local/RangeTransfer;->segment(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;IJJZ)V

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$full$3$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/16 v0, 0xc8

    invoke-static {p3, v0}, Lcom/brisa/local/RangeTransfer;->requireMedia(Lcom/brisa/local/RangeTransfer$Response;I)V

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/brisa/local/RangeTransfer;->fullResponse(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)V

    .line 148
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$probe$2$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)Lcom/brisa/local/RangeTransfer$Version;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-interface {p3}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/brisa/local/RangeTransfer;->fullResponse(Lcom/brisa/local/RangeTransfer$Track;Ljava/io/File;Lcom/brisa/local/RangeTransfer$Response;)V

    .line 126
    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_0
    invoke-interface {p3}, Lcom/brisa/local/RangeTransfer$Response;->status()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/brisa/local/RangeTransfer$Version;->SINGLE:Lcom/brisa/local/RangeTransfer$Version;

    return-object p1

    .line 129
    :cond_1
    const/16 v0, 0xce

    invoke-static {p3, v0}, Lcom/brisa/local/RangeTransfer;->requireMedia(Lcom/brisa/local/RangeTransfer$Response;I)V

    .line 130
    invoke-static {p3}, Lcom/brisa/local/RangeTransfer;->bounds(Lcom/brisa/local/RangeTransfer$Response;)[J

    move-result-object v0

    .line 131
    if-eqz v0, :cond_7

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const/4 v2, 0x1

    aget-wide v6, v0, v2

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {p3}, Lcom/brisa/local/RangeTransfer;->tag(Lcom/brisa/local/RangeTransfer$Response;)Ljava/lang/String;

    move-result-object v7

    .line 135
    iget-object v3, p1, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    const-string v4, "youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v5, v0, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 136
    :cond_3
    aget-wide v2, v0, v4

    const-wide/32 v5, 0x300000

    cmp-long p1, v2, v5

    if-ltz p1, :cond_6

    if-nez v7, :cond_4

    if-nez v1, :cond_4

    goto :goto_0

    .line 137
    :cond_4
    move p1, v4

    new-instance v4, Lcom/brisa/local/RangeTransfer$Version;

    aget-wide v5, v0, p1

    invoke-interface {p3}, Lcom/brisa/local/RangeTransfer$Response;->resource()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brisa/local/RangeTransfer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x3

    invoke-direct/range {v4 .. v9}, Lcom/brisa/local/RangeTransfer$Version;-><init>(JLjava/lang/String;ILjava/lang/String;)V

    .line 138
    invoke-static {p2}, Lcom/brisa/local/RangeTransfer$Version;->read(Ljava/io/File;)Lcom/brisa/local/RangeTransfer$Version;

    move-result-object p1

    .line 139
    invoke-virtual {v4, p1}, Lcom/brisa/local/RangeTransfer$Version;->same(Lcom/brisa/local/RangeTransfer$Version;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p2, v4}, Lcom/brisa/local/RangeTransfer;->reset(Ljava/io/File;Lcom/brisa/local/RangeTransfer$Version;)V

    .line 140
    :cond_5
    return-object v4

    .line 136
    :cond_6
    :goto_0
    sget-object p1, Lcom/brisa/local/RangeTransfer$Version;->SINGLE:Lcom/brisa/local/RangeTransfer$Version;

    return-object p1

    .line 131
    :cond_7
    :goto_1
    sget-object p1, Lcom/brisa/local/RangeTransfer$Version;->SINGLE:Lcom/brisa/local/RangeTransfer$Version;

    return-object p1
.end method

.method synthetic lambda$segment$5$com-brisa-local-RangeTransfer(Lcom/brisa/local/RangeTransfer$Version;JJJLjava/io/File;JLcom/brisa/local/RangeTransfer$Response;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    add-long v2, p2, p4

    move-object v1, p1

    move-wide/from16 v4, p6

    move-object/from16 v0, p11

    invoke-static/range {v0 .. v5}, Lcom/brisa/local/RangeTransfer;->validateRange(Lcom/brisa/local/RangeTransfer$Response;Lcom/brisa/local/RangeTransfer$Version;JJ)V

    .line 198
    move-object v4, p0

    move-wide v9, p4

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    move-object/from16 v5, p11

    invoke-direct/range {v4 .. v10}, Lcom/brisa/local/RangeTransfer;->copy(Lcom/brisa/local/RangeTransfer$Response;Ljava/io/File;JJ)V

    .line 199
    const/4 p1, 0x0

    return-object p1
.end method
