.class public final LU/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/y;
.implements LU/x;


# instance fields
.field public final e:LU/A;

.field public final f:J

.field public final g:LB/A;

.field public h:LU/a;

.field public i:LU/y;

.field public j:LU/x;

.field public k:J

.field public l:Z


# direct methods
.method public constructor <init>(LU/A;LB/A;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/s;->e:LU/A;

    iput-object p2, p0, LU/s;->g:LB/A;

    iput-wide p3, p0, LU/s;->f:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/s;->k:J

    return-void
.end method


# virtual methods
.method public final a(LU/b0;)V
    .locals 1

    check-cast p1, LU/y;

    iget-object p1, p0, LU/s;->j:LU/x;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LU/s;->i:LU/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LU/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(LU/y;)V
    .locals 1

    iget-object p1, p0, LU/s;->j:LU/x;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, LU/x;->c(LU/y;)V

    return-void
.end method

.method public final d(LU/A;)V
    .locals 4

    iget-wide v0, p0, LU/s;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LU/s;->f:J

    :goto_0
    iget-object v2, p0, LU/s;->h:LU/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LU/s;->g:LB/A;

    invoke-virtual {v2, p1, v3, v0, v1}, LU/a;->b(LU/A;LB/A;J)LU/y;

    move-result-object p1

    iput-object p1, p0, LU/s;->i:LU/y;

    iget-boolean v2, p0, LU/s;->l:Z

    if-eqz v2, :cond_1

    invoke-interface {p1}, LU/y;->g()V

    :cond_1
    iget-object p1, p0, LU/s;->j:LU/x;

    if-eqz p1, :cond_2

    iget-object p1, p0, LU/s;->i:LU/y;

    invoke-interface {p1, p0, v0, v1}, LU/y;->f(LU/x;J)V

    :cond_2
    return-void
.end method

.method public final f(LU/x;J)V
    .locals 2

    iput-object p1, p0, LU/s;->j:LU/x;

    iget-object p1, p0, LU/s;->i:LU/y;

    if-eqz p1, :cond_1

    iget-wide p2, p0, LU/s;->k:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, LU/s;->f:J

    :goto_0
    invoke-interface {p1, p0, p2, p3}, LU/y;->f(LU/x;J)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/s;->l:Z

    iget-object v0, p0, LU/s;->i:LU/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LU/y;->g()V

    :cond_0
    return-void
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0}, LU/b0;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0}, LU/y;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(LN/J;)Z
    .locals 1

    iget-object v0, p0, LU/s;->i:LU/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LU/b0;->j(LN/J;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k([LW/q;[Z[LU/a0;[ZJ)J
    .locals 12

    iget-wide v0, p0, LU/s;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, LU/s;->f:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    :goto_0
    iput-wide v2, p0, LU/s;->k:J

    iget-object v5, p0, LU/s;->i:LU/y;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, LU/y;->k([LW/q;[Z[LU/a0;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final m()LU/l0;
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0}, LU/y;->m()LU/l0;

    move-result-object v0

    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0}, LU/b0;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o(JLN/h0;)J
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, LU/y;->o(JLN/h0;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LU/s;->i:LU/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LU/y;->p()V

    return-void

    :cond_0
    iget-object v0, p0, LU/s;->h:LU/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LU/a;->j()V

    :cond_1
    return-void
.end method

.method public final q(J)J
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, LU/y;->q(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final r(J)V
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, LU/y;->r(J)V

    return-void
.end method

.method public final t(J)V
    .locals 2

    iget-object v0, p0, LU/s;->i:LU/y;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, LU/b0;->t(J)V

    return-void
.end method
