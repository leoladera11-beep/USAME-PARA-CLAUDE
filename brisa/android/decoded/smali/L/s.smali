.class public final LL/s;
.super LL/c;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I

.field public final k:LN0/O;

.field public final l:LN0/O;

.field public m:LL/n;

.field public n:Ljava/net/HttpURLConnection;

.field public o:Ljava/io/InputStream;

.field public p:Z

.field public q:I

.field public r:J

.field public s:J


# direct methods
.method public constructor <init>(IILN0/O;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LL/c;-><init>(Z)V

    iput p1, p0, LL/s;->i:I

    iput p2, p0, LL/s;->j:I

    iput-object p3, p0, LL/s;->k:LN0/O;

    new-instance p1, LN0/O;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, LN0/O;-><init>(I)V

    iput-object p1, p0, LL/s;->l:LN0/O;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LL/s;->o:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, LL/w;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v2}, LL/w;-><init>(IILjava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, LL/s;->o:Ljava/io/InputStream;

    invoke-virtual {p0}, LL/s;->h()V

    iget-boolean v2, p0, LL/s;->p:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, LL/s;->p:Z

    invoke-virtual {p0}, LL/c;->c()V

    :cond_1
    iput-object v1, p0, LL/s;->n:Ljava/net/HttpURLConnection;

    iput-object v1, p0, LL/s;->m:LL/n;

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void

    :goto_1
    iput-object v1, p0, LL/s;->o:Ljava/io/InputStream;

    invoke-virtual {p0}, LL/s;->h()V

    iget-boolean v3, p0, LL/s;->p:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, LL/s;->p:Z

    invoke-virtual {p0}, LL/c;->c()V

    :cond_2
    iput-object v1, p0, LL/s;->n:Ljava/net/HttpURLConnection;

    iput-object v1, p0, LL/s;->m:LL/n;

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v2
.end method

.method public final d(LL/n;)J
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, LL/s;->m:LL/n;

    const-wide/16 v12, 0x0

    iput-wide v12, v1, LL/s;->s:J

    iput-wide v12, v1, LL/s;->r:J

    invoke-virtual {v1}, LL/c;->e()V

    const/4 v14, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x24

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, LL/p;->b(Ljava/lang/Thread;)J

    move-result-wide v2

    :goto_0
    long-to-int v2, v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, LL/n;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v3, v0, LL/n;->b:I

    iget-object v4, v0, LL/n;->c:[B

    iget-wide v5, v0, LL/n;->e:J

    iget-wide v7, v0, LL/n;->f:J

    iget v9, v0, LL/n;->h:I

    and-int/2addr v9, v14

    if-ne v9, v14, :cond_1

    move v9, v14

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget-object v11, v0, LL/n;->d:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, LL/s;->i(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iget-wide v3, v0, LL/n;->e:J

    iget-wide v5, v0, LL/n;->f:J

    iput-object v2, v1, LL/s;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, v1, LL/s;->q:I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    iget v7, v1, LL/s;->q:I

    const-string v8, "Content-Range"

    const/16 v9, 0xc8

    const-wide/16 v10, -0x1

    if-lt v7, v9, :cond_2

    const/16 v15, 0x12b

    if-le v7, v15, :cond_3

    :cond_2
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v7, v1, LL/s;->q:I

    if-ne v7, v9, :cond_4

    cmp-long v7, v3, v12

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move-wide v3, v12

    :goto_2
    const-string v7, "Content-Encoding"

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    cmp-long v9, v5, v10

    if-eqz v9, :cond_5

    iput-wide v5, v1, LL/s;->r:J

    goto/16 :goto_6

    :cond_5
    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, LL/z;->a:Ljava/util/regex/Pattern;

    const-string v8, "Inconsistent headers ["

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v15, "]"

    move-wide/from16 v16, v10

    const-string v10, "HttpUtil"

    if-nez v9, :cond_6

    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v24, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v24

    goto :goto_3

    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected Content-Length ["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    sget-object v9, LL/z;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x2

    :try_start_2
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1

    move-object v11, v15

    add-long v14, v20, v22

    cmp-long v18, v12, v18

    if-gez v18, :cond_7

    move-wide v12, v14

    goto :goto_4

    :cond_7
    cmp-long v18, v12, v14

    if-eqz v18, :cond_8

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_1
    move-object v11, v15

    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected Content-Range ["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    cmp-long v5, v12, v16

    if-eqz v5, :cond_9

    sub-long v10, v12, v3

    goto :goto_5

    :cond_9
    move-wide/from16 v10, v16

    :goto_5
    iput-wide v10, v1, LL/s;->r:J

    goto :goto_6

    :cond_a
    iput-wide v5, v1, LL/s;->r:J

    :goto_6
    const/16 v5, 0x7d0

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, LL/s;->o:Ljava/io/InputStream;

    if-eqz v7, :cond_b

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v6, v1, LL/s;->o:Ljava/io/InputStream;

    invoke-direct {v2, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, LL/s;->o:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_b
    const/4 v9, 0x1

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v9, 0x1

    goto :goto_8

    :goto_7
    iput-boolean v9, v1, LL/s;->p:Z

    invoke-virtual/range {p0 .. p1}, LL/c;->g(LL/n;)V

    :try_start_5
    invoke-virtual {v1, v3, v4}, LL/s;->j(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    iget-wide v2, v1, LL/s;->r:J

    return-wide v2

    :catch_4
    move-exception v0

    invoke-virtual {v1}, LL/s;->h()V

    instance-of v2, v0, LL/w;

    if-eqz v2, :cond_c

    check-cast v0, LL/w;

    throw v0

    :cond_c
    new-instance v2, LL/w;

    const/4 v9, 0x1

    invoke-direct {v2, v5, v9, v0}, LL/w;-><init>(IILjava/io/IOException;)V

    throw v2

    :goto_8
    invoke-virtual {v1}, LL/s;->h()V

    new-instance v2, LL/w;

    invoke-direct {v2, v5, v9, v0}, LL/w;-><init>(IILjava/io/IOException;)V

    throw v2

    :goto_9
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    iget v10, v1, LL/s;->q:I

    const/16 v11, 0x1a0

    if-ne v10, v11, :cond_10

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, LL/z;->a:Ljava/util/regex/Pattern;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-wide/from16 v12, v16

    const/4 v9, 0x1

    goto :goto_a

    :cond_d
    sget-object v10, LL/z;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const/4 v9, 0x1

    if-eqz v10, :cond_e

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_a

    :cond_e
    move-wide/from16 v12, v16

    :goto_a
    cmp-long v3, v3, v12

    if-nez v3, :cond_10

    iput-boolean v9, v1, LL/s;->p:Z

    invoke-virtual/range {p0 .. p1}, LL/c;->g(LL/n;)V

    cmp-long v0, v5, v16

    if-eqz v0, :cond_f

    return-wide v5

    :cond_f
    return-wide v18

    :cond_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_6
    invoke-static {v0}, Lv1/f;->b(Ljava/io/InputStream;)[B

    goto :goto_b

    :cond_11
    sget-object v0, LJ/W;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    sget-object v0, LJ/W;->a:Ljava/lang/String;

    :goto_b
    invoke-virtual {v1}, LL/s;->h()V

    iget v0, v1, LL/s;->q:I

    if-ne v0, v11, :cond_12

    new-instance v0, LL/l;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, LL/l;-><init>(I)V

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    :goto_c
    new-instance v2, LL/y;

    iget v3, v1, LL/s;->q:I

    invoke-direct {v2, v3, v0, v7}, LL/y;-><init>(ILL/l;Ljava/util/Map;)V

    throw v2

    :catch_6
    move-exception v0

    invoke-virtual {v1}, LL/s;->h()V

    const/4 v9, 0x1

    invoke-static {v9, v0}, LL/w;->a(ILjava/io/IOException;)LL/w;

    move-result-object v0

    throw v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, LL/s;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v0, p0, LL/s;->i:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, LL/s;->j:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LL/s;->k:LN0/O;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LN0/O;->S()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, LL/s;->l:LN0/O;

    invoke-virtual {v1}, LN0/O;->S()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p10, LL/z;->a:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const-wide/16 v0, -0x1

    if-nez p10, :cond_2

    cmp-long p10, p6, v0

    if-nez p10, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    new-instance p10, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {p10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p6, v0

    if-eqz v0, :cond_3

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_4

    const-string p5, "Range"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p8, :cond_5

    const-string p4, "gzip"

    goto :goto_2

    :cond_5
    const-string p4, "identity"

    :goto_2
    const-string p5, "Accept-Encoding"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p4, 0x1

    if-eqz p3, :cond_6

    move p5, p4

    goto :goto_3

    :cond_6
    const/4 p5, 0x0

    :goto_3
    invoke-virtual {p1, p5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget p5, LL/n;->i:I

    if-eq p2, p4, :cond_9

    const/4 p4, 0x2

    if-eq p2, p4, :cond_8

    const/4 p4, 0x3

    if-ne p2, p4, :cond_7

    const-string p2, "HEAD"

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const-string p2, "POST"

    goto :goto_4

    :cond_9
    const-string p2, "GET"

    :goto_4
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-object p1

    :cond_a
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public final j(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, LL/s;->o:Ljava/io/InputStream;

    sget-object v6, LJ/W;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    invoke-virtual {p0, v4}, LL/c;->b(I)V

    goto :goto_0

    :cond_1
    new-instance p1, LL/w;

    invoke-direct {p1}, LL/w;-><init>()V

    throw p1

    :cond_2
    new-instance p1, LL/w;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, LL/w;-><init>(IILjava/io/IOException;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final m()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, LL/s;->n:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    sget-object v0, Lu1/H0;->k:Lu1/H0;

    return-object v0

    :cond_0
    new-instance v1, LL/r;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, LL/r;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-wide v0, p0, LL/s;->r:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, LL/s;->s:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, LL/s;->o:Ljava/io/InputStream;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, LL/s;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, LL/s;->s:J

    invoke-virtual {p0, p1}, LL/c;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, LJ/W;->a:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p2, p1}, LL/w;->a(ILjava/io/IOException;)LL/w;

    move-result-object p1

    throw p1
.end method

.method public final u()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LL/s;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LL/s;->m:LL/n;

    if-eqz v0, :cond_1

    iget-object v0, v0, LL/n;->a:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
