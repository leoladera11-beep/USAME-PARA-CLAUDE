.class public final LZ/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/K;


# instance fields
.field public final a:LZ/y;

.field public final b:LZ/z;

.field public final c:LZ/E;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:LZ/g;

.field public f:Landroid/view/Surface;

.field public g:LG/x;

.field public h:J

.field public i:LZ/I;

.field public j:Ljava/util/concurrent/Executor;

.field public k:LZ/w;


# direct methods
.method public constructor <init>(LZ/y;LZ/z;LJ/M;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/e;->a:LZ/y;

    iput-object p2, p0, LZ/e;->b:LZ/z;

    iput-object p3, p1, LZ/y;->k:LJ/M;

    new-instance p3, LZ/g;

    new-instance v0, LI0/E;

    const/16 v1, 0x17

    invoke-direct {v0, p1, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p3, v0}, LZ/g;-><init>(LI0/E;)V

    iput-object p3, p0, LZ/e;->e:LZ/g;

    new-instance v0, LZ/E;

    new-instance v1, LW0/c;

    invoke-direct {v1, p0}, LW0/c;-><init>(LZ/e;)V

    invoke-direct {v0, v1, p1, p2, p3}, LZ/E;-><init>(LW0/c;LZ/y;LZ/z;LZ/g;)V

    iput-object v0, p0, LZ/e;->c:LZ/E;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LZ/e;->d:Ljava/util/ArrayDeque;

    new-instance p1, LG/w;

    invoke-direct {p1}, LG/w;-><init>()V

    new-instance p2, LG/x;

    invoke-direct {p2, p1}, LG/x;-><init>(LG/w;)V

    iput-object p2, p0, LZ/e;->g:LG/x;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LZ/e;->h:J

    sget-object p1, LZ/I;->a:LZ/H;

    iput-object p1, p0, LZ/e;->i:LZ/I;

    new-instance p1, LP0/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LP0/c;-><init>(I)V

    iput-object p1, p0, LZ/e;->j:Ljava/util/concurrent/Executor;

    new-instance p1, LZ/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/e;->k:LZ/w;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, LZ/e;->c:LZ/E;

    iget-wide v1, v0, LZ/E;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    iget-wide v3, v0, LZ/E;->j:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LZ/e;->f:Landroid/view/Surface;

    iget-object v1, p0, LZ/e;->a:LZ/y;

    invoke-virtual {v1, v0}, LZ/y;->f(Landroid/view/Surface;)V

    return-void
.end method

.method public final d()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, LZ/e;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final e(Z)V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, LZ/e;->a:LZ/y;

    iget-object v4, p1, LZ/y;->b:LZ/D;

    invoke-virtual {v4}, LZ/D;->b()V

    iput-wide v0, p1, LZ/y;->f:J

    iget v4, p1, LZ/y;->e:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, LZ/y;->e:I

    iput-wide v0, p1, LZ/y;->h:J

    iput-boolean v3, p1, LZ/y;->m:Z

    :cond_0
    iget-object p1, p0, LZ/e;->b:LZ/z;

    invoke-virtual {p1}, LZ/z;->b()V

    iget-object p1, p0, LZ/e;->c:LZ/E;

    iget-object v4, p1, LZ/E;->d:LJ/Q;

    iget-object v5, p1, LZ/E;->f:LJ/v;

    iput v3, v5, LJ/v;->e:I

    const/4 v6, -0x1

    iput v6, v5, LJ/v;->f:I

    iput v3, v5, LJ/v;->g:I

    iput-wide v0, p1, LZ/E;->i:J

    iput-wide v0, p1, LZ/E;->j:J

    iput-wide v0, p1, LZ/E;->k:J

    iget-object v0, p1, LZ/E;->e:LJ/Q;

    invoke-virtual {v0}, LJ/Q;->h()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, LJ/Q;->h()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    :goto_1
    invoke-virtual {v0}, LJ/Q;->h()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, LJ/Q;->e()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LJ/Q;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, LZ/E;->m:J

    :cond_3
    invoke-virtual {v4}, LJ/Q;->h()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v4}, LJ/Q;->h()I

    move-result p1

    if-lez p1, :cond_4

    move v3, v2

    :cond_4
    invoke-static {v3}, LF1/i;->g(Z)V

    :goto_2
    invoke-virtual {v4}, LJ/Q;->h()I

    move-result p1

    if-le p1, v2, :cond_5

    invoke-virtual {v4}, LJ/Q;->e()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, LJ/Q;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, LG/C0;

    const-wide/16 v0, 0x0

    invoke-virtual {v4, v0, v1, p1}, LJ/Q;->a(JLjava/lang/Object;)V

    :cond_6
    iget-object p1, p0, LZ/e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final f(LG/x;JILjava/util/List;)V
    .locals 10

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    invoke-static {p5}, LF1/i;->o(Z)V

    iget p5, p1, LG/x;->w:I

    iget v0, p1, LG/x;->x:I

    iget-object v1, p0, LZ/e;->g:LG/x;

    iget v2, v1, LG/x;->w:I

    const-wide/16 v3, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v7, p0, LZ/e;->c:LZ/E;

    if-ne p5, v2, :cond_0

    iget v1, v1, LG/x;->x:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v1, v7, LZ/E;->d:LJ/Q;

    iget-wide v8, v7, LZ/E;->i:J

    cmp-long v2, v8, v5

    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v8, v3

    :goto_0
    new-instance v2, LG/C0;

    invoke-direct {v2, p5, v0}, LG/C0;-><init>(II)V

    invoke-virtual {v1, v8, v9, v2}, LJ/Q;->a(JLjava/lang/Object;)V

    :cond_2
    iget p5, p1, LG/x;->B:F

    iget-object v0, p0, LZ/e;->g:LG/x;

    iget v0, v0, LG/x;->B:F

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LZ/e;->e:LZ/g;

    iput p5, v0, LZ/g;->f:F

    iget-object p5, v0, LZ/g;->a:LZ/f;

    invoke-virtual {p5}, LZ/f;->c()V

    iget-object p5, v0, LZ/g;->b:LZ/f;

    invoke-virtual {p5}, LZ/f;->c()V

    const/4 p5, 0x0

    iput-boolean p5, v0, LZ/g;->c:Z

    iput-wide v5, v0, LZ/g;->d:J

    iput p5, v0, LZ/g;->e:I

    invoke-virtual {v0}, LZ/g;->c()V

    :cond_3
    iput-object p1, p0, LZ/e;->g:LG/x;

    iget-wide v0, p0, LZ/e;->h:J

    cmp-long p1, p2, v0

    if-eqz p1, :cond_6

    iget-object p1, v7, LZ/E;->f:LJ/v;

    iget p1, p1, LJ/v;->g:I

    if-nez p1, :cond_4

    iget-object p1, v7, LZ/E;->b:LZ/y;

    invoke-virtual {p1, p4}, LZ/y;->e(I)V

    iput-wide p2, v7, LZ/E;->m:J

    goto :goto_2

    :cond_4
    iget-object p1, v7, LZ/E;->e:LJ/Q;

    iget-wide p4, v7, LZ/E;->i:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_5

    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    goto :goto_1

    :cond_5
    add-long/2addr p4, v3

    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, p5, v0}, LJ/Q;->a(JLjava/lang/Object;)V

    :goto_2
    iput-wide p2, p0, LZ/e;->h:J

    :cond_6
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final h(F)V
    .locals 1

    iget-object v0, p0, LZ/e;->a:LZ/y;

    invoke-virtual {v0, p1}, LZ/y;->g(F)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, LZ/e;->b:LZ/z;

    invoke-virtual {v0}, LZ/z;->b()V

    iget-object v0, p0, LZ/e;->a:LZ/y;

    const/4 v1, 0x0

    iput-boolean v1, v0, LZ/y;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, LZ/y;->h:J

    iget-object v0, v0, LZ/y;->b:LZ/D;

    iput-boolean v1, v0, LZ/D;->d:Z

    iget-object v1, v0, LZ/D;->c:LZ/A;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LZ/A;->b()V

    :cond_0
    invoke-virtual {v0}, LZ/D;->a()V

    return-void
