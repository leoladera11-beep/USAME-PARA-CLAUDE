.class public final LU/v;
.super LU/n0;
.source "SourceFile"


# instance fields
.field public final l:Z

.field public final m:LG/p0;

.field public final n:LG/n0;

.field public o:LU/t;

.field public p:LU/s;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(LU/a;Z)V
    .locals 2

    invoke-direct {p0, p1}, LU/n0;-><init>(LU/a;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LU/a;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, LU/v;->l:Z

    new-instance p2, LG/p0;

    invoke-direct {p2}, LG/p0;-><init>()V

    iput-object p2, p0, LU/v;->m:LG/p0;

    new-instance p2, LG/n0;

    invoke-direct {p2}, LG/n0;-><init>()V

    iput-object p2, p0, LU/v;->n:LG/n0;

    invoke-virtual {p1}, LU/a;->g()LG/q0;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p1, LU/t;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LU/v;->o:LU/t;

    iput-boolean v0, p0, LU/v;->s:Z

    return-void

    :cond_1
    invoke-virtual {p1}, LU/a;->h()LG/P;

    move-result-object p1

    new-instance p2, LU/t;

    new-instance v0, LU/u;

    invoke-direct {v0, p1}, LU/u;-><init>(LG/P;)V

    sget-object p1, LG/p0;->p:Ljava/lang/Object;

    sget-object v1, LU/t;->h:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LU/v;->o:LU/t;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    iget-boolean v0, p0, LU/v;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/v;->q:Z

    invoke-virtual {p0}, LU/n0;->A()V

    :cond_0
    return-void
.end method

.method public final C(LU/A;LB/A;J)LU/s;
    .locals 1

    new-instance v0, LU/s;

    invoke-direct {v0, p1, p2, p3, p4}, LU/s;-><init>(LU/A;LB/A;J)V

    iget-object p2, v0, LU/s;->h:LU/a;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, LF1/i;->o(Z)V

    iget-object p2, p0, LU/n0;->k:LU/a;

    iput-object p2, v0, LU/s;->h:LU/a;

    iget-boolean p2, p0, LU/v;->r:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, LU/A;->a:Ljava/lang/Object;

    iget-object p3, p0, LU/v;->o:LU/t;

    iget-object p3, p3, LU/t;->g:Ljava/lang/Object;

    if-eqz p3, :cond_1

    sget-object p3, LU/t;->h:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p0, LU/v;->o:LU/t;

    iget-object p2, p2, LU/t;->g:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object p1

    invoke-virtual {v0, p1}, LU/s;->d(LU/A;)V

    return-object v0

    :cond_2
    iput-object v0, p0, LU/v;->p:LU/s;

    iget-boolean p1, p0, LU/v;->q:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, LU/v;->q:Z

    invoke-virtual {p0}, LU/n0;->A()V

    :cond_3
    return-object v0
.end method

.method public final D(J)Z
    .locals 5

    iget-object v0, p0, LU/v;->p:LU/s;

    iget-object v1, p0, LU/v;->o:LU/t;

    iget-object v2, v0, LU/s;->e:LU/A;

    iget-object v2, v2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, LU/t;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, LU/v;->o:LU/t;

    iget-object v4, p0, LU/v;->n:LG/n0;

    invoke-virtual {v2, v1, v4, v3}, LU/t;->f(ILG/n0;Z)LG/n0;

    iget-wide v1, v4, LG/n0;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, LU/s;->k:J

    const/4 p1, 0x1

    return p1
.end method

.method public final a(LG/P;)Z
    .locals 1

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0, p1}, LU/a;->a(LG/P;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(LU/A;LB/A;J)LU/y;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LU/v;->C(LU/A;LB/A;J)LU/s;

    move-result-object p1

    return-object p1
.end method

.method public final n(LU/y;)V
    .locals 2

    move-object v0, p1

    check-cast v0, LU/s;

    iget-object v1, v0, LU/s;->i:LU/y;

    if-eqz v1, :cond_0

    iget-object v1, v0, LU/s;->h:LU/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LU/s;->i:LU/y;

    invoke-virtual {v1, v0}, LU/a;->n(LU/y;)V

    :cond_0
    iget-object v0, p0, LU/v;->p:LU/s;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LU/v;->p:LU/s;

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LU/v;->r:Z

    iput-boolean v0, p0, LU/v;->q:Z

    invoke-super {p0}, LU/j;->p()V

    return-void
.end method

.method public final s(LG/P;)V
    .locals 4

    iget-boolean v0, p0, LU/v;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LU/v;->o:LU/t;

    iget-object v1, v0, LU/o;->e:LG/q0;

    instance-of v2, v1, LU/k0;

    if-eqz v2, :cond_0

    new-instance v2, LU/k0;

    check-cast v1, LU/k0;

    iget-object v1, v1, LU/o;->e:LG/q0;

    invoke-direct {v2, v1, p1}, LU/k0;-><init>(LG/q0;LG/P;)V

    goto :goto_0

    :cond_0
    new-instance v2, LU/k0;

    invoke-direct {v2, v1, p1}, LU/k0;-><init>(LG/q0;LG/P;)V

    :goto_0
    new-instance v1, LU/t;

    iget-object v3, v0, LU/t;->f:Ljava/lang/Object;

    iget-object v0, v0, LU/t;->g:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v0}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, LU/v;->o:LU/t;

    goto :goto_1

    :cond_1
    new-instance v0, LU/t;

    new-instance v1, LU/u;

    invoke-direct {v1, p1}, LU/u;-><init>(LG/P;)V

    sget-object v2, LG/p0;->p:Ljava/lang/Object;

    sget-object v3, LU/t;->h:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LU/v;->o:LU/t;

    :goto_1
    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0, p1}, LU/a;->s(LG/P;)V

    return-void
