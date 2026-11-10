.class public final Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/n;


# virtual methods
.method public final a(Lb2/g;)LW1/v;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Connection"

    const-string v2, "close"

    const-string v3, "HTTP "

    iget-object v4, v0, Lb2/g;->d:La2/d;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v5, v4, La2/d;->b:Ljava/lang/Object;

    check-cast v5, La2/h;

    iget-object v6, v4, La2/d;->d:Ljava/lang/Object;

    check-cast v6, Lb2/e;

    iget-object v7, v4, La2/d;->e:Ljava/lang/Object;

    check-cast v7, La2/k;

    iget-object v8, v0, Lb2/g;->e:LM0/r0;

    iget-object v0, v8, LM0/r0;->b:Ljava/lang/Object;

    check-cast v0, LW1/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v6, v8}, Lb2/e;->g(LM0/r0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v13, v8, LM0/r0;->d:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/brisa/local/v;->q(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    if-eqz v0, :cond_3

    const-string v13, "100-continue"

    const-string v15, "Expect"

    iget-object v11, v8, LM0/r0;->e:Ljava/lang/Object;

    check-cast v11, LW1/k;

    invoke-virtual {v11, v15}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_0

    :try_start_2
    invoke-interface {v6}, Lb2/e;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v4, v14}, La2/d;->f(Z)LW1/u;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v12

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, La2/d;->g(Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v11, v12

    :goto_0
    if-nez v11, :cond_1

    :try_start_4
    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, LW1/t;->c()J

    move-result-wide v13

    invoke-interface {v6, v8, v13, v14}, Lb2/e;->d(LM0/r0;J)Lj2/v;

    move-result-object v5

    new-instance v15, La2/b;

    invoke-direct {v15, v4, v5, v13, v14}, La2/b;-><init>(La2/d;Lj2/v;J)V

    new-instance v5, Lj2/p;

    invoke-direct {v5, v15}, Lj2/p;-><init>(Lj2/v;)V

    invoke-virtual {v0, v5}, LW1/t;->n(Lj2/p;)V

    invoke-virtual {v5}, Lj2/p;->close()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v5, v4, v14, v13, v12}, La2/h;->g(La2/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v0, v7, La2/k;->g:Ld2/o;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_4

    invoke-interface {v6}, Lb2/e;->h()La2/k;

    move-result-object v0

    invoke-virtual {v0}, La2/k;->k()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v5, v4, v14, v13, v12}, La2/h;->g(La2/d;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v11, v12

    :cond_4
    :goto_2
    :try_start_6
    invoke-interface {v6}, Lb2/e;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v5, v12

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v4, v0}, La2/d;->g(Ljava/io/IOException;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v4, v0}, La2/d;->g(Ljava/io/IOException;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    instance-of v5, v0, Ld2/a;

    if-nez v5, :cond_12

    iget-boolean v5, v4, La2/d;->a:Z

    if-eqz v5, :cond_11

    move-object v5, v0

    :goto_4
    if-nez v11, :cond_5

    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v4, v13}, La2/d;->f(Z)LW1/u;

    move-result-object v11

    invoke-static {v11}, LO1/d;->b(Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :cond_5
    :goto_5
    iput-object v8, v11, LW1/u;->a:LM0/r0;

    iget-object v0, v7, La2/k;->e:LW1/j;

    iput-object v0, v11, LW1/u;->e:LW1/j;

    iput-wide v9, v11, LW1/u;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v11, LW1/u;->l:J

    invoke-virtual {v11}, LW1/u;->a()LW1/v;

    move-result-object v0

    iget v11, v0, LW1/v;->h:I

    const/16 v13, 0x64

    if-ne v11, v13, :cond_6

    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    const/16 v13, 0x66

    if-gt v13, v11, :cond_7

    const/16 v13, 0xc8

    if-ge v11, v13, :cond_7

    goto :goto_6

    :goto_7
    invoke-virtual {v4, v13}, La2/d;->f(Z)LW1/u;

    move-result-object v0

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iput-object v8, v0, LW1/u;->a:LM0/r0;

    iget-object v7, v7, La2/k;->e:LW1/j;

    iput-object v7, v0, LW1/u;->e:LW1/j;

    iput-wide v9, v0, LW1/u;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, LW1/u;->l:J

    invoke-virtual {v0}, LW1/u;->a()LW1/v;

    move-result-object v0

    iget v11, v0, LW1/v;->h:I

    :cond_7
    invoke-virtual {v0}, LW1/v;->e()LW1/u;

    move-result-object v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    const-string v8, "Content-Type"

    iget-object v9, v0, LW1/v;->j:LW1/k;

    invoke-virtual {v9, v8}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v8, v12

    :cond_8
    invoke-interface {v6, v0}, Lb2/e;->e(LW1/v;)J

    move-result-wide v9

    invoke-interface {v6, v0}, Lb2/e;->c(LW1/v;)Lj2/x;

    move-result-object v0

    new-instance v13, La2/c;

    invoke-direct {v13, v4, v0, v9, v10}, La2/c;-><init>(La2/d;Lj2/x;J)V

    new-instance v0, Lb2/h;

    new-instance v14, Lj2/r;

    invoke-direct {v14, v13}, Lj2/r;-><init>(Lj2/x;)V

    invoke-direct {v0, v8, v9, v10, v14}, Lb2/h;-><init>(Ljava/lang/String;JLj2/r;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    iput-object v0, v7, LW1/u;->g:LW1/x;

    invoke-virtual {v7}, LW1/u;->a()LW1/v;

    move-result-object v0

    iget-object v4, v0, LW1/v;->e:LM0/r0;

    iget-object v4, v4, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LW1/k;

    invoke-virtual {v4, v1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, LW1/v;->j:LW1/k;

    invoke-virtual {v4, v1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v1, v12

    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-interface {v6}, Lb2/e;->h()La2/k;

    move-result-object v1

    invoke-virtual {v1}, La2/k;->k()V

    :cond_b
    const/16 v1, 0xcc

    if-eq v11, v1, :cond_c

    const/16 v1, 0xcd

    if-ne v11, v1, :cond_f

    :cond_c
    iget-object v1, v0, LW1/v;->k:LW1/x;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, LW1/x;->c()J

    move-result-wide v1

    goto :goto_8

    :cond_d
    const-wide/16 v1, -0x1

    :goto_8
    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_f

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LW1/x;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :cond_e
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0

    :catch_6
    move-exception v0

    invoke-virtual {v4, v0}, La2/d;->g(Ljava/io/IOException;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_9
    if-eqz v5, :cond_10

    invoke-static {v5, v0}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v5

    :cond_10
    throw v0

    :cond_11
    throw v0

    :cond_12
    throw v0
.end method
