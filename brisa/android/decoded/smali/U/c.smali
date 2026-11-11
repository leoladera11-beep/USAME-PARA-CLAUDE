.class public final LU/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/y;
.implements LU/x;


# instance fields
.field public final e:LU/y;

.field public f:Ljava/lang/Object;

.field public g:[LU/b;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:J

.field public n:LU/e;


# direct methods
.method public constructor <init>(LU/y;ZJJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/c;->e:LU/y;

    const/4 p1, 0x0

    new-array p1, p1, [LU/b;

    iput-object p1, p0, LU/c;->g:[LU/b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, LU/c;->h:J

    iput-wide v0, p0, LU/c;->k:J

    iput-wide p3, p0, LU/c;->l:J

    iput-wide p5, p0, LU/c;->m:J

    return-void
.end method


# virtual methods
.method public final a(LU/b0;)V
    .locals 0

    check-cast p1, LU/y;

    iget-object p1, p0, LU/c;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/b0;->b()Z

    move-result v0

    return v0
.end method

.method public final c(LU/y;)V
    .locals 0

    iget-object p1, p0, LU/c;->n:LU/e;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LU/c;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->c(LU/y;)V

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, LU/c;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LU/c;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(LU/x;J)V
    .locals 0

    iput-object p1, p0, LU/c;->f:Ljava/lang/Object;

    iget-object p1, p0, LU/c;->e:LU/y;

    invoke-interface {p1, p0, p2, p3}, LU/y;->f(LU/x;J)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/c;->j:Z

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/y;->g()V

    return-void
.end method

.method public final h()J
    .locals 7

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/b0;->h()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, LU/c;->m:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final i()J
    .locals 9

    invoke-virtual {p0}, LU/c;->d()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/c;->i:Z

    iget-wide v3, p0, LU/c;->h:J

    iput-wide v1, p0, LU/c;->h:J

    iput-wide v3, p0, LU/c;->k:J

    invoke-virtual {p0}, LU/c;->i()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/y;->i()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v5, p0, LU/c;->l:J

    iget-wide v7, p0, LU/c;->m:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    iget-wide v5, p0, LU/c;->k:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    :goto_0
    return-wide v1

    :cond_4
    iput-wide v3, p0, LU/c;->k:J

    return-wide v3
.end method

.method public final j(LN/J;)Z
    .locals 1

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0, p1}, LU/b0;->j(LN/J;)Z

    move-result p1

    return p1
.end method

.method public final k([LW/q;[Z[LU/a0;[ZJ)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v2, v2, [LU/b;

    iput-object v2, v0, LU/c;->g:[LU/b;

    array-length v2, v1

    new-array v5, v2, [LU/a0;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/4 v10, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, v0, LU/c;->g:[LU/b;

    aget-object v4, v1, v2

    check-cast v4, LU/b;

    aput-object v4, v3, v2

    if-eqz v4, :cond_0

    iget-object v10, v4, LU/b;->e:LU/a0;

    :cond_0
    aput-object v10, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LU/c;->e:LU/y;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, LU/y;->k([LW/q;[Z[LU/a0;[ZJ)J

    move-result-wide v11

    iget-wide v2, v0, LU/c;->m:J

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v4, v2, v15

    if-eqz v4, :cond_2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    const/4 v6, 0x1

    if-ge v2, v4, :cond_9

    aget-object v4, v5, v2

    if-nez v4, :cond_3

    iget-object v4, v0, LU/c;->g:[LU/b;

    aput-object v10, v4, v2

    goto :goto_4

    :cond_3
    iget-object v15, v0, LU/c;->g:[LU/b;

    aget-object v15, v15, v2

    if-eqz v15, :cond_4

    iget-object v15, v15, LU/b;->e:LU/a0;

    if-eq v15, v4, :cond_8

    :cond_4
    invoke-virtual {v0}, LU/c;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    cmp-long v4, v11, v7

    if-gez v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    const-wide/16 v15, 0x0

    cmp-long v4, v11, v15

    if-eqz v4, :cond_6

    aget-object v4, p1, v2

    if-eqz v4, :cond_6

    invoke-interface {v4}, LW/q;->h()LG/x;

    move-result-object v4

    iget-object v15, v4, LG/x;->p:Ljava/lang/String;

    iget-object v4, v4, LG/x;->l:Ljava/lang/String;

    invoke-static {v15, v4}, LG/W;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    iget-object v4, v0, LU/c;->g:[LU/b;

    new-instance v15, LU/b;

    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v15, v0, v9, v6}, LU/b;-><init>(LU/c;LU/a0;Z)V

    aput-object v15, v4, v2

    or-int/2addr v3, v6

    :cond_8
    :goto_4
    iget-object v4, v0, LU/c;->g:[LU/b;

    aget-object v4, v4, v2

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_a

    move-wide v1, v13

    goto :goto_5

    :cond_a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iput-wide v1, v0, LU/c;->h:J

    iget-boolean v1, v0, LU/c;->j:Z

    if-eqz v1, :cond_b

    iput-boolean v6, v0, LU/c;->i:Z

    :cond_b
    return-wide v13
.end method

.method public final m()LU/l0;
    .locals 1

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/y;->m()LU/l0;

    move-result-object v0

    return-object v0
.end method

.method public final n()J
    .locals 7

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/b0;->n()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, LU/c;->m:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final o(JLN/h0;)J
    .locals 9

    iget-wide v0, p0, LU/c;->l:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v3, p3, LN/h0;->a:J

    const-wide/16 v5, 0x0

    sub-long v7, p1, v0

    invoke-static/range {v3 .. v8}, LJ/W;->h(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, LN/h0;->b:J

    iget-wide v4, p0, LU/c;->m:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    move-wide v6, v4

    goto :goto_1

    :cond_1
    sub-long/2addr v4, p1

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, LJ/W;->h(JJJ)J

    move-result-wide v2

    iget-wide v4, p3, LN/h0;->a:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    iget-wide v4, p3, LN/h0;->b:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, LN/h0;

    invoke-direct {p3, v0, v1, v2, v3}, LN/h0;-><init>(JJ)V

    :goto_2
    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0, p1, p2, p3}, LU/y;->o(JLN/h0;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LU/c;->n:LU/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0}, LU/y;->p()V

    return-void

    :cond_0
    throw v0
.end method

.method public final q(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LU/c;->h:J

    iget-object v0, p0, LU/c;->g:[LU/b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean v2, v4, LU/b;->g:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0, p1, p2}, LU/y;->q(J)J

    move-result-wide p1

    iget-wide v0, p0, LU/c;->l:J

    iget-wide v2, p0, LU/c;->m:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method public final r(J)V
    .locals 1

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0, p1, p2}, LU/y;->r(J)V

    return-void
.end method

.method public final t(J)V
    .locals 1

    iget-object v0, p0, LU/c;->e:LU/y;

    invoke-interface {v0, p1, p2}, LU/b0;->t(J)V

    return-void
.end method
