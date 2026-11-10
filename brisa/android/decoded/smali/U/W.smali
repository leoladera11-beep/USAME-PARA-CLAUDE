.class public final LU/W;
.super LU/a;
.source "SourceFile"


# instance fields
.field public final i:LL/g;

.field public final j:LI0/E;

.field public final k:LQ/o;

.field public final l:Lcom/brisa/local/j;

.field public final m:I

.field public final n:LG/x;

.field public o:Z

.field public p:J

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:LL/D;

.field public u:LG/P;


# direct methods
.method public constructor <init>(LG/P;LL/g;LI0/E;LQ/o;Lcom/brisa/local/j;ILG/x;)V
    .locals 0

    invoke-direct {p0}, LU/a;-><init>()V

    iput-object p1, p0, LU/W;->u:LG/P;

    iput-object p2, p0, LU/W;->i:LL/g;

    iput-object p3, p0, LU/W;->j:LI0/E;

    iput-object p4, p0, LU/W;->k:LQ/o;

    iput-object p5, p0, LU/W;->l:Lcom/brisa/local/j;

    iput p6, p0, LU/W;->m:I

    iput-object p7, p0, LU/W;->n:LG/x;

    const/4 p1, 0x1

    iput-boolean p1, p0, LU/W;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/W;->p:J

    return-void
.end method


# virtual methods
.method public final a(LG/P;)Z
    .locals 5

    invoke-virtual {p0}, LU/W;->h()LG/P;

    move-result-object v0

    iget-object v0, v0, LG/P;->b:LG/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LG/P;->b:LG/K;

    if-eqz p1, :cond_0

    iget-object v1, p1, LG/K;->a:Landroid/net/Uri;

    iget-object v2, v0, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p1, LG/K;->h:J

    iget-wide v3, v0, LG/K;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p1, p1, LG/K;->f:Ljava/lang/String;

    iget-object v0, v0, LG/K;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(LU/A;LB/A;J)LU/y;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-object v1, v8, LU/W;->i:LL/g;

    invoke-interface {v1}, LL/g;->t()LL/h;

    move-result-object v2

    iget-object v1, v8, LU/W;->t:LL/D;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, LL/h;->y(LL/D;)V

    :cond_0
    invoke-virtual {v8}, LU/W;->h()LG/P;

    move-result-object v1

    iget-object v1, v1, LG/P;->b:LG/K;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LU/T;

    iget-object v4, v1, LG/K;->a:Landroid/net/Uri;

    iget-object v5, v8, LU/a;->g:LO/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v8, LU/W;->j:LI0/E;

    iget-object v5, v5, LI0/E;->f:Ljava/lang/Object;

    check-cast v5, Lb0/q;

    move-object v6, v3

    new-instance v3, LB/A;

    invoke-direct {v3, v5}, LB/A;-><init>(Lb0/q;)V

    new-instance v5, LQ/k;

    iget-object v7, v8, LU/a;->d:LQ/k;

    iget-object v7, v7, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v0}, LQ/k;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    new-instance v7, LC1/e;

    iget-object v10, v8, LU/a;->c:LC1/e;

    iget-object v10, v10, LC1/e;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7, v10, v9, v0}, LC1/e;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iget-object v10, v1, LG/K;->f:Ljava/lang/String;

    iget-wide v0, v1, LG/K;->h:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v1, v4

    iget-object v4, v8, LU/W;->k:LQ/o;

    move-object v0, v6

    iget-object v6, v8, LU/W;->l:Lcom/brisa/local/j;

    iget v11, v8, LU/W;->m:I

    iget-object v12, v8, LU/W;->n:LG/x;

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v15}, LU/T;-><init>(Landroid/net/Uri;LL/h;LB/A;LQ/o;LQ/k;Lcom/brisa/local/j;LC1/e;LU/W;LB/A;Ljava/lang/String;ILG/x;JLY/a;)V

    return-object v0
.end method

.method public final declared-synchronized h()LG/P;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LU/W;->u:LG/P;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final l(LL/D;)V
    .locals 2

    iput-object p1, p0, LU/W;->t:LL/D;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU/a;->g:LO/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LU/W;->k:LQ/o;

    invoke-interface {v1, p1, v0}, LQ/o;->d(Landroid/os/Looper;LO/j;)V

    invoke-interface {v1}, LQ/o;->e()V

    invoke-virtual {p0}, LU/W;->t()V

    return-void
.end method

.method public final n(LU/y;)V
    .locals 7

    check-cast p1, LU/T;

    iget-boolean v0, p1, LU/T;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, LU/T;->z:[LU/Z;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, LU/Z;->i()V

    iget-object v5, v4, LU/Z;->h:LQ/h;

    if-eqz v5, :cond_0

    iget-object v6, v4, LU/Z;->e:LQ/k;

    invoke-interface {v5, v6}, LQ/h;->e(LQ/k;)V

    iput-object v1, v4, LU/Z;->h:LQ/h;

    iput-object v1, v4, LU/Z;->g:LG/x;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, LU/T;->q:LX/m;

    iget-object v2, v0, LX/m;->a:LY/a;

    iget-object v0, v0, LX/m;->b:LX/i;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, LX/i;->a(Z)V

    :cond_2
    new-instance v0, LB/k;

    const/4 v4, 0x4

    invoke-direct {v0, p1, v4}, LB/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, LY/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v2, LY/a;->g:Ljava/lang/Object;

    check-cast v0, LP/B;

    iget-object v2, v2, LY/a;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2}, LP/B;->accept(Ljava/lang/Object;)V

    iget-object v0, p1, LU/T;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p1, LU/T;->w:Ljava/lang/Object;

    iput-boolean v3, p1, LU/T;->X:Z

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LU/W;->k:LQ/o;

    invoke-interface {v0}, LQ/o;->a()V

    return-void
.end method

.method public final declared-synchronized s(LG/P;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LU/W;->u:LG/P;
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

.method public final t()V
    .locals 6

    new-instance v0, LU/d0;

    iget-wide v1, p0, LU/W;->p:J

    iget-boolean v3, p0, LU/W;->q:Z

    iget-boolean v4, p0, LU/W;->r:Z

    invoke-virtual {p0}, LU/W;->h()LG/P;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, LU/d0;-><init>(JZZLG/P;)V

    iget-boolean v1, p0, LU/W;->o:Z

    if-eqz v1, :cond_0

    new-instance v1, LU/U;

    invoke-direct {v1, v0}, LU/o;-><init>(LG/q0;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, LU/a;->m(LG/q0;)V

    return-void
.end method

.method public final u(JLb0/z;Z)V
    .locals 2

    iget-boolean v0, p0, LU/W;->s:Z

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lb0/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lb0/z;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, LU/W;->s:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-wide p1, p0, LU/W;->p:J

    :cond_1
    invoke-interface {p3}, Lb0/z;->c()Z

    move-result p3

    iget-boolean v0, p0, LU/W;->o:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, LU/W;->p:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget-boolean v0, p0, LU/W;->q:Z

    if-ne v0, p3, :cond_2

    iget-boolean v0, p0, LU/W;->r:Z

    if-ne v0, p4, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-wide p1, p0, LU/W;->p:J

    iput-boolean p3, p0, LU/W;->q:Z

    iput-boolean p4, p0, LU/W;->r:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LU/W;->o:Z

    invoke-virtual {p0}, LU/W;->t()V

    return-void
.end method
