.class public final Ls1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La2/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La2/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La2/d;-><init>(I)V

    iput-object v0, p0, Ls1/d;->a:La2/d;

    return-void
.end method


# virtual methods
.method public final a(Lb1/d;)V
    .locals 3

    iget-object v0, p0, Ls1/d;->a:La2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, La2/d;->i()V

    const/4 v2, 0x1

    iput-boolean v2, v0, La2/d;->a:Z

    iput-object p1, v0, La2/d;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, La2/d;->c:Ljava/lang/Object;

    check-cast p1, LM0/l;

    invoke-virtual {p1, v0}, LM0/l;->g(La2/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ls1/d;->a:La2/d;

    iget-object v1, v0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, La2/d;->i()V

    const/4 v2, 0x1

    iput-boolean v2, v0, La2/d;->a:Z

    iput-object p1, v0, La2/d;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, La2/d;->c:Ljava/lang/Object;

    check-cast p1, LM0/l;

    invoke-virtual {p1, v0}, LM0/l;->g(La2/d;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ls1/d;->a:La2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, La2/d;->a:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, La2/d;->a:Z

    iput-object p1, v0, La2/d;->e:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, La2/d;->c:Ljava/lang/Object;

    check-cast p1, LM0/l;

    invoke-virtual {p1, v0}, LM0/l;->g(La2/d;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
