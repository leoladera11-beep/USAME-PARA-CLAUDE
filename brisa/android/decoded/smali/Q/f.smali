.class public final LQ/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/o;


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:LP/B;

.field public final d:LH/c;

.field public final e:Ljava/util/HashMap;

.field public final f:Z

.field public final g:[I

.field public final h:Z

.field public final i:LN0/O;

.field public final j:Lcom/brisa/local/j;

.field public final k:LZ0/i;

.field public final l:J

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/Set;

.field public final o:Ljava/util/Set;

.field public p:I

.field public q:LQ/s;

.field public r:LQ/c;

.field public s:LQ/c;

.field public t:Landroid/os/Looper;

.field public u:Landroid/os/Handler;

.field public v:[B

.field public w:LO/j;

.field public volatile x:LM0/p1;


# direct methods
.method public constructor <init>(Ljava/util/UUID;LH/c;Ljava/util/HashMap;Z[IZLcom/brisa/local/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LG/m;->c:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    iput-object p1, p0, LQ/f;->b:Ljava/util/UUID;

    sget-object p1, LQ/v;->h:LP/B;

    iput-object p1, p0, LQ/f;->c:LP/B;

    iput-object p2, p0, LQ/f;->d:LH/c;

    iput-object p3, p0, LQ/f;->e:Ljava/util/HashMap;

    iput-boolean p4, p0, LQ/f;->f:Z

    iput-object p5, p0, LQ/f;->g:[I

    iput-boolean p6, p0, LQ/f;->h:Z

    iput-object p7, p0, LQ/f;->j:Lcom/brisa/local/j;

    new-instance p1, LN0/O;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, LN0/O;-><init>(I)V

    iput-object p1, p0, LQ/f;->i:LN0/O;

    new-instance p1, LZ0/i;

    invoke-direct {p1, p0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LQ/f;->k:LZ0/i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LQ/f;->m:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LQ/f;->n:Ljava/util/Set;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LQ/f;->o:Ljava/util/Set;

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, LQ/f;->l:J

    return-void
.end method

.method public static h(LQ/c;)Z
    .locals 2

    invoke-virtual {p0}, LQ/c;->o()V

    iget v0, p0, LQ/c;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQ/c;->g()LQ/g;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/brisa/local/v;->n(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method public static k(LG/s;Ljava/util/UUID;Z)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, LG/s;->h:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LG/s;->h:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LG/s;->e:[LG/r;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, LG/r;->a(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, LG/m;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, LG/r;->a(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v2, LG/r;->i:[B

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LQ/f;->m(Z)V

    iget v1, p0, LQ/f;->p:I

    sub-int/2addr v1, v0

    iput v1, p0, LQ/f;->p:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LQ/f;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LQ/c;->e(LQ/k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQ/f;->n:Ljava/util/Set;

    invoke-static {v0}, Lu1/b0;->k(Ljava/util/Collection;)Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/e;

    invoke-virtual {v1}, LQ/e;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LQ/f;->l()V

    return-void
.end method

.method public final b(LQ/k;LG/x;)LQ/n;
    .locals 3

    iget v0, p0, LQ/f;->p:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LQ/e;

    invoke-direct {v0, p0, p1}, LQ/e;-><init>(LQ/f;LQ/k;)V

    iget-object p1, p0, LQ/f;->u:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LH/i;

    const/16 v2, 0x1b

    invoke-direct {v1, v0, p2, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final c(LQ/k;LG/x;)LQ/h;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LQ/f;->m(Z)V

    iget v1, p0, LQ/f;->p:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v2}, LQ/f;->g(Landroid/os/Looper;LQ/k;LG/x;Z)LQ/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/os/Looper;LO/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LQ/f;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, LQ/f;->t:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LQ/f;->u:Landroid/os/Handler;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LF1/i;->o(Z)V

    iget-object p1, p0, LQ/f;->u:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    iput-object p2, p0, LQ/f;->w:LO/j;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LQ/f;->m(Z)V

    iget v0, p0, LQ/f;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LQ/f;->p:I

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, LQ/f;->q:LQ/s;

    if-nez v0, :cond_1

    iget-object v0, p0, LQ/f;->b:Ljava/util/UUID;

    iget-object v1, p0, LQ/f;->c:LP/B;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, LQ/v;

    invoke-direct {v1, v0}, LQ/v;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v2, LQ/z;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, LQ/z;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch LQ/z; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameworkMediaDrm"

    invoke-static {v1, v0}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/brisa/local/j;

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Lcom/brisa/local/j;-><init>(I)V

    :goto_2
    iput-object v1, p0, LQ/f;->q:LQ/s;

    new-instance v0, La1/g;

    invoke-direct {v0, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, LQ/s;->d(La1/g;)V

    return-void

    :cond_1
    iget-wide v0, p0, LQ/f;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LQ/c;->b(LQ/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    return-void
.end method

.method public final f(LG/x;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LQ/f;->m(Z)V

    iget-object v1, p0, LQ/f;->q:LQ/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, LQ/s;->u()I

    move-result v1

    iget-object v2, p1, LG/x;->t:LG/s;

    if-nez v2, :cond_3

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    invoke-static {p1}, LG/W;->g(Ljava/lang/String;)I

    move-result p1

    move v2, v0

    :goto_0
    iget-object v3, p0, LQ/f;->g:[I

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, LQ/f;->v:[B

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, LQ/f;->b:Ljava/util/UUID;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, LQ/f;->k(LG/s;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v2, LG/s;->h:I

    if-ne v4, v3, :cond_8

    iget-object v4, v2, LG/s;->e:[LG/r;

    aget-object v0, v4, v0

    sget-object v4, LG/m;->c:Ljava/util/UUID;

    invoke-virtual {v0, v4}, LG/r;->a(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultDrmSessionMgr"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, v2, LG/s;->g:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    return v3

    :cond_9
    :goto_2
    return v1
.end method

.method public final g(Landroid/os/Looper;LQ/k;LG/x;Z)LQ/h;
    .locals 4

    iget-object v0, p0, LQ/f;->x:LM0/p1;

    if-nez v0, :cond_0

    new-instance v0, LM0/p1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, LM0/p1;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, LQ/f;->x:LM0/p1;

    :cond_0
    iget-object p1, p3, LG/x;->t:LG/s;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_7

    iget-object p1, p3, LG/x;->p:Ljava/lang/String;

    invoke-static {p1}, LG/W;->g(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, LQ/f;->q:LQ/s;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, LQ/s;->u()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    sget-object p3, LG/Q;->a:Ljava/util/HashSet;

    sget-boolean p3, LQ/t;->c:Z

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p0, LQ/f;->g:[I

    :goto_0
    array-length v2, p3

    const/4 v3, -0x1

    if-ge v0, v2, :cond_3

    aget v2, p3, v0

    if-ne v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_6

    invoke-interface {p2}, LQ/s;->u()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, LQ/f;->r:LQ/c;

    if-nez p1, :cond_5

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    invoke-virtual {p0, p1, p2, v1, p4}, LQ/f;->j(Ljava/util/List;ZLQ/k;Z)LQ/c;

    move-result-object p1

    iget-object p2, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, LQ/f;->r:LQ/c;

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, LQ/c;->b(LQ/k;)V

    :goto_2
    iget-object p1, p0, LQ/f;->r:LQ/c;

    return-object p1

    :cond_6
    :goto_3
    return-object v1

    :cond_7
    iget-object p3, p0, LQ/f;->v:[B

    if-nez p3, :cond_8

    iget-object p3, p0, LQ/f;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, LQ/f;->k(LG/s;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    new-instance p1, LQ/d;

    iget-object p3, p0, LQ/f;->b:Ljava/util/UUID;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Media does not support uuid: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1}, LQ/k;->d(Ljava/lang/Exception;)V

    new-instance p2, LQ/p;

    new-instance p3, LQ/g;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, LQ/g;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, LQ/p;-><init>(LQ/g;)V

    return-object p2

    :cond_8
    move-object p1, v1

    :cond_9
    iget-boolean p3, p0, LQ/f;->f:Z

    if-nez p3, :cond_a

    iget-object v1, p0, LQ/f;->s:LQ/c;

    goto :goto_4

    :cond_a
    iget-object p3, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ/c;

    iget-object v3, v2, LQ/c;->a:Ljava/util/List;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v1, v2

    :cond_c
    :goto_4
    if-nez v1, :cond_e

    invoke-virtual {p0, p1, v0, p2, p4}, LQ/f;->j(Ljava/util/List;ZLQ/k;Z)LQ/c;

    move-result-object p1

    iget-boolean p2, p0, LQ/f;->f:Z

    if-nez p2, :cond_d

    iput-object p1, p0, LQ/f;->s:LQ/c;

    :cond_d
    iget-object p2, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_e
    invoke-virtual {v1, p2}, LQ/c;->b(LQ/k;)V

    return-object v1
.end method

.method public final i(Ljava/util/List;ZLQ/k;)LQ/c;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, LQ/f;->q:LQ/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, LQ/f;->h:Z

    or-int v8, v1, p2

    new-instance v2, LQ/c;

    iget-object v4, v0, LQ/f;->q:LQ/s;

    iget-object v10, v0, LQ/f;->v:[B

    iget-object v13, v0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, LQ/f;->w:LO/j;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, LQ/f;->b:Ljava/util/UUID;

    iget-object v5, v0, LQ/f;->i:LN0/O;

    iget-object v6, v0, LQ/f;->k:LZ0/i;

    iget-object v11, v0, LQ/f;->e:Ljava/util/HashMap;

    iget-object v12, v0, LQ/f;->d:LH/c;

    iget-object v14, v0, LQ/f;->j:Lcom/brisa/local/j;

    move-object/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v15}, LQ/c;-><init>(Ljava/util/UUID;LQ/s;LN0/O;LZ0/i;Ljava/util/List;ZZ[BLjava/util/HashMap;LH/c;Landroid/os/Looper;Lcom/brisa/local/j;LO/j;)V

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, LQ/c;->b(LQ/k;)V

    iget-wide v3, v0, LQ/f;->l:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, LQ/c;->b(LQ/k;)V

    :cond_0
    return-object v2
.end method

.method public final j(Ljava/util/List;ZLQ/k;Z)LQ/c;
    .locals 9

    invoke-virtual {p0, p1, p2, p3}, LQ/f;->i(Ljava/util/List;ZLQ/k;)LQ/c;

    move-result-object v0

    invoke-static {v0}, LQ/f;->h(LQ/c;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, p0, LQ/f;->l:J

    const/4 v6, 0x0

    iget-object v7, p0, LQ/f;->o:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v7}, Lu1/b0;->k(Ljava/util/Collection;)Lu1/b0;

    move-result-object v1

    invoke-virtual {v1}, Lu1/K;->h()Lu1/R0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LQ/h;

    invoke-interface {v8, v6}, LQ/h;->e(LQ/k;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, LQ/c;->e(LQ/k;)V

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, LQ/c;->e(LQ/k;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, LQ/f;->i(Ljava/util/List;ZLQ/k;)LQ/c;

    move-result-object v0

    :cond_2
    invoke-static {v0}, LQ/f;->h(LQ/c;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    iget-object p4, p0, LQ/f;->n:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p4}, Lu1/b0;->k(Ljava/util/Collection;)Lu1/b0;

    move-result-object p4

    invoke-virtual {p4}, Lu1/K;->h()Lu1/R0;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/e;

    invoke-virtual {v1}, LQ/e;->a()V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v7}, Lu1/b0;->k(Ljava/util/Collection;)Lu1/b0;

    move-result-object p4

    invoke-virtual {p4}, Lu1/K;->h()Lu1/R0;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/h;

    invoke-interface {v1, v6}, LQ/h;->e(LQ/k;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, LQ/c;->e(LQ/k;)V

    cmp-long p4, v4, v2

    if-eqz p4, :cond_5

    invoke-virtual {v0, v6}, LQ/c;->e(LQ/k;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, LQ/f;->i(Ljava/util/List;ZLQ/k;)LQ/c;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, LQ/f;->q:LQ/s;

    if-eqz v0, :cond_0

    iget v0, p0, LQ/f;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ/f;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ/f;->q:LQ/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LQ/s;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LQ/f;->q:LQ/s;

    :cond_0
    return-void
.end method

.method public final m(Z)V
    .locals 2

    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, LQ/f;->t:Landroid/os/Looper;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v1, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LQ/f;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p1, v1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
