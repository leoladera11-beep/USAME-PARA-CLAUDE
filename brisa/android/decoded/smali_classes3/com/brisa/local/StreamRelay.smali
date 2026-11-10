.class public final Lcom/brisa/local/StreamRelay;
.super Ljava/lang/Object;
.source "StreamRelay.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/StreamRelay$Source;,
        Lcom/brisa/local/StreamRelay$Reply;,
        Lcom/brisa/local/StreamRelay$Refused;
    }
.end annotation


# static fields
.field private static final HEAD_LIMIT:I = 0x2000


# instance fields
.field private final secret:Ljava/lang/String;

.field private volatile server:Ljava/net/ServerSocket;

.field private final source:Lcom/brisa/local/StreamRelay$Source;

.field private final workers:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/brisa/local/StreamRelay$Source;Ljava/lang/String;)V
    .locals 9

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p2, :cond_0

    const-string v0, "[A-Za-z0-9]{16,128}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/brisa/local/StreamRelay;->source:Lcom/brisa/local/StreamRelay$Source;

    .line 69
    iput-object p2, p0, Lcom/brisa/local/StreamRelay;->secret:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-wide/16 v4, 0x14

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/brisa/local/StreamRelay;->workers:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Secreto no v\u00e1lido"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->reason(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->reason(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 149
    return-void
.end method

