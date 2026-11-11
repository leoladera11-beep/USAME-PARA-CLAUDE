.class public final Lcom/brisa/local/G;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/brisa/local/MainActivity;


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/brisa/local/G;->a:Lcom/brisa/local/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/webkit/WebResourceResponse;
    .locals 7

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    const-string v4, "Not available"

    move v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {p1}, Lcom/brisa/local/PlaybackService;->o()V

    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 21

    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://appassets.androidplatform.net"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x193

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    :cond_0
    move-object/from16 v10, p0

    goto/16 :goto_7

    :cond_1
    const/16 v1, 0x194

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "X-Content-Type-Options"

    const-string v4, "nosniff"

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "/assets/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "application/octet-stream"

    move-object/from16 v10, p0

    iget-object v5, v10, Lcom/brisa/local/G;->a:Lcom/brisa/local/MainActivity;

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ".js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v4, "text/javascript"

    goto :goto_0

    :cond_3
    const-string v2, ".css"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v4, "text/css"

    goto :goto_0

    :cond_4
    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v4, "text/html"

    goto :goto_0

    :cond_5
    const-string v2, ".svg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v4, "image/svg+xml"

    goto :goto_0

    :cond_6
    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v4, "image/png"

    :cond_7
    :goto_0
    const-string v2, "Content-Security-Policy"

    const-string v3, "default-src \'self\' data: blob:; script-src \'self\' blob: \'wasm-unsafe-eval\'; worker-src \'self\' blob:; style-src \'self\' \'unsafe-inline\'; img-src \'self\' data: blob:; connect-src \'self\' https: blob:; object-src \'none\'; base-uri \'none\'; frame-src \'none\'"

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/webkit/WebResourceResponse;

    move-object v2, v5

    const-string v5, "UTF-8"

    const-string v7, "OK"

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const/16 v6, 0xc8

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3

    :cond_8
    :goto_1
    invoke-static {v2}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_9
    move-object v2, v5

    const-string v3, "/audio/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v1}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brisa/local/v;->u(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-nez v9, :cond_c

    invoke-static {v1}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    move-object v4, v0

    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Range"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_f
    if-nez v2, :cond_10

    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string v5, "UTF-8"

    const-string v7, "OK"

    const/16 v6, 0xc8

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3

    :cond_10
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/16 v3, 0x1a0

    if-nez v2, :cond_11

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-static {v3}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v0, v11, v5

    if-ltz v0, :cond_16

    sub-long v13, v11, v5

    const-wide/32 v15, 0x200000

    cmp-long v0, v13, v15

    if-lez v0, :cond_12

    goto :goto_6

    :cond_12
    move-wide v2, v5

    :goto_4
    const-wide/16 v15, 0x0

    cmp-long v0, v2, v15

    const-wide/16 v17, 0x1

    if-lez v0, :cond_15

    invoke-virtual {v9, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v19

    cmp-long v0, v19, v15

    if-nez v0, :cond_13

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_14

    goto :goto_5

    :cond_13
    move-wide/from16 v17, v19

    :cond_14
    sub-long v2, v2, v17

    goto :goto_4

    :cond_15
    :goto_5
    const-string v0, "Content-Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string v5, "UTF-8"

    const-string v7, "Partial Content"

    new-instance v0, Lcom/brisa/local/F;

    add-long v13, v13, v17

    invoke-direct {v0, v9, v13, v14}, Lcom/brisa/local/F;-><init>(Ljava/io/InputStream;J)V

    const/16 v6, 0xce

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v3

    :cond_16
    :goto_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-static {v3}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object/from16 v10, p0

    :catch_1
    invoke-static {v1}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :goto_7
    invoke-static {v2}, Lcom/brisa/local/G;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "appassets.androidplatform.net"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/brisa/local/G;->a:Lcom/brisa/local/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
