.class public final Lcom/brisa/local/t;
.super LW1/t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lorg/json/JSONObject;

.field public final synthetic f:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/t;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/brisa/local/t;->b:J

    iput-wide p4, p0, Lcom/brisa/local/t;->c:J

    iput-object p6, p0, Lcom/brisa/local/t;->d:Landroid/content/Context;

    iput-object p7, p0, Lcom/brisa/local/t;->e:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/brisa/local/t;->f:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/brisa/local/t;->b:J

    iget-wide v2, p0, Lcom/brisa/local/t;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()LW1/o;
    .locals 1

    sget-object v0, LW1/o;->c:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/brisa/local/t;->a:Ljava/lang/String;

    invoke-static {v0}, LW1/t;->i(Ljava/lang/String;)LW1/o;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lj2/p;)V
    .locals 7

    iget-object v0, p0, Lcom/brisa/local/t;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/t;->e:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/brisa/local/a;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-wide v1, p0, Lcom/brisa/local/t;->c:J

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-gtz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_0

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    sub-long/2addr v1, v5

    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/brisa/local/t;->f:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v1, v2}, Lj2/p;->e([BI)Lj2/h;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "No se puede leer la copia local."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1
.end method
