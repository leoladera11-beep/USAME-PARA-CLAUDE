.class public final Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/n;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW1/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb2/a;->a:I

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LW1/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb2/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(LW1/v;I)I
    .locals 1

    iget-object p0, p0, LW1/v;->j:LW1/k;

    const-string v0, "Retry-After"

    invoke-virtual {p0, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "valueOf(header)"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final a(Lb2/g;)LW1/v;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lb2/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lb2/g;->e:LM0/r0;

    iget-object v3, v2, Lb2/g;->a:La2/h;

    sget-object v4, LF1/q;->e:LF1/q;

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v11, v3, La2/h;->m:La2/d;

    if-nez v11, :cond_f

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, La2/h;->o:Z

    if-nez v11, :cond_e

    iget-boolean v11, v3, La2/h;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_d

    monitor-exit v3

    if-eqz v0, :cond_2

    new-instance v0, La2/e;

    iget-object v11, v3, La2/h;->g:La2/l;

    iget-object v12, v4, LM0/r0;->c:Ljava/lang/Object;

    check-cast v12, LW1/m;

    iget-object v13, v3, La2/h;->e:LW1/q;

    iget-boolean v14, v12, LW1/m;->i:Z

    if-eqz v14, :cond_1

    iget-object v14, v13, LW1/q;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_0

    iget-object v15, v13, LW1/q;->w:Li2/c;

    iget-object v7, v13, LW1/q;->x:LW1/d;

    move-object/from16 v24, v7

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2
    new-instance v17, LW1/a;

    iget-object v7, v12, LW1/m;->d:Ljava/lang/String;

    iget v12, v12, LW1/m;->e:I

    iget-object v14, v13, LW1/q;->o:LW1/i;

    iget-object v15, v13, LW1/q;->r:Ljavax/net/SocketFactory;

    iget-object v5, v13, LW1/q;->q:LW1/b;

    iget-object v6, v13, LW1/q;->v:Ljava/util/List;

    move-object/from16 v25, v5

    iget-object v5, v13, LW1/q;->u:Ljava/util/List;

    iget-object v13, v13, LW1/q;->p:Ljava/net/ProxySelector;

    move-object/from16 v27, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move/from16 v19, v12

    move-object/from16 v28, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-direct/range {v17 .. v28}, LW1/a;-><init>(Ljava/lang/String;ILW1/i;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;LW1/d;LW1/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    move-object/from16 v5, v17

    invoke-direct {v0, v11, v5, v3}, La2/e;-><init>(La2/l;LW1/a;La2/h;)V

    iput-object v0, v3, La2/h;->k:La2/e;

    :cond_2
    :try_start_1
    iget-boolean v0, v3, La2/h;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    :try_start_2
    invoke-virtual {v2, v4}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object v0
    :try_end_2
    .catch La2/m; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v0}, LW1/v;->e()LW1/u;

    move-result-object v0

    invoke-virtual {v9}, LW1/v;->e()LW1/u;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, LW1/u;->g:LW1/x;

    invoke-virtual {v4}, LW1/u;->a()LW1/v;

    move-result-object v4

    iget-object v6, v4, LW1/v;->k:LW1/x;

    if-nez v6, :cond_3

    iput-object v4, v0, LW1/u;->j:LW1/v;

    invoke-virtual {v0}, LW1/u;->a()LW1/v;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_3
    const-string v0, "priorResponse.body != null"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v3, La2/h;->m:La2/d;

    invoke-virtual {v1, v9, v0}, Lb2/a;->b(LW1/v;La2/d;)LM0/r0;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, La2/h;->e(Z)V

    return-object v9

    :cond_5
    :try_start_4
    iget-object v0, v9, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_6

    invoke-static {v0}, LX1/b;->d(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, La2/h;->e(Z)V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    instance-of v6, v0, Ld2/a;

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v1, v0, v3, v4, v6}, Lb2/a;->c(Ljava/io/IOException;La2/h;LM0/r0;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/2addr v11, v7

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3, v7}, La2/h;->e(Z)V

    move-object v8, v6

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    throw v0

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    iget-object v6, v0, La2/m;->f:Ljava/io/IOException;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v3, v4, v7}, Lb2/a;->c(Ljava/io/IOException;La2/h;LM0/r0;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, v0, La2/m;->e:Ljava/io/IOException;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3, v12}, La2/h;->e(Z)V

    move-object v8, v6

    move v0, v7

    goto/16 :goto_1

    :cond_a
    :try_start_7
    iget-object v0, v0, La2/m;->e:Ljava/io/IOException;

    const-string v2, "<this>"

    invoke-static {v0, v2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    invoke-static {v0, v4}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    invoke-virtual {v3, v6}, La2/h;->e(Z)V

    throw v0

    :cond_d
    :try_start_8
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_8
    monitor-exit v3

    throw v0

    :cond_f
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v0, "Content-Encoding"

    const-string v3, "User-Agent"

    iget-object v4, v1, Lb2/a;->b:Ljava/lang/Object;

    check-cast v4, LW1/b;

    const-string v5, "gzip"

    const-string v6, "Accept-Encoding"

    const-string v7, "Connection"

    const-string v8, "Host"

    const-string v9, "Transfer-Encoding"

    const-string v10, "Content-Type"

    const-string v11, "Content-Length"

    iget-object v12, v2, Lb2/g;->e:LM0/r0;

    iget-object v13, v12, LM0/r0;->e:Ljava/lang/Object;

    check-cast v13, LW1/k;

    invoke-virtual {v12}, LM0/r0;->d()LC2/b;

    move-result-object v14

    iget-object v15, v12, LM0/r0;->c:Ljava/lang/Object;

    check-cast v15, LW1/m;

    iget-object v1, v12, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, LW1/t;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    const-wide/16 v18, -0x1

    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, LW1/t;->d()LW1/o;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v0, LW1/o;->a:Ljava/lang/String;

    invoke-virtual {v14, v10, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {v17 .. v17}, LW1/t;->c()J

    move-result-wide v0

    cmp-long v17, v0, v18

    if-eqz v17, :cond_11

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v11, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v9}, LC2/b;->q(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    const-string v0, "chunked"

    invoke-virtual {v14, v9, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v11}, LC2/b;->q(Ljava/lang/String;)V

    :cond_12
    :goto_9
    invoke-virtual {v13, v8}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    invoke-static {v15, v1}, LX1/b;->v(LW1/m;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v13, v7}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "Keep-Alive"

    invoke-virtual {v14, v7, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v13, v6}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "Range"

    invoke-virtual {v13, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {v14, v6, v5}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "url"

    invoke-static {v15, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "okhttp/4.12.0"

    invoke-virtual {v14, v3, v0}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v14}, LC2/b;->b()LM0/r0;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object v0

    iget-object v2, v0, LW1/v;->j:LW1/k;

    invoke-static {v4, v15, v2}, Lb2/f;->b(LW1/b;LW1/m;LW1/k;)V

    invoke-virtual {v0}, LW1/v;->e()LW1/u;

    move-result-object v3

    iput-object v12, v3, LW1/u;->a:LM0/r0;

    if-eqz v1, :cond_19

    move-object/from16 v1, v16

    invoke-virtual {v2, v1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_17

    move-object v4, v6

    :cond_17
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v0}, Lb2/f;->a(LW1/v;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v0, v0, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_19

    new-instance v4, Lj2/l;

    invoke-virtual {v0}, LW1/x;->q()Lj2/i;

    move-result-object v0

    invoke-direct {v4, v0}, Lj2/l;-><init>(Lj2/x;)V

    invoke-virtual {v2}, LW1/k;->d()LZ0/i;

    move-result-object v0

    invoke-virtual {v0, v1}, LZ0/i;->y(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, LZ0/i;->y(Ljava/lang/String;)V

    invoke-virtual {v0}, LZ0/i;->k()LW1/k;

    move-result-object v0

    invoke-virtual {v0}, LW1/k;->d()LZ0/i;

    move-result-object v0

    iput-object v0, v3, LW1/u;->f:LZ0/i;

    invoke-virtual {v2, v10}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    move-object v6, v0

    :goto_a
    new-instance v0, Lb2/h;

    new-instance v1, Lj2/r;

    invoke-direct {v1, v4}, Lj2/r;-><init>(Lj2/x;)V

    move-wide/from16 v4, v18

    invoke-direct {v0, v6, v4, v5, v1}, Lb2/h;-><init>(Ljava/lang/String;JLj2/r;)V

    iput-object v0, v3, LW1/u;->g:LW1/x;

    :cond_19
    invoke-virtual {v3}, LW1/u;->a()LW1/v;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(LW1/v;La2/d;)LM0/r0;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, La2/d;->e:Ljava/lang/Object;

    check-cast v1, La2/k;

    if-eqz v1, :cond_0

    iget-object v1, v1, La2/k;->b:LW1/y;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, LW1/v;->h:I

    iget-object v3, p1, LW1/v;->e:LM0/r0;

    iget-object v3, v3, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x134

    const/16 v7, 0x133

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_c

    const/16 v8, 0x191

    if-eq v2, v8, :cond_b

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_9

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lb2/a;->b:Ljava/lang/Object;

    check-cast v1, LW1/q;

    iget-boolean v1, v1, LW1/q;->j:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, p1, LW1/v;->n:LW1/v;

    if-eqz v1, :cond_3

    iget v1, v1, LW1/v;->h:I

    if-ne v1, p2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v4}, Lb2/a;->d(LW1/v;I)I

    move-result p2

    if-lez p2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p1, p1, LW1/v;->e:LM0/r0;

    return-object p1

    :cond_5
    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object p1, v1, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lb2/a;->b:Ljava/lang/Object;

    check-cast p1, LW1/q;

    iget-object p1, p1, LW1/q;->q:LW1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v1, p1, LW1/v;->n:LW1/v;

    if-eqz v1, :cond_8

    iget v1, v1, LW1/v;->h:I

    if-ne v1, p2, :cond_8

    goto/16 :goto_3

    :cond_8
    const p2, 0x7fffffff

    invoke-static {p1, p2}, Lb2/a;->d(LW1/v;I)I

    move-result p2

    if-nez p2, :cond_12

    iget-object p1, p1, LW1/v;->e:LM0/r0;

    return-object p1

    :cond_9
    if-eqz p2, :cond_12

    iget-object v1, p2, La2/d;->c:Ljava/lang/Object;

    check-cast v1, La2/e;

    iget-object v1, v1, La2/e;->b:LW1/a;

    iget-object v1, v1, LW1/a;->h:LW1/m;

    iget-object v1, v1, LW1/m;->d:Ljava/lang/String;

    iget-object v2, p2, La2/d;->e:Ljava/lang/Object;

    check-cast v2, La2/k;

    iget-object v2, v2, La2/k;->b:LW1/y;

    iget-object v2, v2, LW1/y;->a:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    iget-object v2, v2, LW1/m;->d:Ljava/lang/String;

    invoke-static {v1, v2}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object p2, p2, La2/d;->e:Ljava/lang/Object;

    check-cast p2, La2/k;

    monitor-enter p2

    :try_start_0
    iput-boolean v5, p2, La2/k;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, LW1/v;->e:LM0/r0;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    iget-object p1, p0, Lb2/a;->b:Ljava/lang/Object;

    check-cast p1, LW1/q;

    iget-object p1, p1, LW1/q;->k:LW1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object v1, p0, Lb2/a;->b:Ljava/lang/Object;

    check-cast v1, LW1/q;

    iget-boolean v2, v1, LW1/q;->l:Z

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    const-string v2, "Location"

    iget-object v8, p1, LW1/v;->j:LW1/k;

    invoke-virtual {v8, v2}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move-object v2, v0

    :cond_e
    iget-object v8, p1, LW1/v;->e:LM0/r0;

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    iget-object v9, v8, LM0/r0;->c:Ljava/lang/Object;

    check-cast v9, LW1/m;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v10, LW1/l;

    invoke-direct {v10}, LW1/l;-><init>()V

    invoke-virtual {v10, v9, v2}, LW1/l;->d(LW1/m;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object v10, v0

    :goto_1
    if-eqz v10, :cond_10

    invoke-virtual {v10}, LW1/l;->b()LW1/m;

    move-result-object v2

    goto :goto_2

    :cond_10
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_11

    goto :goto_3

    :cond_11
    iget-object v9, v2, LW1/m;->a:Ljava/lang/String;

    iget-object v10, v8, LM0/r0;->c:Ljava/lang/Object;

    check-cast v10, LW1/m;

    iget-object v10, v10, LW1/m;->a:Ljava/lang/String;

    invoke-static {v9, v10}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-boolean v1, v1, LW1/q;->m:Z

    if-nez v1, :cond_13

    :cond_12
    :goto_3
    return-object v0

    :cond_13
    invoke-virtual {v8}, LM0/r0;->d()LC2/b;

    move-result-object v1

    invoke-static {v3}, Lcom/brisa/local/v;->q(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget p1, p1, LW1/v;->h:I

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    if-eq p1, v6, :cond_14

    if-ne p1, v7, :cond_15

    :cond_14
    move v4, v5

    :cond_15
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    if-eq p1, v6, :cond_16

    if-eq p1, v7, :cond_16

    const-string p1, "GET"

    invoke-virtual {v1, p1, v0}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    goto :goto_4

    :cond_16
    if-eqz v4, :cond_17

    iget-object p1, v8, LM0/r0;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LW1/t;

    :cond_17
    invoke-virtual {v1, v3, v0}, LC2/b;->m(Ljava/lang/String;LW1/t;)V

    :goto_4
    if-nez v4, :cond_18

    const-string p1, "Transfer-Encoding"

    invoke-virtual {v1, p1}, LC2/b;->q(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    invoke-virtual {v1, p1}, LC2/b;->q(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    invoke-virtual {v1, p1}, LC2/b;->q(Ljava/lang/String;)V

    :cond_18
    iget-object p1, v8, LM0/r0;->c:Ljava/lang/Object;

    check-cast p1, LW1/m;

    invoke-static {p1, v2}, LX1/b;->a(LW1/m;LW1/m;)Z

    move-result p1

    if-nez p1, :cond_19

    const-string p1, "Authorization"

    invoke-virtual {v1, p1}, LC2/b;->q(Ljava/lang/String;)V

    :cond_19
    iput-object v2, v1, LC2/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, LC2/b;->b()LM0/r0;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;La2/h;LM0/r0;Z)Z
    .locals 3

    iget-object p3, p0, Lb2/a;->b:Ljava/lang/Object;

    check-cast p3, LW1/q;

    iget-boolean p3, p3, LW1/q;->j:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_1

    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_1

    return v0

    :cond_1
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_2

    return v0

    :cond_2
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_3

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_10

    if-nez p4, :cond_10

    goto :goto_0

    :cond_3
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_4

    goto/16 :goto_5

    :cond_4
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_5

    return v0

    :cond_5
    :goto_0
    iget-object p1, p2, La2/h;->k:La2/e;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    iget p2, p1, La2/e;->f:I

    const/4 p3, 0x1

    if-nez p2, :cond_6

    iget p4, p1, La2/e;->g:I

    if-nez p4, :cond_6

    iget p4, p1, La2/e;->h:I

    if-nez p4, :cond_6

    move p1, v0

    goto :goto_4

    :cond_6
    iget-object p4, p1, La2/e;->i:LW1/y;

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    const/4 p4, 0x0

    if-gt p2, p3, :cond_c

    iget p2, p1, La2/e;->g:I

    if-gt p2, p3, :cond_c

    iget p2, p1, La2/e;->h:I

    if-lez p2, :cond_8

    goto :goto_1

    :cond_8
    iget-object p2, p1, La2/e;->c:La2/h;

    iget-object p2, p2, La2/h;->l:La2/k;

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    monitor-enter p2

    :try_start_0
    iget v1, p2, La2/k;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_a

    monitor-exit p2

    goto :goto_1

    :cond_a
    :try_start_1
    iget-object v1, p2, La2/k;->b:LW1/y;

    iget-object v1, v1, LW1/y;->a:LW1/a;

    iget-object v1, v1, LW1/a;->h:LW1/m;

    iget-object v2, p1, La2/e;->b:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    invoke-static {v1, v2}, LX1/b;->a(LW1/m;LW1/m;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_b

    monitor-exit p2

    goto :goto_1

    :cond_b
    :try_start_2
    iget-object p4, p2, La2/k;->b:LW1/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    iput-object p4, p1, La2/e;->i:LW1/y;

    :goto_2
    move p1, p3

    goto :goto_4

    :cond_d
    iget-object p2, p1, La2/e;->d:LJ/u;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, LJ/u;->f()Z

    move-result p2

    if-ne p2, p3, :cond_e

    goto :goto_3

    :cond_e
    iget-object p1, p1, La2/e;->e:LJ/c;

    if-nez p1, :cond_f

    :goto_3
    goto :goto_2

    :cond_f
    invoke-virtual {p1}, LJ/c;->d()Z

    move-result p1

    :goto_4
    if-nez p1, :cond_11

    :cond_10
    :goto_5
    return v0

    :cond_11
    return p3
.end method
