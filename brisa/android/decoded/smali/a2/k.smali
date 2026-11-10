.class public final La2/k;
.super Ld2/h;
.source "SourceFile"


# instance fields
.field public final b:LW1/y;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:LW1/j;

.field public f:LW1/r;

.field public g:Ld2/o;

.field public h:Lj2/r;

.field public i:Lj2/p;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:J


# direct methods
.method public constructor <init>(La2/l;LW1/y;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La2/k;->b:LW1/y;

    const/4 p1, 0x1

    iput p1, p0, La2/k;->o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/k;->p:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, La2/k;->q:J

    return-void
.end method

.method public static d(LW1/q;LW1/y;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, LW1/y;->a:LW1/a;

    iget-object v1, v0, LW1/a;->g:Ljava/net/ProxySelector;

    iget-object v0, v0, LW1/a;->h:LW1/m;

    invoke-virtual {v0}, LW1/m;->g()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, LW1/q;->C:LZ0/i;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ld2/o;LJ/u;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "settings"

    invoke-static {p2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, LJ/u;->f:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, LJ/u;->g:Ljava/lang/Object;

    check-cast p1, [I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, La2/k;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ld2/w;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ld2/w;->c(ILjava/io/IOException;)V

    return-void
.end method

.method public final c(IIIZLa2/h;)V
    .locals 7

    const-string v0, "inetSocketAddress"

    iget-object v1, p0, La2/k;->f:LW1/r;

    if-nez v1, :cond_e

    iget-object v1, p0, La2/k;->b:LW1/y;

    iget-object v1, v1, LW1/y;->a:LW1/a;

    iget-object v1, v1, LW1/a;->j:Ljava/util/List;

    new-instance v2, LH/g;

    const-string v3, "connectionSpecs"

    invoke-static {v1, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, LH/g;->d:Ljava/lang/Object;

    iget-object v3, p0, La2/k;->b:LW1/y;

    iget-object v3, v3, LW1/y;->a:LW1/a;

    iget-object v4, v3, LW1/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_2

    sget-object v3, LW1/g;->f:LW1/g;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La2/k;->b:LW1/y;

    iget-object v1, v1, LW1/y;->a:LW1/a;

    iget-object v1, v1, LW1/a;->h:LW1/m;

    iget-object v1, v1, LW1/m;->d:Ljava/lang/String;

    sget-object v3, Le2/m;->a:Le2/m;

    sget-object v3, Le2/m;->a:Le2/m;

    invoke-virtual {v3, v1}, Le2/m;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, La2/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication to "

    const-string p4, " not permitted by network security policy"

    invoke-static {p3, v1, p4}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, La2/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, La2/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, La2/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    iget-object v1, v3, LW1/a;->i:Ljava/util/List;

    sget-object v3, LW1/r;->j:LW1/r;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    const/4 v1, 0x0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, La2/k;->b:LW1/y;

    iget-object v6, v5, LW1/y;->a:LW1/a;

    iget-object v6, v6, LW1/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_3

    iget-object v5, v5, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2, p3, p5}, La2/k;->f(IIILa2/h;)V

    iget-object v5, p0, La2/k;->c:Ljava/net/Socket;

    if-nez v5, :cond_5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1, p2, p5}, La2/k;->e(IILa2/h;)V

    :cond_5
    invoke-virtual {p0, v2, p5}, La2/k;->g(LH/g;La2/h;)V

    iget-object v5, p0, La2/k;->b:LW1/y;

    iget-object v5, v5, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-static {v5, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object p1, p0, La2/k;->b:LW1/y;

    iget-object p2, p1, LW1/y;->a:LW1/a;

    iget-object p2, p2, LW1/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_7

    iget-object p1, p1, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, La2/k;->c:Ljava/net/Socket;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, La2/m;

    new-instance p2, Ljava/net/ProtocolException;

    const-string p3, "Too many tunnel connections attempted: 21"

    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, La2/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, La2/k;->q:J

    return-void

    :goto_5
    iget-object v6, p0, La2/k;->d:Ljava/net/Socket;

    if-eqz v6, :cond_8

    invoke-static {v6}, LX1/b;->e(Ljava/net/Socket;)V

    :cond_8
    iget-object v6, p0, La2/k;->c:Ljava/net/Socket;

    if-eqz v6, :cond_9

    invoke-static {v6}, LX1/b;->e(Ljava/net/Socket;)V

    :cond_9
    iput-object v1, p0, La2/k;->d:Ljava/net/Socket;

    iput-object v1, p0, La2/k;->c:Ljava/net/Socket;

    iput-object v1, p0, La2/k;->h:Lj2/r;

    iput-object v1, p0, La2/k;->i:Lj2/p;

    iput-object v1, p0, La2/k;->e:LW1/j;

    iput-object v1, p0, La2/k;->f:LW1/r;

    iput-object v1, p0, La2/k;->g:Ld2/o;

    iput v4, p0, La2/k;->o:I

    iget-object v6, p0, La2/k;->b:LW1/y;

    iget-object v6, v6, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_a

    new-instance v3, La2/m;

    invoke-direct {v3, v5}, La2/m;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_a
    iget-object v6, v3, La2/m;->e:Ljava/io/IOException;

    invoke-static {v6, v5}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object v5, v3, La2/m;->f:Ljava/io/IOException;

    :goto_6
    if-eqz p4, :cond_c

    iput-boolean v4, v2, LH/g;->c:Z

    iget-boolean v4, v2, LH/g;->b:Z

    if-eqz v4, :cond_c

    instance-of v4, v5, Ljava/net/ProtocolException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-nez v4, :cond_c

    :cond_b
    instance-of v4, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_c

    goto/16 :goto_1

    :cond_c
    throw v3

    :cond_d
    new-instance p1, La2/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, La2/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(IILa2/h;)V
    .locals 3

    iget-object p3, p0, La2/k;->b:LW1/y;

    iget-object v0, p3, LW1/y;->b:Ljava/net/Proxy;

    iget-object p3, p3, LW1/y;->a:LW1/a;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, La2/i;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance p3, Ljava/net/Socket;

    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object p3, p3, LW1/a;->b:Ljavax/net/SocketFactory;

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p3

    invoke-static {p3}, LO1/d;->b(Ljava/lang/Object;)V

    :goto_1
    iput-object p3, p0, La2/k;->c:Ljava/net/Socket;

    iget-object v0, p0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->c:Ljava/net/InetSocketAddress;

    const-string v1, "inetSocketAddress"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Le2/m;->a:Le2/m;

    sget-object p2, Le2/m;->a:Le2/m;

    iget-object v0, p0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, p3, v0, p1}, Le2/m;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p3}, LV0/a;->v(Ljava/net/Socket;)Lj2/d;

    move-result-object p1

    new-instance p2, Lj2/r;

    invoke-direct {p2, p1}, Lj2/r;-><init>(Lj2/x;)V

    iput-object p2, p0, La2/k;->h:Lj2/r;

    invoke-static {p3}, LV0/a;->r(Ljava/net/Socket;)Lj2/c;

    move-result-object p1

    new-instance p2, Lj2/p;

    invoke-direct {p2, p1}, Lj2/p;-><init>(Lj2/v;)V

    iput-object p2, p0, La2/k;->i:Lj2/p;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to connect to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final f(IIILa2/h;)V
    .locals 9

    new-instance v0, LC2/b;

    invoke-direct {v0}, LC2/b;-><init>()V

    iget-object v1, p0, La2/k;->b:LW1/y;

    iget-object v2, v1, LW1/y;->a:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    const-string v3, "url"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, LC2/b;->g:Ljava/lang/Object;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    iget-object v1, v1, LW1/y;->a:LW1/a;

    iget-object v2, v1, LW1/a;->h:LW1/m;

    const/4 v4, 0x1

    invoke-static {v2, v4}, LX1/b;->v(LW1/m;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Host"

    invoke-virtual {v0, v5, v2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v2, v5}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v5, "okhttp/4.12.0"

    invoke-virtual {v0, v2, v5}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LC2/b;->b()LM0/r0;

    move-result-object v0

    new-instance v2, LZ0/i;

    const/16 v5, 0x11

    invoke-direct {v2, v5}, LZ0/i;-><init>(I)V

    const-string v5, "Proxy-Authenticate"

    invoke-static {v5}, LW1/t;->a(Ljava/lang/String;)V

    const-string v6, "OkHttp-Preemptive"

    invoke-static {v6, v5}, LW1/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, LZ0/i;->y(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, LZ0/i;->k()LW1/k;

    iget-object v2, v1, LW1/a;->f:LW1/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LW1/m;

    invoke-virtual {p0, p1, p2, p4}, La2/k;->e(IILa2/h;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, LX1/b;->v(LW1/m;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, La2/k;->h:Lj2/r;

    invoke-static {p4}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, p0, La2/k;->i:Lj2/p;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    new-instance v4, Lc2/g;

    invoke-direct {v4, v3, p0, p4, v2}, Lc2/g;-><init>(LW1/q;La2/k;Lj2/r;Lj2/p;)V

    iget-object v3, p4, Lj2/r;->e:Lj2/x;

    invoke-interface {v3}, Lj2/x;->a()Lj2/z;

    move-result-object v3

    int-to-long v5, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Lj2/z;->g(J)Lj2/z;

    iget-object p2, v2, Lj2/p;->e:Lj2/v;

    invoke-interface {p2}, Lj2/v;->a()Lj2/z;

    move-result-object p2

    int-to-long v5, p3

    invoke-virtual {p2, v5, v6}, Lj2/z;->g(J)Lj2/z;

    iget-object p2, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast p2, LW1/k;

    invoke-virtual {v4, p2, p1}, Lc2/g;->j(LW1/k;Ljava/lang/String;)V

    invoke-virtual {v4}, Lc2/g;->a()V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Lc2/g;->f(Z)LW1/u;

    move-result-object p1

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    iput-object v0, p1, LW1/u;->a:LM0/r0;

    invoke-virtual {p1}, LW1/u;->a()LW1/v;

    move-result-object p1

    iget p2, p1, LW1/v;->h:I

    invoke-static {p1}, LX1/b;->j(LW1/v;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v6}, Lc2/g;->i(J)Lc2/d;

    move-result-object p1

    const p3, 0x7fffffff

    invoke-static {p1, p3}, LX1/b;->t(Lj2/x;I)Z

    invoke-virtual {p1}, Lc2/d;->close()V

    :goto_0
    const/16 p1, 0xc8

    if-eq p2, p1, :cond_2

    const/16 p1, 0x197

    if-ne p2, p1, :cond_1

    iget-object p1, v1, LW1/a;->f:LW1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-static {p2, p3}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p4, Lj2/r;->f:Lj2/g;

    invoke-virtual {p1}, Lj2/g;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Lj2/p;->f:Lj2/g;

    invoke-virtual {p1}, Lj2/g;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LH/g;La2/h;)V
    .locals 10

    sget-object p2, LW1/r;->g:LW1/r;

    iget-object v0, p0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->a:LW1/a;

    iget-object v1, v0, LW1/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    iget-object p1, v0, LW1/a;->i:Ljava/util/List;

    sget-object v0, LW1/r;->j:LW1/r;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La2/k;->c:Ljava/net/Socket;

    iput-object p1, p0, La2/k;->d:Ljava/net/Socket;

    iput-object v0, p0, La2/k;->f:LW1/r;

    invoke-virtual {p0}, La2/k;->l()V

    return-void

    :cond_0
    iget-object p1, p0, La2/k;->c:Ljava/net/Socket;

    iput-object p1, p0, La2/k;->d:Ljava/net/Socket;

    iput-object p2, p0, La2/k;->f:LW1/r;

    return-void

    :cond_1
    const-string v2, "Hostname "

    const-string v3, "\n              |Hostname "

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v5, p0, La2/k;->c:Ljava/net/Socket;

    iget-object v6, v0, LW1/a;->h:LW1/m;

    iget-object v7, v6, LW1/m;->d:Ljava/lang/String;

    iget v6, v6, LW1/m;->e:I

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v7, v6, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v1, v5}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, LH/g;->a(Ljavax/net/ssl/SSLSocket;)LW1/g;

    move-result-object p1

    iget-boolean v5, p1, LW1/g;->b:Z

    if-eqz v5, :cond_2

    sget-object v5, Le2/m;->a:Le2/m;

    sget-object v5, Le2/m;->a:Le2/m;

    iget-object v6, v0, LW1/a;->h:LW1/m;

    iget-object v6, v6, LW1/m;->d:Ljava/lang/String;

    iget-object v7, v0, LW1/a;->i:Ljava/util/List;

    invoke-virtual {v5, v1, v6, v7}, Le2/m;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v1

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    const-string v6, "sslSocketSession"

    invoke-static {v5, v6}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LW1/t;->h(Ljavax/net/ssl/SSLSession;)LW1/j;

    move-result-object v6

    iget-object v7, v0, LW1/a;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v7}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v8, v0, LW1/a;->h:LW1/m;

    iget-object v8, v8, LW1/m;->d:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, LW1/j;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, p2}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LW1/a;->h:LW1/m;

    iget-object v0, v0, LW1/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, LW1/d;->c:LW1/d;

    invoke-static {p1}, LW1/t;->m(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Li2/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {p1, v3}, Li2/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LS1/e;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LW1/a;->h:LW1/m;

    iget-object v0, v0, LW1/m;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v2, v0, LW1/a;->e:LW1/d;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    new-instance v3, LW1/j;

    iget-object v5, v6, LW1/j;->a:LW1/z;

    iget-object v7, v6, LW1/j;->b:LW1/f;

    iget-object v8, v6, LW1/j;->c:Ljava/util/List;

    new-instance v9, La2/j;

    invoke-direct {v9, v2, v6, v0}, La2/j;-><init>(LW1/d;LW1/j;LW1/a;)V

    invoke-direct {v3, v5, v7, v8, v9}, LW1/j;-><init>(LW1/z;LW1/f;Ljava/util/List;LN1/a;)V

    iput-object v3, p0, La2/k;->e:LW1/j;

    iget-object v0, v0, LW1/a;->h:LW1/m;

    iget-object v0, v0, LW1/m;->d:Ljava/lang/String;

    const-string v3, "hostname"

    invoke-static {v0, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, LW1/d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean p1, p1, LW1/g;->b:Z

    if-eqz p1, :cond_5

    sget-object p1, Le2/m;->a:Le2/m;

    sget-object p1, Le2/m;->a:Le2/m;

    invoke-virtual {p1, v1}, Le2/m;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    iput-object v1, p0, La2/k;->d:Ljava/net/Socket;

    invoke-static {v1}, LV0/a;->v(Ljava/net/Socket;)Lj2/d;

    move-result-object p1

    new-instance v0, Lj2/r;

    invoke-direct {v0, p1}, Lj2/r;-><init>(Lj2/x;)V

    iput-object v0, p0, La2/k;->h:Lj2/r;

    invoke-static {v1}, LV0/a;->r(Ljava/net/Socket;)Lj2/c;

    move-result-object p1

    new-instance v0, Lj2/p;

    invoke-direct {v0, p1}, Lj2/p;-><init>(Lj2/v;)V

    iput-object v0, p0, La2/k;->i:Lj2/p;

    if-eqz v4, :cond_6

    invoke-static {v4}, LW1/t;->j(Ljava/lang/String;)LW1/r;

    move-result-object p2

    :cond_6
    iput-object p2, p0, La2/k;->f:LW1/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Le2/m;->a:Le2/m;

    sget-object p1, Le2/m;->a:Le2/m;

    invoke-virtual {p1, v1}, Le2/m;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, La2/k;->f:LW1/r;

    sget-object p2, LW1/r;->i:LW1/r;

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, La2/k;->l()V

    :cond_7
    return-void

    :cond_8
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v4, :cond_9

    sget-object p2, Le2/m;->a:Le2/m;

    sget-object p2, Le2/m;->a:Le2/m;

    invoke-virtual {p2, v4}, Le2/m;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v4}, LX1/b;->e(Ljava/net/Socket;)V

    :cond_a
    throw p1
.end method

.method public final h(LW1/a;Ljava/util/List;)Z
    .locals 10

    const-string v0, "hostname"

    iget-object v1, p1, LW1/a;->h:LW1/m;

    sget-object v2, LX1/b;->a:[B

    iget-object v2, p0, La2/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, La2/k;->o:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_a

    iget-boolean v2, p0, La2/k;->j:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, La2/k;->b:LW1/y;

    iget-object v3, v2, LW1/y;->a:LW1/a;

    iget-object v5, v2, LW1/y;->a:LW1/a;

    invoke-virtual {v3, p1}, LW1/a;->a(LW1/a;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, v1, LW1/m;->d:Ljava/lang/String;

    iget-object v6, v1, LW1/m;->d:Ljava/lang/String;

    iget-object v7, v5, LW1/a;->h:LW1/m;

    iget-object v7, v7, LW1/m;->d:Ljava/lang/String;

    invoke-static {v3, v7}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    return v7

    :cond_2
    iget-object v3, p0, La2/k;->g:Ld2/o;

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LW1/y;

    iget-object v8, v3, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_5

    iget-object v8, v2, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    if-ne v8, v9, :cond_5

    iget-object v8, v2, LW1/y;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-static {v8, v3}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p2, p1, LW1/a;->d:Ljavax/net/ssl/HostnameVerifier;

    sget-object v2, Li2/c;->a:Li2/c;

    if-eq p2, v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, LX1/b;->a:[B

    iget-object p2, v5, LW1/a;->h:LW1/m;

    iget v1, v1, LW1/m;->e:I

    iget v2, p2, LW1/m;->e:I

    if-eq v1, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, LW1/m;->d:Ljava/lang/String;

    invoke-static {v6, p2}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, La2/k;->k:Z

    if-nez p2, :cond_a

    iget-object p2, p0, La2/k;->e:LW1/j;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, LW1/j;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p2, v1}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v6, p2}, Li2/c;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_0
    :try_start_0
    iget-object p1, p1, LW1/a;->e:LW1/d;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object p2, p0, La2/k;->e:LW1/j;

    invoke-static {p2}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, LW1/j;->a()Ljava/util/List;

    move-result-object p2

    invoke-static {v6, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerCertificates"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LW1/d;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_9

    return v7

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_1
    return v4
.end method

.method public final i(Z)Z
    .locals 9

    sget-object v0, LX1/b;->a:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, La2/k;->c:Ljava/net/Socket;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, p0, La2/k;->d:Ljava/net/Socket;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v4, p0, La2/k;->h:Lj2/r;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, La2/k;->g:Ld2/o;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p1, v2, Ld2/o;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    :try_start_1
    iget-wide v3, v2, Ld2/o;->r:J

    iget-wide v7, v2, Ld2/o;->q:J

    cmp-long p1, v3, v7

    if-gez p1, :cond_2

    iget-wide v3, v2, Ld2/o;->s:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    monitor-exit v2

    return v5

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v6

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget-wide v7, p0, La2/k;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v0, v0, v7

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, Lj2/r;->c()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/2addr v0, v6

    :try_start_6
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_1
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move v5, v6

    :catch_1
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    return v5
.end method

.method public final j(LW1/q;Lb2/g;)Lb2/e;
    .locals 6

    iget v0, p2, Lb2/g;->g:I

    iget-object v1, p0, La2/k;->d:Ljava/net/Socket;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, p0, La2/k;->h:Lj2/r;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, p0, La2/k;->i:Lj2/p;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v4, p0, La2/k;->g:Ld2/o;

    if-eqz v4, :cond_0

    new-instance v0, Ld2/p;

    invoke-direct {v0, p1, p0, p2, v4}, Ld2/p;-><init>(LW1/q;La2/k;Lb2/g;Ld2/o;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, v2, Lj2/r;->e:Lj2/x;

    invoke-interface {v1}, Lj2/x;->a()Lj2/z;

    move-result-object v1

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Lj2/z;->g(J)Lj2/z;

    iget-object v0, v3, Lj2/p;->e:Lj2/v;

    invoke-interface {v0}, Lj2/v;->a()Lj2/z;

    move-result-object v0

    iget p2, p2, Lb2/g;->h:I

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Lj2/z;->g(J)Lj2/z;

    new-instance p2, Lc2/g;

    invoke-direct {p2, p1, p0, v2, v3}, Lc2/g;-><init>(LW1/q;La2/k;Lj2/r;Lj2/p;)V

    return-object p2
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La2/k;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, La2/k;->d:Ljava/net/Socket;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v1, p0, La2/k;->h:Lj2/r;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v2, p0, La2/k;->i:Lj2/p;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, LM0/r0;

    sget-object v5, LZ1/d;->i:LZ1/d;

    invoke-direct {v4, v5}, LM0/r0;-><init>(LZ1/d;)V

    iget-object v6, p0, La2/k;->b:LW1/y;

    iget-object v6, v6, LW1/y;->a:LW1/a;

    iget-object v6, v6, LW1/a;->h:LW1/m;

    iget-object v6, v6, LW1/m;->d:Ljava/lang/String;

    const-string v7, "peerName"

    invoke-static {v6, v7}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, LM0/r0;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LX1/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "<set-?>"

    invoke-static {v0, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, LM0/r0;->e:Ljava/lang/Object;

    iput-object v1, v4, LM0/r0;->b:Ljava/lang/Object;

    iput-object v2, v4, LM0/r0;->f:Ljava/lang/Object;

    iput-object p0, v4, LM0/r0;->g:Ljava/lang/Object;

    new-instance v0, Ld2/o;

    invoke-direct {v0, v4}, Ld2/o;-><init>(LM0/r0;)V

    iput-object v0, p0, La2/k;->g:Ld2/o;

    sget-object v1, Ld2/o;->D:LJ/u;

    iget v2, v1, LJ/u;->f:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v1, v1, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, La2/k;->o:I

    iget-object v1, v0, Ld2/o;->A:Ld2/x;

    const-string v2, ">> CONNECTION "

    monitor-enter v1

    :try_start_0
    iget-boolean v6, v1, Ld2/x;->h:Z

    if-nez v6, :cond_9

    sget-object v6, Ld2/x;->j:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ld2/f;->a:Lj2/j;

    invoke-virtual {v2}, Lj2/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v7}, LX1/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_1
    iget-object v2, v1, Ld2/x;->e:Lj2/h;

    sget-object v6, Ld2/f;->a:Lj2/j;

    invoke-interface {v2, v6}, Lj2/h;->g(Lj2/j;)Lj2/h;

    iget-object v2, v1, Ld2/x;->e:Lj2/h;

    invoke-interface {v2}, Lj2/h;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v2, v0, Ld2/o;->A:Ld2/x;

    iget-object v1, v0, Ld2/o;->t:LJ/u;

    monitor-enter v2

    :try_start_1
    const-string v6, "settings"

    invoke-static {v1, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v6, v2, Ld2/x;->h:Z

    if-nez v6, :cond_8

    iget v6, v1, LJ/u;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v2, v3, v6, v4, v3}, Ld2/x;->q(IIII)V

    move v6, v3

    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_6

    const/4 v7, 0x1

    shl-int v8, v7, v6

    iget v9, v1, LJ/u;->f:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v3

    :goto_3
    if-eqz v7, :cond_5

    if-eq v6, v4, :cond_4

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    move v7, v6

    goto :goto_4

    :cond_3
    move v7, v4

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    :goto_4
    iget-object v8, v2, Ld2/x;->e:Lj2/h;

    invoke-interface {v8, v7}, Lj2/h;->writeShort(I)Lj2/h;

    iget-object v7, v2, Ld2/x;->e:Lj2/h;

    iget-object v8, v1, LJ/u;->g:Ljava/lang/Object;

    check-cast v8, [I

    aget v8, v8, v6

    invoke-interface {v7, v8}, Lj2/h;->writeInt(I)Lj2/h;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v2, Ld2/x;->e:Lj2/h;

    invoke-interface {v1}, Lj2/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v1, v0, Ld2/o;->t:LJ/u;

    invoke-virtual {v1}, LJ/u;->e()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_7

    iget-object v4, v0, Ld2/o;->A:Ld2/x;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v4, v3, v1, v2}, Ld2/x;->v(IJ)V

    :cond_7
    invoke-virtual {v5}, LZ1/d;->e()LZ1/c;

    move-result-object v1

    iget-object v2, v0, Ld2/o;->g:Ljava/lang/String;

    iget-object v0, v0, Ld2/o;->B:Ld2/k;

    new-instance v3, LZ1/b;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, LZ1/b;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, LZ1/c;->c(LZ1/a;J)V

    return-void

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La2/k;->b:LW1/y;

    iget-object v2, v1, LW1/y;->a:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    iget-object v2, v2, LW1/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, LW1/y;->a:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    iget v2, v2, LW1/m;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, LW1/y;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La2/k;->e:LW1/j;

    if-eqz v1, :cond_0

    iget-object v1, v1, LW1/j;->b:LW1/f;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La2/k;->f:LW1/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
