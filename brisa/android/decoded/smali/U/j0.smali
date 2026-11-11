.class public final LU/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/y;
.implements LU/x;


# instance fields
.field public final e:LU/y;

.field public final f:J

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU/y;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/j0;->e:LU/y;

    iput-wide p2, p0, LU/j0;->f:J

    return-void
.end method


# virtual methods
.method public final a(LU/b0;)V
    .locals 0

    check-cast p1, LU/y;

    iget-object p1, p0, LU/j0;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/b0;->b()Z

    move-result v0

    return v0
.end method

.method public final c(LU/y;)V
    .locals 0

    iget-object p1, p0, LU/j0;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->c(LU/y;)V

    return-void
.end method

.method public final f(LU/x;J)V
    .locals 2

    iput-object p1, p0, LU/j0;->g:Ljava/lang/Object;

    iget-wide v0, p0, LU/j0;->f:J

    sub-long/2addr p2, v0

    iget-object p1, p0, LU/j0;->e:LU/y;

    invoke-interface {p1, p0, p2, p3}, LU/y;->f(LU/x;J)V

    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/y;->g()V

    return-void
.end method

.method public final h()J
    .locals 5

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/b0;->h()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, LU/j0;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final i()J
    .locals 5

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/y;->i()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, LU/j0;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final j(LN/J;)Z
    .locals 5

    new-instance v0, LN/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p1, LN/J;->a:J

    iget v3, p1, LN/J;->b:F

    iput v3, v0, LN/I;->b:F

    iget-wide v3, p1, LN/J;->c:J

    iput-wide v3, v0, LN/I;->c:J

    iget-wide v3, p0, LU/j0;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, LN/I;->a:J

    new-instance p1, LN/J;

    invoke-direct {p1, v0}, LN/J;-><init>(LN/I;)V

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0, p1}, LU/b0;->j(LN/J;)Z

    move-result p1

    return p1
.end method

.method public final k([LW/q;[Z[LU/a0;[ZJ)J
    .locals 11

    array-length v0, p3

    new-array v4, v0, [LU/a0;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    check-cast v2, LU/i0;

    if-eqz v2, :cond_0

    iget-object v8, v2, LU/i0;->e:LU/a0;

    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LU/j0;->e:LU/y;

    iget-wide v9, p0, LU/j0;->f:J

    sub-long v6, p5, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, LU/y;->k([LW/q;[Z[LU/a0;[ZJ)J

    move-result-wide p1

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    aget-object v1, v4, v0

    if-nez v1, :cond_2

    aput-object v8, p3, v0

    goto :goto_2

    :cond_2
    aget-object v2, p3, v0

    if-eqz v2, :cond_3

    check-cast v2, LU/i0;

    iget-object v2, v2, LU/i0;->e:LU/a0;

    if-eq v2, v1, :cond_4

    :cond_3
    new-instance v2, LU/i0;

    invoke-direct {v2, v1, v9, v10}, LU/i0;-><init>(LU/a0;J)V

    aput-object v2, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr p1, v9

    return-wide p1
.end method

.method public final m()LU/l0;
    .locals 1

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/y;->m()LU/l0;

    move-result-object v0

    return-object v0
.end method

.method public final n()J
    .locals 5

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/b0;->n()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, LU/j0;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final o(JLN/h0;)J
    .locals 3

    iget-wide v0, p0, LU/j0;->f:J

    sub-long/2addr p1, v0

    iget-object v2, p0, LU/j0;->e:LU/y;

    invoke-interface {v2, p1, p2, p3}, LU/y;->o(JLN/h0;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0}, LU/y;->p()V

    return-void
.end method

.method public final q(J)J
    .locals 3

    iget-wide v0, p0, LU/j0;->f:J

    sub-long/2addr p1, v0

    iget-object v2, p0, LU/j0;->e:LU/y;

    invoke-interface {v2, p1, p2}, LU/y;->q(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final r(J)V
    .locals 2

    iget-wide v0, p0, LU/j0;->f:J

    sub-long/2addr p1, v0

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0, p1, p2}, LU/y;->r(J)V

    return-void
.end method

.method public final t(J)V
    .locals 2

    iget-wide v0, p0, LU/j0;->f:J

    sub-long/2addr p1, v0

    iget-object v0, p0, LU/j0;->e:LU/y;

    invoke-interface {v0, p1, p2}, LU/b0;->t(J)V

    return-void
.end method
