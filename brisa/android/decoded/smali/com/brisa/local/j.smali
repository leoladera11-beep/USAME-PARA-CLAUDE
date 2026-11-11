.class public final Lcom/brisa/local/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/x;
.implements LP0/d;
.implements LQ/s;
.implements LS/j;
.implements LU/a0;
.implements Lb0/f;
.implements Lb0/p;


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    iput v0, p0, Lcom/brisa/local/j;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, LN/j;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/brisa/local/j;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(LM0/r0;)Landroid/media/MediaCodec;
    .locals 2

    iget-object p0, p0, LM0/r0;->c:Ljava/lang/Object;

    check-cast p0, LS/o;

    iget-object p0, p0, LS/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method private final E()V
    .locals 0

    return-void
.end method

.method public static F(Lt2/a;)LI0/G;
    .locals 12

    new-instance v0, LC2/b;

    invoke-direct {v0}, LC2/b;-><init>()V

    iget-object v1, p0, Lt2/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LC2/b;->s(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lt2/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, LC2/b;->q(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-static {v5, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v4, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, LC2/b;->h:Ljava/lang/Object;

    check-cast v6, LZ0/i;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LW1/t;->a(Ljava/lang/String;)V

    invoke-static {v4, v5}, LW1/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v4}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lt2/a;->d:[B

    iget-object p0, p0, Lt2/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    array-length v4, v1

    array-length v5, v1

    int-to-long v6, v5

    int-to-long v8, v2

    int-to-long v10, v4

    invoke-static/range {v6 .. v11}, LX1/b;->c(JJJ)V

    new-instance v5, LW1/s;

    invoke-direct {v5, v3, v4, v1}, LW1/s;-><init>(LW1/o;I[B)V

    move-object v3, v5

    goto :goto_1

    :cond_2
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [B

    int-to-long v4, v2

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v4 .. v9}, LX1/b;->c(JJJ)V

    new-instance v4, LW1/s;

    invoke-direct {v4, v3, v2, v1}, LW1/s;-><init>(LW1/o;I[B)V

    move-object v3, v4

    :cond_3
    :goto_1
    invoke-virtual {v0, p0, v3}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    sget-object p0, Lcom/brisa/local/W;->a:LW1/q;

    invoke-virtual {v0}, LC2/b;->b()LM0/r0;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, La2/h;

    invoke-direct {v1, p0, v0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    invoke-virtual {v1}, La2/h;->d()LW1/v;

    move-result-object p0

    iget-object v0, p0, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {v0}, LW1/x;->c()J

    move-result-wide v3

    const-wide/32 v5, 0x1400000

    cmp-long v1, v3, v5

    if-gtz v1, :cond_6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, LW1/x;->q()Lj2/i;

    move-result-object v0

    invoke-interface {v0}, Lj2/i;->p()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v0, 0x8000

    :try_start_1
    new-array v0, v0, [B

    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    add-int/2addr v7, v4

    int-to-long v7, v7

    cmp-long v7, v7, v5

    if-gtz v7, :cond_4

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Respuesta demasiado grande."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    new-instance v4, LI0/G;

    iget v5, p0, LW1/v;->h:I

    iget-object v6, p0, LW1/v;->g:Ljava/lang/String;

    iget-object v0, p0, LW1/v;->j:LW1/k;

    invoke-virtual {v0}, LW1/k;->e()Ljava/util/TreeMap;

    move-result-object v7

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, LW1/v;->e:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LW1/m;

    iget-object v9, v0, LW1/m;->h:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, LI0/G;-><init>(ILjava/lang/String;Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, LW1/v;->close()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "La respuesta de YouTube es demasiado grande."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Respuesta vac\u00eda de YouTube."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    invoke-virtual {p0}, LW1/v;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
.end method

.method public static G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;
    .locals 2

    new-instance v0, LP/L;

    invoke-direct {v0}, LP/L;-><init>()V

    const-string v1, "GET"

    iput-object v1, v0, LP/L;->b:Ljava/lang/Object;

    iput-object p0, v0, LP/L;->c:Ljava/lang/Object;

    iget-object p0, v0, LP/L;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iput-object p2, v0, LP/L;->f:Ljava/lang/Object;

    new-instance p0, Lt2/a;

    invoke-direct {p0, v0}, Lt2/a;-><init>(LP/L;)V

    invoke-static {p0}, Lcom/brisa/local/j;->F(Lt2/a;)LI0/G;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/util/List;)Lz1/B;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/P;

    iget-object v1, v1, LG/P;->b:LG/K;

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-static {p0}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p0

    return-object p0
.end method

.method private final K()V
    .locals 0

    return-void
.end method

.method private final L(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static M(Ljava/lang/String;Ljava/util/Map;[BLw2/c;)LI0/G;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "Content-Type"

    const-string v1, "application/json"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LP/L;

    invoke-direct {p1}, LP/L;-><init>()V

    const-string v1, "POST"

    iput-object v1, p1, LP/L;->b:Ljava/lang/Object;

    iput-object p0, p1, LP/L;->c:Ljava/lang/Object;

    iput-object p2, p1, LP/L;->e:Ljava/lang/Object;

    iget-object p0, p1, LP/L;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object p3, p1, LP/L;->f:Ljava/lang/Object;

    new-instance p0, Lt2/a;

    invoke-direct {p0, p1}, Lt2/a;-><init>(LP/L;)V

    invoke-static {p0}, Lcom/brisa/local/j;->F(Lt2/a;)LI0/G;

    move-result-object p0

    return-object p0
.end method

.method private final N(Lb0/z;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;[B)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public C()[B
    .locals 2

    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lb0/z;)V
    .locals 0

    iget p1, p0, Lcom/brisa/local/j;->e:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public d(La1/g;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lcom/brisa/local/j;->e:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public f([B[B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public g([B)Ljava/util/Map;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public h([B)V
    .locals 0

    return-void
.end method

.method public i([B[B)[B
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public j(LN0/O;LM/f;I)I
    .locals 0

    const/4 p1, 0x4

    iput p1, p2, LK/f;->f:I

    const/4 p1, -0x4

    return p1
.end method

.method public k()LQ/r;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l(LM0/r0;)LS/k;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/brisa/local/j;->D(LM0/r0;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string v1, "configureCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    if-nez v1, :cond_0

    iget-object v2, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LS/o;

    iget-boolean v2, v2, LS/o;->h:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaFormat;

    iget-object v4, p1, LM0/r0;->f:Ljava/lang/Object;

    check-cast v4, Landroid/media/MediaCrypto;

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "startCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, LN0/O;

    iget-object p1, p1, LM0/r0;->g:Ljava/lang/Object;

    check-cast p1, LB/A;

    invoke-direct {v1, v0, p1}, LN0/O;-><init>(Landroid/media/MediaCodec;LB/A;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p1
.end method

.method public m([B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public n(J)J
    .locals 0

    return-wide p1
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p([BLjava/util/List;ILjava/util/HashMap;)LQ/q;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public t()V
    .locals 2

    iget v0, p0, Lcom/brisa/local/j;->e:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string v1, "ProfileInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/brisa/local/j;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "<NULL>"

    return-object v0

    :sswitch_1
    const-class v0, Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(II)Lb0/G;
    .locals 0

    iget p1, p0, Lcom/brisa/local/j;->e:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lb0/l;

    invoke-direct {p1}, Lb0/l;-><init>()V

    return-object p1

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public w(ILjava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/brisa/local/j;->e:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :pswitch_b
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public y(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public z([B)LM/a;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
