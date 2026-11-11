.class public abstract LN/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/a0;


# instance fields
.field public final e:Ljava/lang/Object;

.field public final f:I

.field public final g:LN0/O;

.field public h:LN/e0;

.field public i:I

.field public j:LO/j;

.field public k:LJ/M;

.field public l:I

.field public m:LU/a0;

.field public n:[LG/x;

.field public o:J

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z

.field public t:LG/q0;

.field public u:LU/A;

.field public v:J

.field public w:LW/o;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LN/a;->e:Ljava/lang/Object;

    iput p1, p0, LN/a;->f:I

    new-instance p1, LN0/O;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LN0/O;-><init>(IZ)V

    iput-object p1, p0, LN/a;->g:LN0/O;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, LN/a;->q:J

    sget-object p1, LG/q0;->a:LG/m0;

    iput-object p1, p0, LN/a;->t:LG/q0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LN/a;->v:J

    return-void
.end method

.method public static e(IIII)I
    .locals 0

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    or-int/lit16 p0, p0, 0x80

    or-int/2addr p0, p3

    return p0
.end method

.method public static n(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A([LG/x;LU/a0;JJLU/A;)V
    .locals 7

    iget-boolean v0, p0, LN/a;->r:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LF1/i;->o(Z)V

    iput-object p2, p0, LN/a;->m:LU/a0;

    iput-object p7, p0, LN/a;->u:LU/A;

    invoke-virtual {p0}, LN/a;->G()V

    iget-wide v0, p0, LN/a;->q:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, LN/a;->q:J

    :cond_0
    iput-object p1, p0, LN/a;->n:[LG/x;

    iput-wide p5, p0, LN/a;->o:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, LN/a;->w([LG/x;JJLU/A;)V

    return-void
.end method

.method public final B(JZZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LN/a;->r:Z

    iput-wide p1, p0, LN/a;->p:J

    iput-wide p1, p0, LN/a;->q:J

    if-nez p4, :cond_1

    iget-object p4, p0, LN/a;->m:LU/a0;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, LN/a;->o:J

    sub-long v1, p1, v1

    invoke-interface {p4, v1, v2}, LU/a0;->y(J)I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, LN/a;->r(JZZ)V

    return-void
.end method

.method public C(FF)V
    .locals 0

    return-void
.end method

.method public abstract D(LG/x;)I
.end method

.method public E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final G()V
    .locals 6

    iget-object v0, p0, LN/a;->t:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_4

    iget-object v0, p0, LN/a;->u:LU/A;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, LN/a;->t:LG/q0;

    iget-object v4, v0, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iput-wide v1, p0, LN/a;->v:J

    return-void

    :cond_1
    iget-object v1, p0, LN/a;->t:LG/q0;

    new-instance v2, LG/n0;

    invoke-direct {v2}, LG/n0;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v1

    iget-wide v2, v1, LG/n0;->d:J

    iput-wide v2, p0, LN/a;->v:J

    iget v2, v0, LU/A;->b:I

    if-eq v2, v4, :cond_2

    iget-object v1, v1, LG/n0;->g:LG/c;

    invoke-virtual {v1, v2}, LG/c;->a(I)LG/a;

    move-result-object v1

    iget-object v1, v1, LG/a;->g:[J

    iget v0, v0, LU/A;->c:I

    aget-wide v0, v1, v0

    iput-wide v0, p0, LN/a;->v:J

    return-void

    :cond_2
    iget v0, v0, LU/A;->e:I

    if-eq v0, v4, :cond_3

    iget-object v1, v1, LG/n0;->g:LG/c;

    invoke-virtual {v1, v0}, LG/c;->a(I)LG/a;

    move-result-object v0

    iget-wide v0, v0, LG/a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    iput-wide v0, p0, LN/a;->v:J

    :cond_3
    return-void

    :cond_4
    :goto_0
    iput-wide v1, p0, LN/a;->v:J

    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/Exception;LG/x;ZI)LN/k;
    .locals 11

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, LN/a;->s:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LN/a;->s:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, LN/a;->D(LG/x;)I

    move-result v2
    :try_end_0
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x7

    iput-boolean v1, p0, LN/a;->s:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, LN/a;->s:Z

    throw v0

    :catch_0
    iput-boolean v1, p0, LN/a;->s:Z

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p0}, LN/a;->k()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LN/a;->i:I

    iget-object v9, p0, LN/a;->u:LU/A;

    new-instance v1, LN/k;

    if-nez p2, :cond_1

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    const/4 v2, 0x1

    move-object v3, p1

    move-object v7, p2

    move v10, p3

    move v4, p4

    invoke-direct/range {v1 .. v10}, LN/k;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILG/x;ILU/A;Z)V

    return-object v1
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(JJ)J
    .locals 0

    iget p1, p0, LN/a;->l:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, LN/a;->o()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN/a;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-wide/32 p1, 0xf4240

    return-wide p1

    :cond_1
    const-wide/16 p1, 0x2710

    return-wide p1
.end method

.method public j()LN/K;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public final l()Z
    .locals 4

    iget-wide v0, p0, LN/a;->q:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract m()Z
.end method

.method public abstract o()Z
.end method

.method public abstract p()V
.end method

.method public q(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract r(JZZ)V
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w([LG/x;JJLU/A;)V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public final y(LN0/O;LM/f;I)I
    .locals 5

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN/a;->m:LU/a0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1, p2, p3}, LU/a0;->j(LN0/O;LM/f;I)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_4

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, LK/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, LN/a;->q:J

    :cond_1
    iget-boolean p1, p0, LN/a;->r:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x3

    return p1

    :cond_3
    iget-wide v1, p2, LM/f;->k:J

    iget-wide v3, p0, LN/a;->o:J

    add-long/2addr v1, v3

    iput-wide v1, p2, LM/f;->k:J

    if-nez v0, :cond_5

    iget-wide p1, p0, LN/a;->q:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, LN/a;->q:J

    return p3

    :cond_4
    const/4 p2, -0x5

    if-ne p3, p2, :cond_5

    iget-object p2, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p2, LG/x;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, LG/x;->u:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, LG/x;->a()LG/w;

    move-result-object p2

    iget-wide v2, p0, LN/a;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p2, LG/w;->t:J

    new-instance v0, LG/x;

    invoke-direct {v0, p2}, LG/x;-><init>(LG/w;)V

    iput-object v0, p1, LN0/O;->g:Ljava/lang/Object;

    :cond_5
    return p3
.end method

.method public abstract z(JJ)V
.end method