.end method

.method public final j(LG/x;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final k(JLZ/j;)Z
    .locals 8

    iget-object v0, p0, LZ/e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, LZ/e;->c:LZ/E;

    iget-object v0, p3, LZ/E;->f:LJ/v;

    iget v1, v0, LJ/v;->g:I

    iget-object v2, v0, LJ/v;->i:Ljava/lang/Object;

    check-cast v2, [J

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    array-length v1, v2

    shl-int/2addr v1, v4

    if-ltz v1, :cond_0

    new-array v3, v1, [J

    array-length v5, v2

    iget v6, v0, LJ/v;->e:I

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, LJ/v;->i:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v2, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v7, v0, LJ/v;->e:I

    iget v2, v0, LJ/v;->g:I

    sub-int/2addr v2, v4

    iput v2, v0, LJ/v;->f:I

    iput-object v3, v0, LJ/v;->i:Ljava/lang/Object;

    sub-int/2addr v1, v4

    iput v1, v0, LJ/v;->h:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v1, v0, LJ/v;->f:I

    add-int/2addr v1, v4

    iget v2, v0, LJ/v;->h:I

    and-int/2addr v1, v2

    iput v1, v0, LJ/v;->f:I

    iget-object v2, v0, LJ/v;->i:Ljava/lang/Object;

    check-cast v2, [J

    aput-wide p1, v2, v1

    iget v1, v0, LJ/v;->g:I

    add-int/2addr v1, v4

    iput v1, v0, LJ/v;->g:I

    iput-wide p1, p3, LZ/E;->i:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p3, LZ/E;->k:J

    iget-object p1, p0, LZ/e;->j:Ljava/util/concurrent/Executor;

    new-instance p2, LH/a;

    const/16 p3, 0x13

    invoke-direct {p2, p0, p3}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v4
.end method

.method public final l(JJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ/e;->c:LZ/E;

    invoke-virtual {v0, p1, p2, p3, p4}, LZ/E;->a(JJ)V
    :try_end_0
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, LZ/J;

    iget-object p3, p0, LZ/e;->g:LG/x;

    invoke-direct {p2, p1, p3}, LZ/J;-><init>(Ljava/lang/Exception;LG/x;)V

    throw p2
.end method

.method public final m(LZ/i;)V
    .locals 0

    iput-object p1, p0, LZ/e;->i:LZ/I;

    sget-object p1, Lz1/s;->e:Lz1/s;

    iput-object p1, p0, LZ/e;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final n(Z)V
    .locals 1

    iget-object v0, p0, LZ/e;->a:LZ/y;

    invoke-virtual {v0, p1}, LZ/y;->c(Z)V

    return-void
.end method

.method public final o(Z)Z
    .locals 1

    iget-object v0, p0, LZ/e;->a:LZ/y;

    invoke-virtual {v0, p1}, LZ/y;->b(Z)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LZ/e;->b:LZ/z;

    invoke-virtual {v0}, LZ/z;->b()V

    iget-object v0, p0, LZ/e;->a:LZ/y;

    invoke-virtual {v0}, LZ/y;->d()V

    return-void
.end method

.method public final q()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final r(LZ/w;)V
    .locals 0

    iput-object p1, p0, LZ/e;->k:LZ/w;

    return-void
.end method

.method public final s(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final t(Landroid/view/Surface;LJ/E;)V
    .locals 0

    iput-object p1, p0, LZ/e;->f:Landroid/view/Surface;

    iget-object p2, p0, LZ/e;->a:LZ/y;

    invoke-virtual {p2, p1}, LZ/y;->f(Landroid/view/Surface;)V

    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, LZ/e;->c:LZ/E;

    iget-wide v1, v0, LZ/E;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, LZ/E;->i:J

    iput-wide v1, v0, LZ/E;->j:J

    :cond_0
    iget-wide v1, v0, LZ/E;->i:J

    iput-wide v1, v0, LZ/E;->k:J

    return-void
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, LZ/e;->a:LZ/y;

    iget v1, v0, LZ/y;->e:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, LZ/y;->e:I

    :cond_0
    return-void
.end method

.method public final x(I)V
    .locals 2

    iget-object v0, p0, LZ/e;->a:LZ/y;

    iget-object v0, v0, LZ/y;->b:LZ/D;

    iget v1, v0, LZ/D;->i:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, v0, LZ/D;->i:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, LZ/D;->c(Z)V

    return-void
.end method
