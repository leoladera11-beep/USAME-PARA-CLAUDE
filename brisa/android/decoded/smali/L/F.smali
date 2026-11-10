.class public final LL/F;
.super LL/c;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:[B

.field public final k:Ljava/net/DatagramPacket;

.field public l:Landroid/net/Uri;

.field public m:Ljava/net/DatagramSocket;

.field public n:Ljava/net/MulticastSocket;

.field public o:Ljava/net/InetAddress;

.field public p:Z

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LL/c;-><init>(Z)V

    const/16 v0, 0x1f40

    iput v0, p0, LL/F;->i:I

    const/16 v0, 0x7d0

    new-array v1, v0, [B

    iput-object v1, p0, LL/F;->j:[B

    new-instance v2, Ljava/net/DatagramPacket;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v2, p0, LL/F;->k:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LL/F;->l:Landroid/net/Uri;

    iget-object v1, p0, LL/F;->n:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, LL/F;->o:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, LL/F;->n:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v1, p0, LL/F;->m:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, LL/F;->m:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v0, p0, LL/F;->o:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, LL/F;->q:I

    iget-boolean v1, p0, LL/F;->p:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, LL/F;->p:Z

    invoke-virtual {p0}, LL/c;->c()V

    :cond_2
    return-void
.end method

.method public final d(LL/n;)J
    .locals 3

    iget-object v0, p1, LL/n;->a:Landroid/net/Uri;

    iput-object v0, p0, LL/F;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LL/F;->l:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {p0}, LL/c;->e()V

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, LL/F;->o:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, LL/F;->o:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, LL/F;->o:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, LL/F;->n:Ljava/net/MulticastSocket;

    iget-object v0, p0, LL/F;->o:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, LL/F;->n:Ljava/net/MulticastSocket;

    iput-object v0, p0, LL/F;->m:Ljava/net/DatagramSocket;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, LL/F;->m:Ljava/net/DatagramSocket;

    :goto_0
    iget-object v0, p0, LL/F;->m:Ljava/net/DatagramSocket;

    iget v1, p0, LL/F;->i:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/F;->p:Z

    invoke-virtual {p0, p1}, LL/c;->g(LL/n;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_1
    new-instance v0, LL/E;

    const/16 v1, 0x7d1

    invoke-direct {v0, p1, v1}, LL/l;-><init>(Ljava/lang/Exception;I)V

    throw v0

    :goto_2
    new-instance v0, LL/E;

    const/16 v1, 0x7d6

    invoke-direct {v0, p1, v1}, LL/l;-><init>(Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, LL/F;->q:I

    iget-object v1, p0, LL/F;->k:Ljava/net/DatagramPacket;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, LL/F;->m:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, LL/F;->q:I

    invoke-virtual {p0, v0}, LL/c;->b(I)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, LL/E;

    const/16 p3, 0x7d1

    invoke-direct {p2, p1, p3}, LL/l;-><init>(Ljava/lang/Exception;I)V

    throw p2

    :goto_1
    new-instance p2, LL/E;

    const/16 p3, 0x7d2

    invoke-direct {p2, p1, p3}, LL/l;-><init>(Ljava/lang/Exception;I)V

    throw p2

    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, LL/F;->q:I

    sub-int/2addr v0, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, LL/F;->j:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LL/F;->q:I

    sub-int/2addr p1, p3

    iput p1, p0, LL/F;->q:I

    return p3
.end method

.method public final u()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LL/F;->l:Landroid/net/Uri;

    return-object v0
.end method
