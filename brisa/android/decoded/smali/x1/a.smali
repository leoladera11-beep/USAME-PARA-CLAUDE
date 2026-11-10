.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lu1/Q;

.field public static final g:Lt1/a;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Lx1/a;

.field public static final j:LZ0/i;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lu1/Q;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/d0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-static {v1, v0}, Lu1/s;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lu1/w;->a()Lu1/w;

    move-result-object v2

    invoke-virtual {v2, v1}, Lu1/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu1/J;

    if-nez v3, :cond_0

    sget-object v3, Lu1/P;->f:Lu1/N;

    const-string v3, "expectedSize"

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lu1/s;->e(ILjava/lang/String;)V

    new-instance v3, Lu1/M;

    invoke-direct {v3, v4}, Lu1/I;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Lu1/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v0}, Lu1/J;->a(Ljava/lang/Object;)Lu1/J;

    invoke-virtual {v2}, Lu1/w;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/AbstractCollection;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Lu1/F;->k:Lu1/F;

    goto :goto_1

    :cond_1
    new-instance v1, LC1/e;

    check-cast v0, Lu1/u;

    iget-object v3, v0, Lu1/u;->f:Ljava/util/Map;

    check-cast v3, Lu1/w;

    invoke-virtual {v3}, Lu1/w;->size()I

    move-result v3

    invoke-direct {v1, v3}, LC1/e;-><init>(I)V

    invoke-virtual {v0}, Lu1/u;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu1/M;

    invoke-virtual {v4}, Lu1/M;->f()Lu1/C0;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    iget v4, v4, Lu1/C0;->h:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    new-instance v0, Lu1/Q;

    invoke-virtual {v1, v2}, LC1/e;->b(Z)Lu1/H0;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lu1/Q;-><init>(Lu1/H0;I)V

    :goto_1
    sput-object v0, Lx1/a;->f:Lu1/Q;

    sget-object v0, Lt1/b;->h:Lt1/b;

    sget-object v1, Lt1/b;->i:Lt1/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lt1/h;

    invoke-direct {v3, v1}, Lt1/c;-><init>(Lt1/i;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lt1/a;

    invoke-direct {v1, v0, v3}, Lt1/a;-><init>(Lt1/i;Lt1/i;)V

    new-instance v0, Lt1/e;

    const/16 v3, 0x20

    invoke-direct {v0, v3, v2}, Lt1/e;-><init>(CI)V

    new-instance v2, Lt1/a;

    invoke-direct {v2, v1, v0}, Lt1/a;-><init>(Lt1/i;Lt1/i;)V

    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lt1/i;->b(Ljava/lang/String;)Lt1/i;

    move-result-object v0

    invoke-virtual {v0}, Lt1/i;->d()Lt1/i;

    move-result-object v0

    new-instance v1, Lt1/a;

    invoke-direct {v1, v2, v0}, Lt1/a;-><init>(Lt1/i;Lt1/i;)V

    sput-object v1, Lx1/a;->g:Lt1/a;

    const-string v0, "\"\\\r"

    invoke-static {v0}, Lt1/i;->b(Ljava/lang/String;)Lt1/i;

    move-result-object v0

    invoke-virtual {v0}, Lt1/i;->d()Lt1/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, " \t\r\n"

    invoke-static {v0}, Lt1/i;->b(Ljava/lang/String;)Lt1/i;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lx1/a;->h:Ljava/util/HashMap;

    const-string v0, "*"

    invoke-static {v0, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-static {v1, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "image"

    invoke-static {v2, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio"

    invoke-static {v3, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "video"

    invoke-static {v4, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "application"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "font"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cache-manifest"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "css"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "csv"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "html"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "calendar"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "markdown"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "plain"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "javascript"

    invoke-static {v1, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v7, "tab-separated-values"

    invoke-static {v1, v7}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v7, "vcard"

    invoke-static {v1, v7}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v7, "vnd.wap.wml"

    invoke-static {v1, v7}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v7, "xml"

    invoke-static {v1, v7}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v8, "vtt"

    invoke-static {v1, v8}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v1, "bmp"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-canon-crw"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gif"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.microsoft.icon"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jpeg"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "png"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.adobe.photoshop"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "svg+xml"

    invoke-static {v2, v1}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v1, "tiff"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "webp"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "heif"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jp2"

    invoke-static {v2, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp4"

    invoke-static {v3, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mpeg"

    invoke-static {v3, v2}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "ogg"

    invoke-static {v3, v8}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "webm"

    invoke-static {v3, v9}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "l16"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "l24"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "basic"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "aac"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vorbis"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "x-ms-wma"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "x-ms-wax"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vnd.rn-realaudio"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "vnd.wave"

    invoke-static {v3, v10}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "quicktime"

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-ms-wmv"

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-flv"

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gpp"

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3gpp2"

    invoke-static {v4, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v1, "atom+xml"

    invoke-static {v5, v1}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v1, "x-bzip2"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dart"

    invoke-static {v5, v1}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v1, "vnd.apple.pkpass"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.ms-fontobject"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "epub+zip"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-www-form-urlencoded"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkcs12"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "binary"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "geo+json"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-gzip"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hal+json"

    invoke-static {v5, v1}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "jose"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jose+json"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    move-result-object v0

    sput-object v0, Lx1/a;->i:Lx1/a;

    const-string v0, "jwt"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "manifest+json"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "vnd.google-earth.kml+xml"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.google-earth.kmz"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mbox"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-apple-aspen-config"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-excel"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-outlook"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.ms-powerpoint"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "msword"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dash+xml"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wasm"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-nacl"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-pnacl"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "octet-stream"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.graphics"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.presentation"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.spreadsheet"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.oasis.opendocument.text"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "opensearchdescription+xml"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "pdf"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "postscript"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protobuf"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rdf+xml"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "rtf"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "font-sfnt"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-shockwave-flash"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vnd.sketchup.skp"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "soap+xml"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "x-tar"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-woff"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-woff2"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xhtml+xml"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "xrd+xml"

    invoke-static {v5, v0}, Lx1/a;->b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;

    const-string v0, "zip"

    invoke-static {v5, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "otf"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sfnt"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ttf"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "woff"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "woff2"

    invoke-static {v6, v0}, Lx1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LK/a;

    const-string v1, "; "

    invoke-direct {v0, v1}, LK/a;-><init>(Ljava/lang/String;)V

    new-instance v1, LZ0/i;

    invoke-direct {v1, v0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lx1/a;->j:LZ0/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lu1/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lx1/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lx1/a;->c:Lu1/Q;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lx1/a;

    sget-object v1, Lu1/F;->k:Lu1/F;

    invoke-direct {v0, p0, p1, v1}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/Q;)V

    sget-object p0, Lx1/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lx1/a;
    .locals 2

    new-instance v0, Lx1/a;

    sget-object v1, Lx1/a;->f:Lu1/Q;

    invoke-direct {v0, p0, p1, v1}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/Q;)V

    sget-object p0, Lx1/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final c()Lu1/p0;
    .locals 3

    iget-object v0, p0, Lx1/a;->c:Lu1/Q;

    invoke-virtual {v0}, Lu1/Q;->h()Lu1/T;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/typedarrays/c;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/typedarrays/c;-><init>(I)V

    new-instance v2, La1/g;

    invoke-direct {v2, v1}, La1/g;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lu1/p0;

    invoke-direct {v1, v0, v2}, Lu1/p0;-><init>(Ljava/util/Map;Lu1/o0;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lx1/a;

    if-eqz v0, :cond_1

    check-cast p1, Lx1/a;

    iget-object v0, p0, Lx1/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lx1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lx1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lx1/a;->c()Lu1/p0;

    move-result-object v0

    invoke-virtual {p1}, Lx1/a;->c()Lu1/p0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lx1/a;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lx1/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lx1/a;->c()Lu1/p0;

    move-result-object v1

    iget-object v2, p0, Lx1/a;->a:Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lx1/a;->e:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1/a;->c:Lu1/Q;

    iget v2, v1, Lu1/Q;->j:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/mozilla/javascript/typedarrays/c;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/typedarrays/c;-><init>(I)V

    new-instance v3, La1/g;

    invoke-direct {v3, v2}, La1/g;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lu1/t0;

    invoke-direct {v2, v1, v3}, Lu1/t0;-><init>(Lu1/i0;La1/g;)V

    invoke-virtual {v2}, Lu1/p;->a()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lx1/a;->j:LZ0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v0, v1}, LZ0/i;->j(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/a;->d:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    return-object v0
.end method
