.class public Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;
.super Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProviderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fallbackUris:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final privilegedUris:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

.field private final urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/DefaultUrlConnectionExpiryCalculator;

    invoke-direct {v0}, Lorg/mozilla/javascript/commonjs/module/provider/DefaultUrlConnectionExpiryCalculator;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;",
            "Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;",
            "Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProviderBase;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->privilegedUris:Ljava/lang/Iterable;

    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->fallbackUris:Ljava/lang/Iterable;

    .line 5
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    .line 6
    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;

    return-void
.end method

.method private close(Ljava/net/URLConnection;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->onFailedClosingUrlConnection(Ljava/net/URLConnection;Ljava/io/IOException;)V

    return-void
.end method

.method private getReader(Ljava/net/URLConnection;)Ljava/io/Reader;
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getCharacterEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionSecurityDomainProvider:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionSecurityDomainProvider;->getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "Ljava/net/URI;",
            ">;)",
            "Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-virtual {v1, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public entityNeedsRevalidation(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    invoke-virtual {p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityNeedsRevalidation()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCharacterEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getEncoding()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8859_1"

    return-object p1

    :cond_1
    const-string p1, "utf-8"

    return-object p1
.end method

.method public loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->openUrlConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v8

    instance-of v2, v0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->appliesTo(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_1
    move-object/from16 v14, p1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->applyConditionals(Ljava/net/URLConnection;)V

    :cond_3
    :try_start_0
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    invoke-virtual {v0, v8, v9, v10, v2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->updateValidator(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    sget-object v0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->NOT_MODIFIED:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getReader(Ljava/net/URLConnection;)Ljava/io/Reader;

    move-result-object v12

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->getSecurityDomain(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v13

    new-instance v16, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;

    iget-object v11, v1, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->urlConnectionExpiryCalculator:Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;

    move-object v7, v14

    move-object/from16 v6, v16

    invoke-direct/range {v6 .. v11}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;-><init>(Ljava/net/URI;Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)V

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object v11, v0

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;-><init>(Ljava/io/Reader;Ljava/lang/Object;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :goto_2
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    throw v0

    :goto_3
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->close(Ljava/net/URLConnection;)V

    throw v0

    :catch_2
    return-object v3
.end method

.method public loadFromFallbackLocations(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->fallbackUris:Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method public loadFromPrivilegedLocations(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->privilegedUris:Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromPathList(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method public loadFromUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;
    .locals 3

    new-instance v0, Ljava/net/URI;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;->loadFromActualUri(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p1

    return-object p1
.end method

.method public onFailedClosingUrlConnection(Ljava/net/URLConnection;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public openUrlConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
