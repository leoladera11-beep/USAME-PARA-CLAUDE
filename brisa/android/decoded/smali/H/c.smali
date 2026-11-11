.class public final LH/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/p;


# instance fields
.field public e:Z

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, LH/c;->f:Ljava/lang/Object;

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, LH/c;->g:Ljava/lang/Object;

    .line 4
    new-instance v0, LJ/Q;

    invoke-direct {v0}, LJ/Q;-><init>()V

    iput-object v0, p0, LH/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    .line 21
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {p1}, LG/d;->c(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, LH/c;->f:Ljava/lang/Object;

    .line 23
    invoke-static {p1}, LG/d;->b(Landroid/media/Spatializer;)I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, LH/c;->e:Z

    .line 24
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, LH/c;->g:Ljava/lang/Object;

    .line 27
    new-instance v0, LY/b;

    invoke-direct {v0, p2}, LY/b;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LH/c;->h:Ljava/lang/Object;

    .line 28
    new-instance p2, LM0/A;

    const/4 v1, 0x6

    invoke-direct {p2, p3, v1}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2, v0}, LG/d;->h(Landroid/media/Spatializer;LM0/A;LY/b;)V

    return-void

    .line 29
    :cond_3
    :goto_1
    iput-object v0, p0, LH/c;->f:Ljava/lang/Object;

    .line 30
    iput-boolean v1, p0, LH/c;->e:Z

    .line 31
    iput-object v0, p0, LH/c;->g:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, LH/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb0/p;Ly0/k;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LH/c;->f:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, LH/c;->g:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LH/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;Landroid/os/Looper;Landroid/os/Looper;LN/s;LJ/M;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LH/c;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p5, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LH/c;->h:Ljava/lang/Object;

    .line 17
    new-instance p2, LH/b;

    .line 18
    invoke-virtual {p5, p3, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, LH/b;-><init>(LH/c;LJ/O;LN/s;)V

    iput-object p2, p0, LH/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LH/c;->f:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, LH/c;->h:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, LH/c;->g:Ljava/lang/Object;

    .line 9
    iput-boolean p4, p0, LH/c;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLA0/d;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, LF1/i;->g(Z)V

    .line 35
    iput-object p3, p0, LH/c;->f:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, LH/c;->g:Ljava/lang/Object;

    .line 37
    iput-boolean p2, p0, LH/c;->e:Z

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LH/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public static a([F[F)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0xa

    aget v2, p1, v1

    mul-float/2addr v2, v2

    const/16 v3, 0x8

    aget v4, p1, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    aget v4, p1, v1

    div-float/2addr v4, v2

    aput v4, p0, v0

    aget p1, p1, v3

    div-float v0, p1, v2

    const/4 v5, 0x2

    aput v0, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v2

    aput p1, p0, v3

    aput v4, p0, v1

    return-void
.end method


# virtual methods
.method public b(Ljava/util/UUID;LQ/q;)LQ/x;
    .locals 12

    iget-object v0, p2, LQ/q;->b:Ljava/lang/String;

    iget-boolean v1, p0, LH/c;->e:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, LH/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, LG/m;->f:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "text/xml"

    goto :goto_0

    :cond_2
    sget-object v3, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "application/json"

    goto :goto_0

    :cond_3
    const-string v3, "application/octet-stream"

    :goto_0
    const-string v4, "Content-Type"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, LH/c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, LH/c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LH/c;->f:Ljava/lang/Object;

    check-cast p1, LA0/d;

    invoke-virtual {p1}, LA0/d;->t()LL/h;

    move-result-object p1

    iget-object p2, p2, LQ/q;->a:[B

    invoke-static {p1, v0, p2, v1}, Lcom/brisa/local/v;->h(LL/h;Ljava/lang/String;[BLjava/util/Map;)LQ/x;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_5
    new-instance v0, LQ/y;

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p1, "The uri must be set."

    invoke-static {v2, p1}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LL/n;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, LL/n;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    sget-object v3, Lu1/H0;->k:Lu1/H0;

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string p1, "No license URL"

    invoke-direct {v6, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, LQ/y;-><init>(LL/n;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V

    throw v0
.end method

.method public c(Lb0/z;)V
    .locals 1

    iget-object v0, p0, LH/c;->f:Ljava/lang/Object;

    check-cast v0, Lb0/p;

    invoke-interface {v0, p1}, Lb0/p;->c(Lb0/z;)V

    return-void
.end method

.method public d(LQ/r;)LQ/x;
    .locals 9

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "{\"signedRequest\":\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p1, LQ/r;->a:[B

    const-string v3, "\"}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    filled-new-array {v1, v2, v0}, [[B

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v4

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-int v4, v1

    int-to-long v6, v4

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const-string v7, "the total number of elements (%s) in the arrays must fit in an int"

    invoke-static {v7, v1, v2, v6}, LF1/i;->e(Ljava/lang/String;JZ)V

    new-array v1, v4, [B

    move v2, v3

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v7, v0, v2

    array-length v8, v7

    invoke-static {v7, v3, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, LH/c;->f:Ljava/lang/Object;

    check-cast v0, LA0/d;

    invoke-virtual {v0}, LA0/d;->t()LL/h;

    move-result-object v0

    iget-object p1, p1, LQ/r;->b:Ljava/lang/String;

    sget-object v2, Lx1/a;->i:Lx1/a;

    invoke-virtual {v2}, Lx1/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-static {v4, v2}, Lu1/s;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "Content-Length"

    invoke-static {v5, v3}, Lu1/s;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lu1/H0;->f(I[Ljava/lang/Object;LC1/e;)Lu1/H0;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/brisa/local/v;->h(LL/h;Ljava/lang/String;[BLjava/util/Map;)LQ/x;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, LH/c;->h:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, LH/c;->f:Ljava/lang/Object;

    check-cast v1, Lb0/p;

    invoke-interface {v1}, Lb0/p;->e()V

    iget-boolean v1, p0, LH/c;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/n;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ly0/n;->i:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, LH/c;->h:Ljava/lang/Object;

    check-cast v0, LJ/O;

    iget-boolean v1, p0, LH/c;->e:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, LH/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/c;->e:Z

    return-void
.end method

.method public v(II)Lb0/G;
    .locals 4

    iget-object v0, p0, LH/c;->h:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, LH/c;->f:Ljava/lang/Object;

    check-cast v1, Lb0/p;

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, LH/c;->e:Z

    :cond_0
    if-eq p2, v2, :cond_1

    invoke-interface {v1, p1, p2}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/n;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Ly0/n;

    invoke-interface {v1, p1, p2}, Lb0/p;->v(II)Lb0/G;

    move-result-object p2

    iget-object v1, p0, LH/c;->g:Ljava/lang/Object;

    check-cast v1, Ly0/k;

    invoke-direct {v2, p2, v1}, Ly0/n;-><init>(Lb0/G;Ly0/k;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method
