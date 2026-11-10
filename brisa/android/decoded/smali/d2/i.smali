.class public final Ld2/i;
.super LZ1/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Ld2/i;->e:I

    iput-object p2, p0, Ld2/i;->f:Ljava/lang/Object;

    iput-object p3, p0, Ld2/i;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LZ1/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Ld2/i;->e:I

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ld2/i;->f:Ljava/lang/Object;

    check-cast v0, Ld2/k;

    iget-object v5, v1, Ld2/i;->g:Ljava/lang/Object;

    check-cast v5, LJ/u;

    new-instance v6, LO1/f;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, LO1/f;-><init>(I)V

    iget-object v8, v0, Ld2/k;->f:Ld2/o;

    iget-object v9, v8, Ld2/o;->A:Ld2/x;

    monitor-enter v9

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v8, Ld2/o;->u:LJ/u;

    new-instance v10, LJ/u;

    const/4 v11, 0x5

    invoke-direct {v10, v7, v11}, LJ/u;-><init>(CI)V

    invoke-virtual {v10, v0}, LJ/u;->g(LJ/u;)V

    invoke-virtual {v10, v5}, LJ/u;->g(LJ/u;)V

    iput-object v10, v6, LO1/f;->f:Ljava/lang/Object;

    invoke-virtual {v10}, LJ/u;->e()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v0}, LJ/u;->e()I

    move-result v0

    int-to-long v12, v0

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_1

    iget-object v0, v8, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v8, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v14, v7, [Ld2/w;

    invoke-interface {v0, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld2/w;

    :goto_0
    move-object v14, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    iget-object v0, v6, LO1/f;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    const-string v15, "<set-?>"

    invoke-static {v0, v15}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Ld2/o;->u:LJ/u;

    iget-object v0, v8, Ld2/o;->n:LZ1/c;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v16, -0x1

    iget-object v3, v8, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ld2/i;

    invoke-direct {v4, v3, v8, v6, v7}, Ld2/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4, v12, v13}, LZ1/c;->c(LZ1/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v8, Ld2/o;->A:Ld2/x;

    iget-object v3, v6, LO1/f;->f:Ljava/lang/Object;

    check-cast v3, LJ/u;

    invoke-virtual {v0, v3}, Ld2/x;->c(LJ/u;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v8, v2, v2, v0}, Ld2/o;->c(IILjava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v9

    if-eqz v14, :cond_3

    array-length v0, v14

    :goto_4
    if-ge v7, v0, :cond_3

    aget-object v2, v14, v7

    monitor-enter v2

    :try_start_5
    iget-wide v3, v2, Ld2/w;->f:J

    add-long/2addr v3, v10

    iput-wide v3, v2, Ld2/w;->f:J

    if-lez v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    monitor-exit v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    return-wide v16

    :goto_5
    :try_start_6
    monitor-exit v8

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    monitor-exit v9

    throw v0

    :pswitch_0
    const-wide/16 v16, -0x1

    :try_start_7
    iget-object v0, v1, Ld2/i;->f:Ljava/lang/Object;

    check-cast v0, Ld2/o;

    iget-object v0, v0, Ld2/o;->e:Ld2/h;

    iget-object v3, v1, Ld2/i;->g:Ljava/lang/Object;

    check-cast v3, Ld2/w;

    invoke-virtual {v0, v3}, Ld2/h;->b(Ld2/w;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    sget-object v3, Le2/m;->a:Le2/m;

    sget-object v3, Le2/m;->a:Le2/m;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http2Connection.Listener failure for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Ld2/i;->f:Ljava/lang/Object;

    check-cast v5, Ld2/o;

    iget-object v5, v5, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    invoke-static {v4, v3, v0}, Le2/m;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    :try_start_8
    iget-object v3, v1, Ld2/i;->g:Ljava/lang/Object;

    check-cast v3, Ld2/w;

    invoke-virtual {v3, v2, v0}, Ld2/w;->c(ILjava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :goto_7
    return-wide v16

    :pswitch_1
    const-wide/16 v16, -0x1

    iget-object v0, v1, Ld2/i;->f:Ljava/lang/Object;

    check-cast v0, Ld2/o;

    iget-object v2, v0, Ld2/o;->e:Ld2/h;

    iget-object v3, v1, Ld2/i;->g:Ljava/lang/Object;

    check-cast v3, LO1/f;

    iget-object v3, v3, LO1/f;->f:Ljava/lang/Object;

    check-cast v3, LJ/u;

    invoke-virtual {v2, v0, v3}, Ld2/h;->a(Ld2/o;LJ/u;)V

    return-wide v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