.method private static head(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 154
    const/4 v2, 0x0

    move v3, v2

    .line 155
    :goto_0
    if-ge v3, v0, :cond_2

    .line 156
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 157
    if-gez v4, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 159
    const/4 v3, 0x4

    if-lt v5, v3, :cond_1

    add-int/lit8 v3, v5, -0x4

    aget-byte v3, v1, v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v5, -0x3

    aget-byte v3, v1, v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_1

    add-int/lit8 v3, v5, -0x2

    aget-byte v3, v1, v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v5, -0x1

    aget-byte v3, v1, v3

    if-ne v3, v6, :cond_1

    .line 160
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0

    .line 161
    :cond_1
    move v3, v5

    goto :goto_0

    .line 162
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "brisa-stream"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 74
    return-object v0
.end method

.method private static quietClose(Ljava/io/Closeable;)V
    .locals 0

    .line 121
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    :cond_0
    :goto_0
    return-void
.end method

.method private static reason(I)Ljava/lang/String;
    .locals 1

    .line 129
    sparse-switch p0, :sswitch_data_0

    .line 139
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const-string p0, "Bad Gateway"

    goto :goto_0

    .line 138
    :sswitch_0
    const-string p0, "Service Unavailable"

    return-object p0

    .line 137
    :sswitch_1
    const-string p0, "Range Not Satisfiable"

    return-object p0

    .line 136
    :sswitch_2
    const-string p0, "Method Not Allowed"

    return-object p0

    .line 135
    :sswitch_3
    const-string p0, "Not Found"

    return-object p0

    .line 134
    :sswitch_4
    const-string p0, "Forbidden"

    return-object p0

    .line 133
    :sswitch_5
    const-string p0, "Unauthorized"

    return-object p0

    .line 132
    :sswitch_6
    const-string p0, "Bad Request"

    return-object p0

    .line 131
    :sswitch_7
    const-string p0, "Partial Content"

    return-object p0

    .line 130
    :sswitch_8
    const-string p0, "OK"

    return-object p0

    .line 139
    :cond_0
    const-string p0, "Error"

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_8
        0xce -> :sswitch_7
        0x190 -> :sswitch_6
        0x191 -> :sswitch_5
        0x193 -> :sswitch_4
        0x194 -> :sswitch_3
        0x195 -> :sswitch_2
        0x1a0 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 125
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->workers:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method synthetic lambda$start$1$com-brisa-local-StreamRelay(Ljava/net/Socket;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/brisa/local/StreamRelay;->serve(Ljava/net/Socket;)V

    return-void
.end method

.method synthetic lambda$start$2$com-brisa-local-StreamRelay(Ljava/net/ServerSocket;)V
    .locals 3

    .line 84
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    nop

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/brisa/local/StreamRelay;->workers:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda0;-><init>(Lcom/brisa/local/StreamRelay;Ljava/net/Socket;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    invoke-static {v0}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 96
    :goto_1
    goto :goto_0

    .line 88
    :catch_1
    move-exception p1

    .line 89
    nop

    .line 97
    :cond_0
    return-void
.end method

.method public port()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    .line 105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method serve(Ljava/net/Socket;)V
    .locals 13

    .line 166
    const-string v0, "\r\n"

    .line 168
    const/16 v1, 0x3a98

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 170
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 171
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/brisa/local/StreamRelay;->head(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const/16 v5, 0x190

    if-nez v4, :cond_0

    invoke-static {v3, v5, v2}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 172
    return-void

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 174
    const/4 v6, 0x0

    aget-object v7, v4, v6

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 175
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    const/4 v8, 0x2

    aget-object v10, v7, v8

    const-string v11, "HTTP/1."

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_5

    .line 176
    :cond_1
    aget-object v5, v7, v6

    const-string v10, "HEAD"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 177
    if-nez v5, :cond_2

    aget-object v10, v7, v6

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/16 v0, 0x195

    invoke-static {v3, v0, v2}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 177
    return-void

    .line 178
    :cond_2
    :try_start_2
    aget-object v7, v7, v1

    const-string v10, "/"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 179
    array-length v10, v7

    if-ne v10, v9, :cond_c

    aget-object v9, v7, v6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    aget-object v9, v7, v1

    iget-object v10, p0, Lcom/brisa/local/StreamRelay;->secret:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/brisa/local/StreamRelay;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    aget-object v9, v7, v8

    const-string v10, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_4

    .line 180
    :cond_3
    nop

    .line 181
    move-object v9, v2

    :goto_0
    array-length v10, v4

    if-ge v1, v10, :cond_5

    .line 182
    aget-object v10, v4, v1

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 183
    if-lez v10, :cond_4

    aget-object v11, v4, v1

    invoke-virtual {v11, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "range"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 184
    aget-object v11, v4, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 185
    const-string v11, "bytes=\\d*-\\d*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "bytes=-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_4

    move-object v9, v10

    .line 181
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/brisa/local/StreamRelay;->source:Lcom/brisa/local/StreamRelay$Source;

    aget-object v4, v7, v8

    invoke-interface {v1, v4, v9}, Lcom/brisa/local/StreamRelay$Source;->open(Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/StreamRelay$Reply;

    move-result-object v1
    :try_end_3
    .catch Lcom/brisa/local/StreamRelay$Refused; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    nop

    .line 198
    :try_start_4
    iget-object v2, v1, Lcom/brisa/local/StreamRelay$Reply;->body:Ljava/io/InputStream;

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "HTTP/1.1 "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/brisa/local/StreamRelay$Reply;->status:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/brisa/local/StreamRelay$Reply;->status:I

    invoke-static {v7}, Lcom/brisa/local/StreamRelay;->reason(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string v7, "Content-Type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/brisa/local/StreamRelay$Reply;->type:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/brisa/local/StreamRelay$Reply;->type:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    iget-object v8, v1, Lcom/brisa/local/StreamRelay$Reply;->type:Ljava/lang/String;

    const-string v9, "[\\r\\n]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_7
    :goto_1
    const-string v8, "application/octet-stream"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v7, v1, Lcom/brisa/local/StreamRelay$Reply;->length:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    const-string v7, "Content-Length: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/brisa/local/StreamRelay$Reply;->length:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_8
    iget-object v7, v1, Lcom/brisa/local/StreamRelay$Reply;->range:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/brisa/local/StreamRelay$Reply;->range:Ljava/lang/String;

    const-string v8, "bytes [0-9*/-]{1,80}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "Content-Range: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Lcom/brisa/local/StreamRelay$Reply;->range:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_9
    const-string v0, "Accept-Ranges: bytes\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 205
    if-nez v5, :cond_b

    if-eqz v2, :cond_b

    .line 207
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 208
    :cond_a
    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_b

    if-lez v1, :cond_a

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 210
    :cond_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_6

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v0, "No se pudo leer el archivo remoto."

    const/16 v1, 0x1f6

    invoke-static {v3, v1, v0}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 196
    return-void

    .line 191
    :catch_1
    move-exception v0

    .line 192
    :try_start_5
    iget v1, v0, Lcom/brisa/local/StreamRelay$Refused;->status:I

    invoke-virtual {v0}, Lcom/brisa/local/StreamRelay$Refused;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 193
    return-void

    .line 179
    :cond_c
    :goto_4
    const/16 v0, 0x194

    :try_start_6
    invoke-static {v3, v0, v2}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 179
    return-void

    .line 175
    :cond_d
    :goto_5
    :try_start_7
    invoke-static {v3, v5, v2}, Lcom/brisa/local/StreamRelay;->fail(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 216
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 175
    return-void

    .line 216
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 218
    throw v0

    .line 213
    :catch_2
    move-exception v0

    goto :goto_6

    .line 211
    :catch_3
    move-exception v0

    .line 216
    :goto_6
    invoke-static {v2}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 217
    invoke-static {p1}, Lcom/brisa/local/StreamRelay;->quietClose(Ljava/io/Closeable;)V

    .line 218
    nop

    .line 219
    return-void
.end method

.method public declared-synchronized start()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 81
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 82
    iput-object v0, p0, Lcom/brisa/local/StreamRelay;->server:Ljava/net/ServerSocket;

    .line 83
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/brisa/local/StreamRelay$$ExternalSyntheticLambda2;-><init>(Lcom/brisa/local/StreamRelay;Ljava/net/ServerSocket;)V

    const-string v3, "brisa-stream-accept"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 100
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public url(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brisa/local/StreamRelay;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brisa/local/StreamRelay;->secret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
