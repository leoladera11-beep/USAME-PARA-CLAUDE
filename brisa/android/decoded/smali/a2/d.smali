.class public final La2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/d;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/d;->d:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La2/d;->e:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, La2/d;->c:Ljava/lang/Object;

    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/d;->b:Ljava/lang/Object;

    new-instance p1, LM0/l;

    invoke-direct {p1}, LM0/l;-><init>()V

    iput-object p1, p0, La2/d;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(La2/h;La2/e;Lb2/e;)V
    .locals 1

    const-string v0, "finder"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, La2/d;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, La2/d;->c:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, La2/d;->d:Ljava/lang/Object;

    .line 13
    invoke-interface {p3}, Lb2/e;->h()La2/k;

    move-result-object p1

    iput-object p1, p0, La2/d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    check-cast v0, La2/h;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, La2/d;->g(Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {v0, p0, p2, p1, p3}, La2/h;->g(La2/d;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, La2/d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, La2/d;->b:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-boolean p1, p0, La2/d;->a:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, La2/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iput-boolean p2, p0, La2/d;->a:Z

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object p1, p0, La2/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    new-instance p2, Lcom/brisa/local/U;

    invoke-direct {p2, p0, v1}, Lcom/brisa/local/U;-><init>(La2/d;Ljava/util/LinkedHashSet;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, La2/d;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, La2/d;->b:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, La2/d;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Random;

    invoke-static {p2, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    iget-object p1, p0, La2/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La2/d;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La2/d;->a:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Ld1/s;->f(Ljava/lang/String;Z)V

    iget-object v1, p0, La2/d;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, La2/d;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, LC1/i;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La2/d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, La2/d;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(Z)LW1/u;
    .locals 1

    :try_start_0
    iget-object v0, p0, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Lb2/e;

    invoke-interface {v0, p1}, Lb2/e;->f(Z)LW1/u;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, LW1/u;->m:La2/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p0, p1}, La2/d;->g(Ljava/io/IOException;)V

    throw p1
.end method

.method public g(Ljava/io/IOException;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/d;->a:Z

    iget-object v1, p0, La2/d;->c:Ljava/lang/Object;

    check-cast v1, La2/e;

    invoke-virtual {v1, p1}, La2/e;->c(Ljava/io/IOException;)V

    iget-object v1, p0, La2/d;->d:Ljava/lang/Object;

    check-cast v1, Lb2/e;

    invoke-interface {v1}, Lb2/e;->h()La2/k;

    move-result-object v1

    iget-object v2, p0, La2/d;->b:Ljava/lang/Object;

    check-cast v2, La2/h;

    monitor-enter v1

    :try_start_0
    instance-of v3, p1, Ld2/A;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ld2/A;

    iget v3, v3, Ld2/A;->e:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget p1, v1, La2/k;->n:I

    add-int/2addr p1, v0

    iput p1, v1, La2/k;->n:I

    if-le p1, v0, :cond_5

    iput-boolean v0, v1, La2/k;->j:Z

    iget p1, v1, La2/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, La2/k;->l:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p1, Ld2/A;

    iget p1, p1, Ld2/A;->e:I

    const/16 v3, 0x9

    if-ne p1, v3, :cond_1

    iget-boolean p1, v2, La2/h;->q:Z

    if-nez p1, :cond_5

    :cond_1
    iput-boolean v0, v1, La2/k;->j:Z

    iget p1, v1, La2/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, La2/k;->l:I

    goto :goto_1

    :cond_2
    iget-object v3, v1, La2/k;->g:Ld2/o;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    instance-of v3, p1, Ld2/a;

    if-eqz v3, :cond_5

    :cond_4
    iput-boolean v0, v1, La2/k;->j:Z

    iget v3, v1, La2/k;->m:I

    if-nez v3, :cond_5

    iget-object v2, v2, La2/h;->e:LW1/q;

    iget-object v3, v1, La2/k;->b:LW1/y;

    invoke-static {v2, v3, p1}, La2/k;->d(LW1/q;LW1/y;Ljava/io/IOException;)V

    iget p1, v1, La2/k;->l:I

    add-int/2addr p1, v0

    iput p1, v1, La2/k;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La2/d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La2/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-boolean v0, p0, La2/d;->a:Z

    if-eqz v0, :cond_3

    sget v0, LG/A;->e:I

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La2/d;->a:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, La2/d;->c()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, La2/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, La2/d;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unknown issue"

    goto :goto_0

    :cond_1
    const-string v1, "failure"

    :goto_0
    const-string v2, "Complete with: "

    new-instance v3, LG/A;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, La2/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, La2/d;->a:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, La2/d;->c:Ljava/lang/Object;

    check-cast v0, LM0/l;

    invoke-virtual {v0, p0}, LM0/l;->g(La2/d;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