.end method

.method public final y(LU/A;)LU/A;
    .locals 2

    iget-object v0, p1, LU/A;->a:Ljava/lang/Object;

    iget-object v1, p0, LU/v;->o:LU/t;

    iget-object v1, v1, LU/t;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LU/t;->h:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object p1

    return-object p1
.end method

.method public final z(LG/q0;)V
    .locals 11

    iget-boolean v1, p0, LU/v;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LU/v;->o:LU/t;

    new-instance v2, LU/t;

    iget-object v3, v1, LU/t;->f:Ljava/lang/Object;

    iget-object v1, v1, LU/t;->g:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, LU/v;->o:LU/t;

    iget-object v0, p0, LU/v;->p:LU/s;

    if-eqz v0, :cond_6

    iget-wide v0, v0, LU/s;->k:J

    invoke-virtual {p0, v0, v1}, LU/v;->D(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LU/v;->s:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, LU/v;->o:LU/t;

    new-instance v2, LU/t;

    iget-object v3, v1, LU/t;->f:Ljava/lang/Object;

    iget-object v1, v1, LU/t;->g:Ljava/lang/Object;

    invoke-direct {v2, p1, v3, v1}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, LG/p0;->p:Ljava/lang/Object;

    sget-object v2, LU/t;->h:Ljava/lang/Object;

    new-instance v3, LU/t;

    invoke-direct {v3, p1, v1, v2}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, LU/v;->o:LU/t;

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, LU/v;->m:LG/p0;

    invoke-virtual {p1, v1, v2}, LG/q0;->n(ILG/p0;)V

    iget-wide v3, v2, LG/p0;->k:J

    iget-object v6, v2, LG/p0;->a:Ljava/lang/Object;

    iget-object v5, p0, LU/v;->p:LU/s;

    if-eqz v5, :cond_3

    iget-wide v7, v5, LU/s;->f:J

    iget-object v9, p0, LU/v;->o:LU/t;

    iget-object v5, v5, LU/s;->e:LU/A;

    iget-object v5, v5, LU/A;->a:Ljava/lang/Object;

    iget-object v10, p0, LU/v;->n:LG/n0;

    invoke-virtual {v9, v5, v10}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    iget-wide v9, v10, LG/n0;->e:J

    add-long/2addr v9, v7

    iget-object v5, p0, LU/v;->o:LU/t;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v1, v2, v7, v8}, LU/t;->m(ILG/p0;J)LG/p0;

    iget-wide v1, v2, LG/p0;->k:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_3

    move-wide v4, v9

    goto :goto_1

    :cond_3
    move-wide v4, v3

    :goto_1
    iget-object v2, p0, LU/v;->n:LG/n0;

    const/4 v3, 0x0

    iget-object v1, p0, LU/v;->m:LG/p0;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LG/q0;->i(LG/p0;LG/n0;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, LU/v;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, LU/v;->o:LU/t;

    new-instance v2, LU/t;

    iget-object v5, v1, LU/t;->f:Ljava/lang/Object;

    iget-object v1, v1, LU/t;->g:Ljava/lang/Object;

    invoke-direct {v2, p1, v5, v1}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v1, LU/t;

    invoke-direct {v1, p1, v6, v2}, LU/t;-><init>(LG/q0;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    :goto_2
    iput-object v2, p0, LU/v;->o:LU/t;

    iget-object v0, p0, LU/v;->p:LU/s;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3, v4}, LU/v;->D(J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, LU/s;->e:LU/A;

    iget-object v1, v0, LU/A;->a:Ljava/lang/Object;

    iget-object v2, p0, LU/v;->o:LU/t;

    iget-object v2, v2, LU/t;->g:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v2, LU/t;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, LU/v;->o:LU/t;

    iget-object v1, v1, LU/t;->g:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    iput-boolean v1, p0, LU/v;->s:Z

    iput-boolean v1, p0, LU/v;->r:Z

    iget-object v1, p0, LU/v;->o:LU/t;

    invoke-virtual {p0, v1}, LU/a;->m(LG/q0;)V

    if-eqz v0, :cond_7

    iget-object v1, p0, LU/v;->p:LU/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, LU/s;->d(LU/A;)V

    :cond_7
    return-void
.end method
