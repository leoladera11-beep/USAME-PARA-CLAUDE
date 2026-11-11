.class public final LU/f;
.super LU/n0;
.source "SourceFile"


# instance fields
.field public final l:Ljava/util/ArrayList;

.field public final m:LG/p0;

.field public final n:LG/E;

.field public o:LU/d;

.field public p:LU/e;

.field public q:J

.field public r:J


# direct methods
.method public constructor <init>(LM0/l;)V
    .locals 1

    iget-object v0, p1, LM0/l;->f:Ljava/lang/Object;

    check-cast v0, LU/a;

    invoke-direct {p0, v0}, LU/n0;-><init>(LU/a;)V

    iget-object p1, p1, LM0/l;->g:Ljava/lang/Object;

    check-cast p1, LG/D;

    new-instance v0, LG/E;

    invoke-direct {v0, p1}, LG/E;-><init>(LG/D;)V

    iput-object v0, p0, LU/f;->n:LG/E;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU/f;->l:Ljava/util/ArrayList;

    new-instance p1, LG/p0;

    invoke-direct {p1}, LG/p0;-><init>()V

    iput-object p1, p0, LU/f;->m:LG/p0;

    return-void
.end method


# virtual methods
.method public final C(LG/q0;)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, LU/f;->m:LG/p0;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, LG/q0;->n(ILG/p0;)V

    iget-wide v5, v0, LG/p0;->o:J

    iget-object v10, v1, LU/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-wide/high16 v7, -0x8000000000000000L

    if-nez v3, :cond_1

    iget-object v3, v1, LU/f;->o:LU/d;

    if-eqz v3, :cond_1

    iget-object v3, v1, LU/f;->n:LG/E;

    iget-boolean v3, v3, LG/E;->e:Z

    if-nez v3, :cond_1

    iget-wide v11, v1, LU/f;->q:J

    sub-long/2addr v11, v5

    iget-wide v13, v1, LU/f;->r:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-long v7, v13, v5

    :goto_0
    move-wide v5, v11

    goto :goto_4

    :cond_1
    iget-object v3, v1, LU/f;->n:LG/E;

    iget-wide v11, v3, LG/E;->b:J

    iget-wide v13, v3, LG/E;->d:J

    iget-boolean v3, v3, LG/E;->f:Z

    if-eqz v3, :cond_2

    iget-wide v2, v0, LG/p0;->k:J

    add-long/2addr v11, v2

    cmp-long v0, v13, v7

    if-eqz v0, :cond_2

    add-long/2addr v2, v13

    move-wide v15, v7

    goto :goto_1

    :cond_2
    move-wide v15, v7

    move-wide v2, v13

    :goto_1
    add-long v7, v5, v11

    iput-wide v7, v1, LU/f;->q:J

    cmp-long v0, v13, v15

    if-nez v0, :cond_3

    move-wide v7, v15

    goto :goto_2

    :cond_3
    add-long v7, v5, v2

    :goto_2
    iput-wide v7, v1, LU/f;->r:J

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_4

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LU/c;

    iget-wide v7, v1, LU/f;->q:J

    iget-wide v13, v1, LU/f;->r:J

    iput-wide v7, v6, LU/c;->l:J

    iput-wide v13, v6, LU/c;->m:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-wide v7, v2

    goto :goto_0

    :goto_4
    :try_start_0
    new-instance v3, LU/d;

    iget-object v0, v1, LU/f;->n:LG/E;

    iget-boolean v9, v0, LG/E;->h:Z

    invoke-direct/range {v3 .. v9}, LU/d;-><init>(LG/q0;JJZ)V

    iput-object v3, v1, LU/f;->o:LU/d;
    :try_end_0
    .catch LU/e; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v3}, LU/a;->m(LG/q0;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, LU/f;->p:LU/e;

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU/c;

    iget-object v3, v1, LU/f;->p:LU/e;

    iput-object v3, v0, LU/c;->n:LU/e;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final a(LG/P;)Z
    .locals 2

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0, p1}, LU/a;->a(LG/P;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LU/a;->h()LG/P;

    move-result-object v0

    iget-object v0, v0, LG/P;->e:LG/F;

    iget-object p1, p1, LG/P;->e:LG/F;

    invoke-virtual {v0, p1}, LG/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(LU/A;LB/A;J)LU/y;
    .locals 8

    new-instance v0, LU/c;

    iget-object v1, p0, LU/n0;->k:LU/a;

    invoke-virtual {v1, p1, p2, p3, p4}, LU/a;->b(LU/A;LB/A;J)LU/y;

    move-result-object v1

    iget-object p1, p0, LU/f;->n:LG/E;

    iget-boolean p1, p1, LG/E;->g:Z

    xor-int/lit8 v2, p1, 0x1

    iget-wide v3, p0, LU/f;->q:J

    iget-wide v5, p0, LU/f;->r:J

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LU/c;-><init>(LU/y;ZJJI)V

    iget-object p1, p0, LU/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, LU/f;->p:LU/e;

    if-nez v0, :cond_0

    invoke-super {p0}, LU/j;->j()V

    return-void

    :cond_0
    throw v0
.end method

.method public final n(LU/y;)V
    .locals 2

    iget-object v0, p0, LU/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, LF1/i;->o(Z)V

    check-cast p1, LU/c;

    iget-object p1, p1, LU/c;->e:LU/y;

    iget-object v1, p0, LU/n0;->k:LU/a;

    invoke-virtual {v1, p1}, LU/a;->n(LU/y;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/f;->n:LG/E;

    iget-boolean p1, p1, LG/E;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LU/f;->o:LU/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LU/o;->e:LG/q0;

    invoke-virtual {p0, p1}, LU/f;->C(LG/q0;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    invoke-super {p0}, LU/j;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, LU/f;->p:LU/e;

    iput-object v0, p0, LU/f;->o:LU/d;

    return-void
.end method

.method public final s(LG/P;)V
    .locals 1

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0, p1}, LU/a;->s(LG/P;)V

    return-void
.end method

.method public final z(LG/q0;)V
    .locals 1

    iget-object v0, p0, LU/f;->p:LU/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LU/f;->C(LG/q0;)V

    return-void
.end method
