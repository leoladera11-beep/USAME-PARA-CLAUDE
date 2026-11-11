.class public final LU/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/j;


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:LL/C;

.field public final d:LB/A;

.field public final e:LU/T;

.field public final f:LJ/j;

.field public final g:Lb0/r;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:LL/n;

.field public l:Lb0/G;

.field public m:Z

.field public final synthetic n:LU/T;


# direct methods
.method public constructor <init>(LU/T;Landroid/net/Uri;LL/h;LB/A;LU/T;LJ/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/P;->n:LU/T;

    iput-object p2, p0, LU/P;->b:Landroid/net/Uri;

    new-instance p1, LL/C;

    invoke-direct {p1, p3}, LL/C;-><init>(LL/h;)V

    iput-object p1, p0, LU/P;->c:LL/C;

    iput-object p4, p0, LU/P;->d:LB/A;

    iput-object p5, p0, LU/P;->e:LU/T;

    iput-object p6, p0, LU/P;->f:LJ/j;

    new-instance p1, Lb0/r;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/P;->g:Lb0/r;

    const/4 p1, 0x1

    iput-boolean p1, p0, LU/P;->i:Z

    sget-object p1, LU/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, LU/P;->a:J

    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, LU/P;->c(JLjava/lang/String;)LL/n;

    move-result-object p1

    iput-object p1, p0, LU/P;->k:LL/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    :catch_0
    :cond_0
    :goto_0
    if-nez v3, :cond_f

    iget-boolean v5, v1, LU/P;->h:Z

    if-nez v5, :cond_f

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    :try_start_0
    iget-object v8, v1, LU/P;->g:Lb0/r;

    iget-wide v13, v8, Lb0/r;->a:J

    invoke-virtual {v1, v13, v14, v4}, LU/P;->c(JLjava/lang/String;)LL/n;

    move-result-object v4

    iput-object v4, v1, LU/P;->k:LL/n;

    iget-object v8, v1, LU/P;->c:LL/C;

    invoke-virtual {v8, v4}, LL/C;->d(LL/n;)J

    move-result-wide v8

    iget-boolean v4, v1, LU/P;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, LU/P;->d:LB/A;

    invoke-virtual {v0}, LB/A;->B()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    iget-object v0, v1, LU/P;->g:Lb0/r;

    iget-object v2, v1, LU/P;->d:LB/A;

    invoke-virtual {v2}, LB/A;->B()J

    move-result-wide v2

    iput-wide v2, v0, Lb0/r;->a:J

    :cond_2
    :goto_1
    iget-object v0, v1, LU/P;->c:LL/C;

    if-eqz v0, :cond_f

    :try_start_1
    invoke-virtual {v0}, LL/C;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_8

    :cond_3
    :try_start_2
    iget-object v4, v1, LU/P;->c:LL/C;

    iget-object v4, v4, LL/C;->e:LL/h;

    invoke-interface {v4}, LL/h;->m()Ljava/util/Map;

    move-result-object v4

    const-string v10, "ETag"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    move-object v4, v2

    :goto_2
    cmp-long v10, v8, v5

    if-eqz v10, :cond_5

    add-long/2addr v8, v13

    iget-object v10, v1, LU/P;->n:LU/T;

    iget-object v11, v10, LU/T;->v:Landroid/os/Handler;

    new-instance v12, LU/M;

    const/4 v15, 0x0

    invoke-direct {v12, v10, v15}, LU/M;-><init>(LU/T;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    move-wide v15, v8

    iget-object v8, v1, LU/P;->n:LU/T;

    iget-object v9, v1, LU/P;->c:LL/C;

    iget-object v9, v9, LL/C;->e:LL/h;

    invoke-interface {v9}, LL/h;->m()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lo0/b;->d(Ljava/util/Map;)Lo0/b;

    move-result-object v9

    iput-object v9, v8, LU/T;->x:Lo0/b;

    iget-object v8, v1, LU/P;->c:LL/C;

    iget-object v9, v1, LU/P;->n:LU/T;

    iget-object v9, v9, LU/T;->x:Lo0/b;

    if-eqz v9, :cond_6

    iget v9, v9, Lo0/b;->f:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    new-instance v10, LU/p;

    invoke-direct {v10, v8, v9, v1}, LU/p;-><init>(LL/h;ILU/P;)V

    iget-object v8, v1, LU/P;->n:LU/T;

    new-instance v9, LU/S;

    invoke-direct {v9, v0, v7}, LU/S;-><init>(IZ)V

    invoke-virtual {v8, v9}, LU/T;->C(LU/S;)Lb0/G;

    move-result-object v8

    iput-object v8, v1, LU/P;->l:Lb0/G;

    sget-object v9, LU/T;->Z:LG/x;

    invoke-interface {v8, v9}, Lb0/G;->b(LG/x;)V

    goto :goto_3

    :cond_6
    move-object v10, v8

    :goto_3
    iget-object v9, v1, LU/P;->d:LB/A;

    iget-object v11, v1, LU/P;->b:Landroid/net/Uri;

    iget-object v8, v1, LU/P;->c:LL/C;

    iget-object v8, v8, LL/C;->e:LL/h;

    invoke-interface {v8}, LL/h;->m()Ljava/util/Map;

    move-result-object v12

    iget-object v8, v1, LU/P;->e:LU/T;

    move-object/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, LB/A;->J(LL/h;Landroid/net/Uri;Ljava/util/Map;JJLU/T;)V

    iget-object v8, v1, LU/P;->n:LU/T;

    iget-object v8, v8, LU/T;->x:Lo0/b;

    if-eqz v8, :cond_8

    iget-object v8, v1, LU/P;->d:LB/A;

    iget-object v8, v8, LB/A;->g:Ljava/lang/Object;

    check-cast v8, Lb0/n;

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    instance-of v9, v8, Lu0/d;

    if-eqz v9, :cond_8

    check-cast v8, Lu0/d;

    iput-boolean v7, v8, Lu0/d;->r:Z

    :cond_8
    :goto_4
    iget-boolean v8, v1, LU/P;->i:Z

    if-eqz v8, :cond_9

    iget-object v8, v1, LU/P;->d:LB/A;

    iget-wide v9, v1, LU/P;->j:J

    iget-object v8, v8, LB/A;->g:Ljava/lang/Object;

    check-cast v8, Lb0/n;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v13, v14, v9, v10}, Lb0/n;->c(JJ)V

    iput-boolean v0, v1, LU/P;->i:Z

    :cond_9
    :goto_5
    if-nez v3, :cond_a

    iget-boolean v8, v1, LU/P;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_a

    :try_start_3
    iget-object v8, v1, LU/P;->f:LJ/j;

    invoke-virtual {v8}, LJ/j;->a()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, v1, LU/P;->d:LB/A;

    iget-object v9, v1, LU/P;->g:Lb0/r;

    iget-object v10, v8, LB/A;->g:Ljava/lang/Object;

    check-cast v10, Lb0/n;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, LB/A;->h:Ljava/lang/Object;

    check-cast v8, Lb0/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10, v8, v9}, Lb0/n;->e(Lb0/o;Lb0/r;)I

    move-result v3

    iget-object v8, v1, LU/P;->d:LB/A;

    invoke-virtual {v8}, LB/A;->B()J

    move-result-wide v8

    iget-object v10, v1, LU/P;->n:LU/T;

    iget-wide v10, v10, LU/T;->n:J

    add-long/2addr v10, v13

    cmp-long v10, v8, v10

    if-lez v10, :cond_9

    iget-object v10, v1, LU/P;->f:LJ/j;

    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-boolean v0, v10, LJ/j;->b:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v10

    iget-object v10, v1, LU/P;->n:LU/T;

    iget-object v11, v10, LU/T;->v:Landroid/os/Handler;

    iget-object v10, v10, LU/T;->u:LU/M;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v13, v8

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catch_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    if-ne v3, v7, :cond_b

    move v3, v0

    goto :goto_6

    :cond_b
    iget-object v7, v1, LU/P;->d:LB/A;

    invoke-virtual {v7}, LB/A;->B()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_c

    iget-object v5, v1, LU/P;->g:Lb0/r;

    iget-object v6, v1, LU/P;->d:LB/A;

    invoke-virtual {v6}, LB/A;->B()J

    move-result-wide v6

    iput-wide v6, v5, Lb0/r;->a:J

    :cond_c
    :goto_6
    iget-object v5, v1, LU/P;->c:LL/C;

    if-eqz v5, :cond_0

    :try_start_9
    invoke-virtual {v5}, LL/C;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :goto_7
    if-eq v3, v7, :cond_d

    iget-object v2, v1, LU/P;->d:LB/A;

    invoke-virtual {v2}, LB/A;->B()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d

    iget-object v2, v1, LU/P;->g:Lb0/r;

    iget-object v3, v1, LU/P;->d:LB/A;

    invoke-virtual {v3}, LB/A;->B()J

    move-result-wide v3

    iput-wide v3, v2, Lb0/r;->a:J

    :cond_d
    iget-object v2, v1, LU/P;->c:LL/C;

    if-eqz v2, :cond_e

    :try_start_a
    invoke-virtual {v2}, LL/C;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    :cond_e
    throw v0

    :catch_3
    :cond_f
    :goto_8
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/P;->h:Z

    return-void
.end method

.method public final c(JLjava/lang/String;)LL/n;
    .locals 12

    sget-object v0, LU/T;->Y:Ljava/util/Map;

    if-eqz p3, :cond_0

    const-string v1, "W/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LC1/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LC1/e;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, LC1/e;->n(Ljava/lang/Iterable;)LC1/e;

    const-string v0, "If-Range"

    invoke-virtual {v1, v0, p3}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    invoke-virtual {v1}, LC1/e;->c()Lu1/T;

    move-result-object v0

    :cond_0
    move-object v5, v0

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object p3, p0, LU/P;->n:LU/T;

    iget-object v10, p3, LU/T;->m:Ljava/lang/String;

    const-string p3, "The uri must be set."

    iget-object v2, p0, LU/P;->b:Landroid/net/Uri;

    invoke-static {v2, p3}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LL/n;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    const/4 v11, 0x6

    move-wide v6, p1

    invoke-direct/range {v1 .. v11}, LL/n;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    return-object v1
.end method
