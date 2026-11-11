.class public final Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/v;


# instance fields
.field public final e:Lj2/k;

.field public f:Z

.field public final synthetic g:Lc2/g;


# direct methods
.method public constructor <init>(Lc2/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->g:Lc2/g;

    new-instance v0, Lj2/k;

    iget-object p1, p1, Lc2/g;->d:Lj2/h;

    invoke-interface {p1}, Lj2/v;->a()Lj2/z;

    move-result-object p1

    invoke-direct {v0, p1}, Lj2/k;-><init>(Lj2/z;)V

    iput-object v0, p0, Lc2/b;->e:Lj2/k;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lc2/b;->e:Lj2/k;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc2/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc2/b;->f:Z

    iget-object v0, p0, Lc2/b;->g:Lc2/g;

    iget-object v0, v0, Lc2/g;->d:Lj2/h;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    iget-object v0, p0, Lc2/b;->e:Lj2/k;

    iget-object v1, v0, Lj2/k;->e:Lj2/z;

    sget-object v2, Lj2/z;->d:Lj2/y;

    iput-object v2, v0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v1}, Lj2/z;->a()Lj2/z;

    invoke-virtual {v1}, Lj2/z;->b()Lj2/z;

    iget-object v0, p0, Lc2/b;->g:Lc2/g;

    const/4 v1, 0x3

    iput v1, v0, Lc2/g;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc2/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc2/b;->g:Lc2/g;

    iget-object v0, v0, Lc2/g;->d:Lj2/h;

    invoke-interface {v0}, Lj2/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final k(JLj2/g;)V
    .locals 3

    iget-object v0, p0, Lc2/b;->g:Lc2/g;

    iget-object v0, v0, Lc2/g;->d:Lj2/h;

    iget-boolean v1, p0, Lc2/b;->f:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lj2/h;->b(J)Lj2/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    invoke-interface {v0, p1, p2, p3}, Lj2/v;->k(JLj2/g;)V

    invoke-interface {v0, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
