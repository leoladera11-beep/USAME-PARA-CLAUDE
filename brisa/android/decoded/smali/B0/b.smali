.class public final LB0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/m;
.implements Lz1/u;


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    .line 3
    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LB0/b;->f:Ljava/lang/Object;

    .line 4
    new-instance p1, LB0/a;

    invoke-direct {p1}, LB0/a;-><init>()V

    iput-object p1, p0, LB0/b;->g:Ljava/lang/Object;

    return-void

    .line 5
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LB0/b;->f:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LB0/b;->g:Ljava/lang/Object;

    return-void

    .line 9
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LB0/b;->f:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LB0/b;->g:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LB0/b;->h:Ljava/lang/Object;

    return-void

    .line 13
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, LK/h;

    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LB0/b;->g:Ljava/lang/Object;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 19
    div-long/2addr v0, v2

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    .line 20
    new-instance p1, LK/i;

    invoke-direct {p1, v0, v1, v0, v1}, LK/i;-><init>(JJ)V

    iput-object p1, p0, LB0/b;->h:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lu1/C0;LK/m;LK/m;LK/m;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lu1/P;->f:Lu1/N;

    .line 23
    sget-object p1, Lu1/C0;->i:Lu1/C0;

    .line 24
    :goto_0
    iput-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, LB0/b;->f:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, LB0/b;->g:Ljava/lang/Object;

    .line 27
    iput-object p4, p0, LB0/b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lz/m;)V
    .locals 3

    iget-object v0, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lz/m;->k:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(LG/U;)V
    .locals 1

    instance-of v0, p1, LK/h;

    if-eqz v0, :cond_0

    check-cast p1, LK/h;

    iput-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v0, p1, LK/g;

    if-eqz v0, :cond_1

    check-cast p1, LK/g;

    iput-object p1, p0, LB0/b;->f:Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v0, p1, LK/i;

    if-eqz v0, :cond_2

    check-cast p1, LK/i;

    iput-object p1, p0, LB0/b;->h:Ljava/lang/Object;

    return-void

    :cond_2
    instance-of v0, p1, LK/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, LB0/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    check-cast p1, LK/b;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported metadata"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lz/m;
    .locals 1

    iget-object v0, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/F;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lz/F;->c:Lz/m;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, LM0/L0;

    iget-object v2, v1, LB0/b;->g:Ljava/lang/Object;

    check-cast v2, LM0/o;

    iget-object v3, v1, LB0/b;->f:Ljava/lang/Object;

    check-cast v3, LM0/X0;

    const-string v4, "Controller "

    iget-object v5, v1, LB0/b;->h:Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, LM0/W1;

    iget-object v5, v9, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v9, LM0/W1;->b:LB/A;

    iget-object v7, v1, LB0/b;->e:Ljava/lang/Object;

    check-cast v7, LM0/N0;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, LM0/X0;->l()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v8, v7, LM0/N0;->e:LM0/M0;

    check-cast v8, LM0/P1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, LM0/P1;->e:LM0/o;

    invoke-interface {v8}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-boolean v10, v0, LM0/L0;->a:Z

    if-nez v10, :cond_1

    iget-boolean v11, v7, LM0/N0;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_1

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    if-nez v10, :cond_2

    :try_start_2
    sget-object v12, LM0/j2;->b:LM0/j2;

    sget-object v13, LG/c0;->b:LG/c0;

    new-instance v10, LM0/L0;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, LM0/L0;-><init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V

    move-object v0, v10

    :cond_2
    invoke-virtual {v6, v7}, LB/A;->K(LM0/N0;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "MediaSessionStub"

    if-eqz v10, :cond_3

    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has sent connection request multiple times"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, v0, LM0/L0;->b:LM0/j2;

    iget-object v10, v0, LM0/L0;->c:LG/c0;

    invoke-virtual {v6, v8, v7, v4, v10}, LB/A;->i(Ljava/lang/Object;LM0/N0;LM0/j2;LG/c0;)V

    invoke-virtual {v6, v7}, LB/A;->D(LM0/N0;)LM0/h2;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v0, "Ignoring connection request from unknown controller info"

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    return-void

    :cond_4
    :try_start_4
    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v8, v3, LM0/X0;->t:LM0/d2;

    iget-object v10, v3, LM0/X0;->s:LM0/b2;

    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v15, v0, LM0/L0;->c:LG/c0;

    invoke-virtual {v9, v10}, LM0/W1;->T0(LM0/b2;)LM0/b2;

    move-result-object v10

    invoke-virtual {v9, v10}, LM0/W1;->S0(LM0/b2;)LM0/b2;

    move-result-object v10

    invoke-virtual {v6, v7}, LB/A;->K(LM0/N0;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v10, LM0/b2;->j:LG/q0;

    iget-object v12, v10, LM0/b2;->F:LG/y0;

    invoke-virtual {v6}, LB/A;->V()V

    iget-object v6, v6, LB/A;->g:Ljava/lang/Object;

    check-cast v6, Lh/e;

    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM0/g;

    if-eqz v6, :cond_5

    iput-object v11, v6, LM0/g;->h:LG/q0;

    iput-object v12, v6, LM0/g;->i:LG/y0;

    :cond_5
    iget-object v6, v3, LM0/X0;->h:LM0/t1;

    iget-object v6, v6, LM0/t1;->o:LN0/O;

    iget-object v6, v6, LN0/O;->f:Ljava/lang/Object;

    check-cast v6, LN0/I;

    iget-object v6, v6, LN0/I;->c:LN0/N;

    iget-object v6, v6, LN0/N;->f:Landroid/media/session/MediaSession$Token;

    move-object/from16 v20, v6

    new-instance v6, LM0/j;

    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v11, v0, LM0/L0;->d:Lu1/P;

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v11, v3, LM0/X0;->A:Lu1/P;

    :goto_0
    iget-object v12, v0, LM0/L0;->e:Lu1/P;

    if-eqz v12, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v12, v3, LM0/X0;->B:Lu1/P;

    :goto_1
    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v13, v3, LM0/X0;->r:Lu1/P;

    iget-object v14, v0, LM0/L0;->b:LM0/j2;

    invoke-virtual {v8}, LM0/d2;->w()LG/c0;

    move-result-object v16

    iget-object v8, v3, LM0/X0;->j:LM0/o2;

    iget-object v8, v8, LM0/o2;->a:LM0/n2;

    invoke-interface {v8}, LM0/n2;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    iget-object v0, v0, LM0/L0;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    :goto_2
    move-object/from16 v18, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v0, v3, LM0/X0;->C:Landroid/os/Bundle;

    goto :goto_2

    :goto_3
    const/16 v21, 0x0

    move-object v0, v7

    const v7, 0x3c42a7d4

    const/16 v8, 0xa

    move-object/from16 v19, v10

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v21}, LM0/j;-><init>(IILM0/q;Landroid/app/PendingIntent;Lu1/P;Lu1/P;Lu1/P;LM0/j2;LG/c0;LG/c0;Landroid/os/Bundle;Landroid/os/Bundle;LM0/b2;Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    invoke-virtual {v3}, LM0/X0;->l()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_9

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    return-void

    :cond_9
    :try_start_5
    invoke-virtual {v4}, LM0/h2;->k()I

    move-result v4

    instance-of v7, v2, LM0/y0;

    if-eqz v7, :cond_a

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v8, LM0/j;->C:Ljava/lang/String;

    new-instance v9, LM0/i;

    invoke-direct {v9, v6}, LM0/i;-><init>(LM0/j;)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_4

    :cond_a
    iget v7, v0, LM0/N0;->c:I

    invoke-virtual {v6, v7}, LM0/j;->b(I)Landroid/os/Bundle;

    move-result-object v7

    :goto_4
    invoke-interface {v2, v4, v7}, LM0/o;->Q(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x1

    :catch_0
    if-eqz v5, :cond_c

    :try_start_6
    iget-boolean v4, v3, LM0/X0;->z:Z

    if-eqz v4, :cond_b

    invoke-static {v0}, LM0/X0;->m(LM0/N0;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, v3, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :goto_5
    if-nez v5, :cond_d

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    :cond_d
    return-void

    :goto_6
    if-nez v5, :cond_e

    invoke-static {v2}, LM0/Y1;->i(LM0/o;)V

    :cond_e
    throw v0
.end method

.method public e(Ljava/lang/String;)Lz/m;
    .locals 3

    iget-object v0, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/F;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lz/F;->c:Lz/m;

    iget-object v2, v1, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lz/m;->t:Lz/A;

    iget-object v1, v1, Lz/A;->c:LB0/b;

    invoke-virtual {v1, p1}, LB0/b;->e(Ljava/lang/String;)Lz/m;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(La2/h;)V
    .locals 11

    iget-object v0, p0, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p1, :cond_6

    monitor-exit p0

    sget-object p1, LX1/b;->a:[B

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "readyAsyncCalls.iterator()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB0/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, LB0/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    iget-object v0, p0, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    monitor-enter p0

    :try_start_4
    iget-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_3

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LX1/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Dispatcher"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name"

    invoke-static {p1, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LX1/a;

    invoke-direct {v10, p1, v0}, LX1/a;-><init>(Ljava/lang/String;Z)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x3c

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, LB0/b;->e:Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    throw v2

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_5
    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_6
    :try_start_8
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method

.method public h()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/F;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/F;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lz/F;->c:Lz/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, LB0/b;->h:Ljava/lang/Object;

    check-cast p1, LM0/W1;

    iget-object p1, p1, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, LM0/N0;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LB0/b;->g:Ljava/lang/Object;

    check-cast p1, LM0/o;

    invoke-static {p1}, LM0/Y1;->i(LM0/o;)V

    return-void
.end method

.method public l([BIILy0/l;LJ/k;)V
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, LB0/b;->g:Ljava/lang/Object;

    check-cast v2, LB0/a;

    iget-object v3, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v3, LJ/D;

    iget-object v4, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v4, LJ/D;

    add-int v5, v1, p3

    move-object/from16 v6, p1

    invoke-virtual {v4, v6, v5}, LJ/D;->L([BI)V

    invoke-virtual {v4, v1}, LJ/D;->N(I)V

    iget-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/zip/Inflater;

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v4}, LJ/D;->a()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, LJ/D;->j()I

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_1

    invoke-static {v4, v3, v1}, LJ/W;->B(LJ/D;LJ/D;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, LJ/D;->a:[B

    iget v3, v3, LJ/D;->c:I

    invoke-virtual {v4, v1, v3}, LJ/D;->L([BI)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v2, LB0/a;->d:I

    iget-object v3, v2, LB0/a;->b:[I

    iget-object v5, v2, LB0/a;->a:LJ/D;

    iput v1, v2, LB0/a;->e:I

    iput v1, v2, LB0/a;->f:I

    iput v1, v2, LB0/a;->g:I

    iput v1, v2, LB0/a;->h:I

    iput v1, v2, LB0/a;->i:I

    invoke-virtual {v5, v1}, LJ/D;->K(I)V

    iput-boolean v1, v2, LB0/a;->c:Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, LJ/D;->a()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_15

    iget v6, v4, LJ/D;->c:I

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v8

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v9

    iget v10, v4, LJ/D;->b:I

    add-int/2addr v10, v9

    if-le v10, v6, :cond_2

    invoke-virtual {v4, v6}, LJ/D;->N(I)V

    move v7, v1

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_2
    const/16 v6, 0x80

    if-eq v8, v6, :cond_c

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 v6, 0x13

    if-ge v9, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v4}, LJ/D;->H()I

    move-result v6

    iput v6, v2, LB0/a;->d:I

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v6

    iput v6, v2, LB0/a;->e:I

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v6

    iput v6, v2, LB0/a;->f:I

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v6

    iput v6, v2, LB0/a;->g:I

    goto/16 :goto_3

    :pswitch_1
    const/4 v8, 0x4

    if-ge v9, v8, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v4, v7}, LJ/D;->O(I)V

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    const/4 v13, 0x1

    goto :goto_1

    :cond_5
    move v13, v1

    :goto_1
    add-int/lit8 v6, v9, -0x4

    if-eqz v13, :cond_8

    const/4 v7, 0x7

    if-ge v6, v7, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4}, LJ/D;->D()I

    move-result v6

    if-ge v6, v8, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v4}, LJ/D;->H()I

    move-result v7

    iput v7, v2, LB0/a;->h:I

    invoke-virtual {v4}, LJ/D;->H()I

    move-result v7

    iput v7, v2, LB0/a;->i:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, LJ/D;->K(I)V

    add-int/lit8 v6, v9, -0xb

    :cond_8
    iget v7, v5, LJ/D;->b:I

    iget v8, v5, LJ/D;->c:I

    if-ge v7, v8, :cond_b

    if-lez v6, :cond_b

    sub-int/2addr v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v5, LJ/D;->a:[B

    invoke-virtual {v4, v7, v8, v6}, LJ/D;->k(I[BI)V

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, LJ/D;->N(I)V

    goto/16 :goto_3

    :pswitch_2
    rem-int/lit8 v7, v9, 0x5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v4, v8}, LJ/D;->O(I)V

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v9, v9, 0x5

    move v7, v1

    :goto_2
    if-ge v7, v9, :cond_a

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v8

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v14

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v15

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v16

    invoke-virtual {v4}, LJ/D;->A()I

    move-result v17

    move/from16 p1, v6

    move/from16 p2, v7

    int-to-double v6, v14

    add-int/lit8 v15, v15, -0x80

    int-to-double v14, v15

    const-wide v18, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v18, v18, v14

    add-double v12, v18, v6

    double-to-int v12, v12

    add-int/lit8 v13, v16, -0x80

    move-object/from16 v16, v2

    int-to-double v1, v13

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v19, v19, v1

    sub-double v19, v6, v19

    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v14, v14, v21

    sub-double v13, v19, v14

    double-to-int v13, v13

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v1, v14

    add-double/2addr v1, v6

    double-to-int v1, v1

    shl-int/lit8 v2, v17, 0x18

    const/16 v6, 0xff

    const/4 v7, 0x0

    invoke-static {v12, v7, v6}, LJ/W;->g(III)I

    move-result v12

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v2, v12

    invoke-static {v13, v7, v6}, LJ/W;->g(III)I

    move-result v12

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v2, v12

    invoke-static {v1, v7, v6}, LJ/W;->g(III)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, v3, v8

    add-int/lit8 v7, p2, 0x1

    move/from16 v6, p1

    move-object/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, v2, LB0/a;->c:Z

    :cond_b
    :goto_3
    const/4 v7, 0x0

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_c
    iget v1, v2, LB0/a;->d:I

    if-eqz v1, :cond_13

    iget v1, v2, LB0/a;->e:I

    if-eqz v1, :cond_13

    iget v1, v2, LB0/a;->h:I

    if-eqz v1, :cond_13

    iget v1, v2, LB0/a;->i:I

    if-eqz v1, :cond_13

    iget v1, v5, LJ/D;->c:I

    if-eqz v1, :cond_13

    iget v6, v5, LJ/D;->b:I

    if-ne v6, v1, :cond_13

    iget-boolean v1, v2, LB0/a;->c:Z

    if-nez v1, :cond_d

    goto/16 :goto_9

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, LJ/D;->N(I)V

    iget v1, v2, LB0/a;->h:I

    iget v6, v2, LB0/a;->i:I

    mul-int/2addr v1, v6

    new-array v6, v1, [I

    const/4 v7, 0x0

    :cond_e
    :goto_4
    if-ge v7, v1, :cond_12

    invoke-virtual {v5}, LJ/D;->A()I

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v9, v7, 0x1

    aget v8, v3, v8

    aput v8, v6, v7

    :goto_5
    move v7, v9

    goto :goto_4

    :cond_f
    invoke-virtual {v5}, LJ/D;->A()I

    move-result v8

    if-eqz v8, :cond_e

    and-int/lit8 v9, v8, 0x40

    if-nez v9, :cond_10

    and-int/lit8 v9, v8, 0x3f

    goto :goto_6

    :cond_10
    and-int/lit8 v9, v8, 0x3f

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v5}, LJ/D;->A()I

    move-result v12

    or-int/2addr v9, v12

    :goto_6
    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_11

    const/16 v18, 0x0

    aget v8, v3, v18

    goto :goto_7

    :cond_11
    invoke-virtual {v5}, LJ/D;->A()I

    move-result v8

    aget v8, v3, v8

    :goto_7
    add-int/2addr v9, v7

    invoke-static {v6, v7, v9, v8}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_5

    :cond_12
    iget v1, v2, LB0/a;->h:I

    iget v7, v2, LB0/a;->i:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    iget v1, v2, LB0/a;->f:I

    int-to-float v1, v1

    iget v6, v2, LB0/a;->d:I

    int-to-float v6, v6

    div-float v27, v1, v6

    iget v1, v2, LB0/a;->g:I

    int-to-float v1, v1

    iget v7, v2, LB0/a;->e:I

    int-to-float v7, v7

    div-float v24, v1, v7

    iget v1, v2, LB0/a;->h:I

    int-to-float v1, v1

    div-float v31, v1, v6

    iget v1, v2, LB0/a;->i:I

    int-to-float v1, v1

    div-float v32, v1, v7

    new-instance v19, LI/b;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/high16 v29, -0x80000000

    const v30, -0x800001

    const/16 v33, 0x0

    const/high16 v34, -0x1000000

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v22, v21

    move/from16 v35, v29

    invoke-direct/range {v19 .. v37}, LI/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    move-object/from16 v12, v19

    :goto_8
    const/4 v7, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v12, 0x0

    goto :goto_8

    :goto_a
    iput v7, v2, LB0/a;->d:I

    iput v7, v2, LB0/a;->e:I

    iput v7, v2, LB0/a;->f:I

    iput v7, v2, LB0/a;->g:I

    iput v7, v2, LB0/a;->h:I

    iput v7, v2, LB0/a;->i:I

    invoke-virtual {v5, v7}, LJ/D;->K(I)V

    iput-boolean v7, v2, LB0/a;->c:Z

    :goto_b
    invoke-virtual {v4, v10}, LJ/D;->N(I)V

    :goto_c
    if-eqz v12, :cond_14

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v1, v7

    goto/16 :goto_0

    :cond_15
    new-instance v6, Ly0/a;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Ly0/a;-><init>(JJLjava/util/List;)V

    move-object/from16 v1, p5

    invoke-interface {v1, v6}, LJ/k;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lz/F;)V
    .locals 3

    iget-object v0, p1, Lz/F;->c:Lz/m;

    iget-object v1, v0, Lz/m;->e:Ljava/lang/String;

    iget-object v2, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lz/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {p1}, Lz/A;->G(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Added fragment to active set "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public n(Lz/F;)V
    .locals 3

    iget-object p1, p1, Lz/F;->c:Lz/m;

    iget-boolean v0, p1, Lz/m;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LB0/b;->h:Ljava/lang/Object;

    check-cast v0, Lz/C;

    invoke-virtual {v0, p1}, Lz/C;->e(Lz/m;)V

    :cond_0
    iget-object v0, p0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Lz/m;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/F;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed fragment from active set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
