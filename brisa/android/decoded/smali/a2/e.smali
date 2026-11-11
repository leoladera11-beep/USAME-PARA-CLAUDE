.class public final La2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La2/l;

.field public final b:LW1/a;

.field public final c:La2/h;

.field public d:LJ/u;

.field public e:LJ/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:LW1/y;


# direct methods
.method public constructor <init>(La2/l;LW1/a;La2/h;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/e;->a:La2/l;

    iput-object p2, p0, La2/e;->b:LW1/a;

    iput-object p3, p0, La2/e;->c:La2/h;

    return-void
.end method


# virtual methods
.method public final a(IIIZZ)La2/k;
    .locals 12

    :cond_0
    :goto_0
    iget-object v0, p0, La2/e;->c:La2/h;

    iget-boolean v0, v0, La2/h;->q:Z

    if-nez v0, :cond_23

    iget-object v0, p0, La2/e;->c:La2/h;

    iget-object v1, v0, La2/h;->l:La2/k;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    monitor-enter v1

    :try_start_0
    iget-boolean v3, v1, La2/k;->j:Z

    if-nez v3, :cond_2

    iget-object v3, v1, La2/k;->b:LW1/y;

    iget-object v3, v3, LW1/y;->a:LW1/a;

    iget-object v3, v3, LW1/a;->h:LW1/m;

    invoke-virtual {p0, v3}, La2/e;->b(LW1/m;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v3, p0, La2/e;->c:La2/h;

    invoke-virtual {v3}, La2/h;->i()Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v1

    iget-object v4, p0, La2/e;->c:La2/h;

    iget-object v4, v4, La2/h;->l:La2/k;

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    :goto_3
    move/from16 v2, p5

    goto/16 :goto_10

    :cond_3
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v3}, LX1/b;->e(Ljava/net/Socket;)V

    goto :goto_5

    :goto_4
    monitor-exit v1

    throw p1

    :cond_5
    :goto_5
    const/4 v1, 0x0

    iput v1, p0, La2/e;->f:I

    iput v1, p0, La2/e;->g:I

    iput v1, p0, La2/e;->h:I

    iget-object v3, p0, La2/e;->a:La2/l;

    iget-object v4, p0, La2/e;->b:LW1/a;

    iget-object v5, p0, La2/e;->c:La2/h;

    invoke-virtual {v3, v4, v5, v2, v1}, La2/l;->a(LW1/a;La2/h;Ljava/util/ArrayList;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, La2/e;->c:La2/h;

    iget-object v1, v1, La2/h;->l:La2/k;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, La2/e;->i:LW1/y;

    if-eqz v3, :cond_7

    iput-object v2, p0, La2/e;->i:LW1/y;

    :goto_6
    move-object v4, v2

    goto/16 :goto_f

    :cond_7
    iget-object v3, p0, La2/e;->d:LJ/u;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, LJ/u;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v1, p0, La2/e;->d:LJ/u;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, LJ/u;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, LJ/u;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget v4, v1, LJ/u;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, LJ/u;->f:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LW1/y;

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_9
    iget-object v3, p0, La2/e;->e:LJ/c;

    if-nez v3, :cond_a

    new-instance v3, LJ/c;

    iget-object v4, p0, La2/e;->b:LW1/a;

    iget-object v5, p0, La2/e;->c:La2/h;

    iget-object v6, v5, La2/h;->e:LW1/q;

    iget-object v6, v6, LW1/q;->C:LZ0/i;

    invoke-direct {v3, v4, v6, v5}, LJ/c;-><init>(LW1/a;LZ0/i;La2/h;)V

    iput-object v3, p0, La2/e;->e:LJ/c;

    :cond_a
    invoke-virtual {v3}, LJ/c;->d()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    iget v5, v3, LJ/c;->a:I

    iget-object v6, v3, LJ/c;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    iget-object v5, v3, LJ/c;->b:Ljava/lang/Object;

    check-cast v5, LW1/a;

    const-string v6, "No route to "

    iget v7, v3, LJ/c;->a:I

    iget-object v8, v3, LJ/c;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    iget-object v7, v3, LJ/c;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget v8, v3, LJ/c;->a:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v3, LJ/c;->a:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Proxy;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v3, LJ/c;->e:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_f

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    instance-of v10, v9, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_e

    const-string v10, "proxyAddress"

    invoke-static {v9, v10}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/net/InetSocketAddress;

    const-string v10, "<this>"

    invoke-static {v9, v10}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    if-nez v10, :cond_d

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hostName"

    invoke-static {v10, v11}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "address.hostAddress"

    invoke-static {v10, v11}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    goto :goto_9

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_f
    :goto_8
    iget-object v9, v5, LW1/a;->h:LW1/m;

    iget-object v10, v9, LW1/m;->d:Ljava/lang/String;

    iget v9, v9, LW1/m;->e:I

    :goto_9
    if-gt v0, v9, :cond_16

    const/high16 v11, 0x10000

    if-ge v9, v11, :cond_16

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v6, v11, :cond_10

    invoke-static {v10, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_10
    sget-object v6, LX1/b;->a:[B

    const-string v6, "<this>"

    invoke-static {v10, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LX1/b;->f:LO1/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LO1/f;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/regex/Pattern;

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, LF1/i;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_a

    :cond_11
    iget-object v6, v5, LW1/a;->a:LW1/i;

    invoke-interface {v6, v10}, LW1/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    move-object v5, v6

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    :goto_c
    iget-object v5, v3, LJ/c;->e:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    new-instance v8, LW1/y;

    iget-object v9, v3, LJ/c;->b:Ljava/lang/Object;

    check-cast v9, LW1/a;

    invoke-direct {v8, v9, v7, v6}, LW1/y;-><init>(LW1/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v6, v3, LJ/c;->c:Ljava/lang/Object;

    check-cast v6, LZ0/i;

    monitor-enter v6

    :try_start_1
    iget-object v9, v6, LZ0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    if-eqz v9, :cond_13

    iget-object v6, v3, LJ/c;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_e

    :cond_15
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v5, LW1/a;->a:LW1/i;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " returned no addresses for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/net/SocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; port is out of range"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/net/SocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v5, LW1/a;->h:LW1/m;

    iget-object p3, p3, LW1/m;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; exhausted proxy configurations: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v3, LJ/c;->d:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v3, LJ/c;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4, v5}, LF1/n;->y(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    iget-object v3, v3, LJ/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_19
    new-instance v3, LJ/u;

    invoke-direct {v3, v4}, LJ/u;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, La2/e;->d:LJ/u;

    iget-object v5, p0, La2/e;->c:La2/h;

    iget-boolean v5, v5, La2/h;->q:Z

    if-nez v5, :cond_21

    iget-object v5, p0, La2/e;->a:La2/l;

    iget-object v6, p0, La2/e;->b:LW1/a;

    iget-object v7, p0, La2/e;->c:La2/h;

    invoke-virtual {v5, v6, v7, v4, v1}, La2/l;->a(LW1/a;La2/h;Ljava/util/ArrayList;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, La2/e;->c:La2/h;

    iget-object v1, v1, La2/h;->l:La2/k;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v3}, LJ/u;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v3, LJ/u;->f:I

    add-int/lit8 v5, v1, 0x1

    iput v5, v3, LJ/u;->f:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LW1/y;

    :goto_f
    new-instance v5, La2/k;

    iget-object v1, p0, La2/e;->a:La2/l;

    invoke-direct {v5, v1, v3}, La2/k;-><init>(La2/l;LW1/y;)V

    iget-object v1, p0, La2/e;->c:La2/h;

    iput-object v5, v1, La2/h;->s:La2/k;

    :try_start_3
    iget-object v10, p0, La2/e;->c:La2/h;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, La2/k;->c(IIIZLa2/h;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v1, p0, La2/e;->c:La2/h;

    iput-object v2, v1, La2/h;->s:La2/k;

    iget-object v1, p0, La2/e;->c:La2/h;

    iget-object v1, v1, La2/h;->e:LW1/q;

    iget-object v1, v1, LW1/q;->C:LZ0/i;

    monitor-enter v1

    :try_start_4
    iget-object v2, v1, LZ0/i;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v1

    iget-object v1, p0, La2/e;->a:La2/l;

    iget-object v2, p0, La2/e;->b:LW1/a;

    iget-object v6, p0, La2/e;->c:La2/h;

    invoke-virtual {v1, v2, v6, v4, v0}, La2/l;->a(LW1/a;La2/h;Ljava/util/ArrayList;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, La2/e;->c:La2/h;

    iget-object v1, v1, La2/h;->l:La2/k;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iput-object v3, p0, La2/e;->i:LW1/y;

    iget-object v2, v5, La2/k;->d:Ljava/net/Socket;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-static {v2}, LX1/b;->e(Ljava/net/Socket;)V

    goto/16 :goto_3

    :cond_1b
    monitor-enter v5

    :try_start_5
    iget-object v1, p0, La2/e;->a:La2/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LX1/b;->a:[B

    iget-object v2, v1, La2/l;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, La2/l;->b:LZ1/c;

    iget-object v1, v1, La2/l;->c:LZ1/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, LZ1/c;->c(LZ1/a;J)V

    iget-object v1, p0, La2/e;->c:La2/h;

    invoke-virtual {v1, v5}, La2/h;->a(La2/k;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    move/from16 v2, p5

    move-object v1, v5

    :goto_10
    invoke-virtual {v1, v2}, La2/k;->i(Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-object v1

    :cond_1c
    invoke-virtual {v1}, La2/k;->k()V

    iget-object v1, p0, La2/e;->i:LW1/y;

    if-nez v1, :cond_0

    iget-object v1, p0, La2/e;->d:LJ/u;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, LJ/u;->f()Z

    move-result v1

    goto :goto_11

    :cond_1d
    move v1, v0

    :goto_11
    if-nez v1, :cond_0

    iget-object v1, p0, La2/e;->e:LJ/c;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, LJ/c;->d()Z

    move-result v0

    :cond_1e
    if-eqz v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit v5

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :catchall_4
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, La2/e;->c:La2/h;

    iput-object v2, p2, La2/h;->s:La2/k;

    throw p1

    :cond_20
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(LW1/m;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La2/e;->b:LW1/a;

    iget-object v0, v0, LW1/a;->h:LW1/m;

    iget v1, p1, LW1/m;->e:I

    iget v2, v0, LW1/m;->e:I

    if-ne v1, v2, :cond_0

    iget-object p1, p1, LW1/m;->d:Ljava/lang/String;

    iget-object v0, v0, LW1/m;->d:Ljava/lang/String;

    invoke-static {p1, v0}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, La2/e;->i:LW1/y;

    instance-of v0, p1, Ld2/A;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld2/A;

    iget v0, v0, Ld2/A;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget p1, p0, La2/e;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La2/e;->f:I

    return-void

    :cond_0
    instance-of p1, p1, Ld2/a;

    if-eqz p1, :cond_1

    iget p1, p0, La2/e;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La2/e;->g:I

    return-void

    :cond_1
    iget p1, p0, La2/e;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La2/e;->h:I

    return-void
.end method
