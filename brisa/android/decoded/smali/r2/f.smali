.class public final Lr2/f;
.super LR0/v;
.source "SourceFile"


# instance fields
.field public final d:LG2/k;

.field public final e:LG2/k;

.field public final f:LG2/k;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, LR0/v;-><init>(I)V

    new-instance v0, LG2/k;

    invoke-direct {v0, p1}, LR0/v;-><init>(I)V

    iput-object v0, p0, Lr2/f;->d:LG2/k;

    new-instance v0, LG2/k;

    invoke-direct {v0, p1}, LR0/v;-><init>(I)V

    iput-object v0, p0, Lr2/f;->e:LG2/k;

    new-instance v0, LG2/k;

    invoke-direct {v0, p1}, LR0/v;-><init>(I)V

    iput-object v0, p0, Lr2/f;->f:LG2/k;

    return-void
.end method


# virtual methods
.method public final j()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lr2/f;->d:LG2/k;

    iget-object v1, v1, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lr2/f;->e:LG2/k;

    iget-object v1, v1, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lr2/f;->f:LG2/k;

    iget-object v1, v1, LR0/v;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lr2/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LG2/j;

    if-eqz v0, :cond_1

    check-cast p1, LG2/j;

    iget-object v0, p0, Lr2/f;->d:LG2/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LG2/j;->g()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LG2/i;

    iget v2, v0, LR0/v;->a:I

    invoke-interface {p1}, Lr2/c;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lr2/c;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, LG2/j;->d()LG2/l;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, LG2/i;-><init>(ILjava/lang/String;Ljava/lang/String;LG2/l;)V

    :try_start_0
    invoke-interface {p1}, LG2/j;->getDuration()J

    move-result-wide v2

    iput-wide v2, v1, LG2/i;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    invoke-interface {p1}, LG2/j;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG2/i;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    invoke-interface {p1}, LG2/j;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG2/i;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    invoke-interface {p1}, LG2/j;->n()Lw2/b;
    :try_end_3
    .catch Lu2/f; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_3
    :try_start_4
    invoke-interface {p1}, LG2/j;->e()J

    move-result-wide v2

    iput-wide v2, v1, LG2/i;->m:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_4
    :try_start_5
    invoke-interface {p1}, Lr2/c;->o()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lr2/b;->i:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_5
    :try_start_6
    invoke-interface {p1}, LG2/j;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG2/i;->o:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_6
    :try_start_7
    invoke-interface {p1}, LG2/j;->h()Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_7
    :try_start_8
    invoke-interface {p1}, LG2/j;->b()Z

    move-result v2

    iput-boolean v2, v1, LG2/i;->p:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_8
    :try_start_9
    invoke-interface {p1}, LG2/j;->m()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_9
    :try_start_a
    invoke-interface {p1}, LG2/j;->k()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    invoke-virtual {v0, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_a
    :try_start_b
    invoke-interface {p1}, LG2/j;->j()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    invoke-virtual {v0, p1}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_b
    return-object v1

    :cond_0
    new-instance p1, Lu2/e;

    const-string v0, "Found ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p1, Lx2/b;

    if-eqz v0, :cond_2

    check-cast p1, Lx2/b;

    new-instance v0, Lx2/a;

    iget-object v1, p0, Lr2/f;->f:LG2/k;

    iget v2, v1, LR0/v;->a:I

    invoke-interface {p1}, Lr2/c;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lr2/c;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v0, v5, v2, v3, v4}, Lr2/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :try_start_c
    invoke-interface {p1}, Lx2/b;->c()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v2

    invoke-virtual {v1, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_c
    :try_start_d
    invoke-interface {p1}, Lx2/b;->a()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v2

    invoke-virtual {v1, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_d
    :try_start_e
    invoke-interface {p1}, Lx2/b;->b()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    invoke-virtual {v1, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_e
    :try_start_f
    invoke-interface {p1}, Lr2/c;->o()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lr2/b;->i:Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v2

    invoke-virtual {v1, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_f
    :try_start_10
    invoke-interface {p1}, Lx2/b;->f()J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v2

    invoke-virtual {v1, v2}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_10
    :try_start_11
    invoke-interface {p1}, Lx2/b;->i()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception p1

    invoke-virtual {v1, p1}, LR0/v;->a(Ljava/lang/Exception;)V

    :goto_11
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid extractor type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
