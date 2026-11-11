.class public final LN/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LN/a;

.field public final b:I

.field public final c:LN/a;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LN/a;LN/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/f0;->a:LN/a;

    iput p3, p0, LN/f0;->b:I

    iput-object p2, p0, LN/f0;->c:LN/a;

    const/4 p1, 0x0

    iput p1, p0, LN/f0;->d:I

    iput-boolean p1, p0, LN/f0;->e:Z

    iput-boolean p1, p0, LN/f0;->f:Z

    return-void
.end method

.method public static b(LN/a;)V
    .locals 3

    iget v0, p0, LN/a;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iput v2, p0, LN/a;->l:I

    invoke-virtual {p0}, LN/a;->v()V

    :cond_1
    return-void
.end method

.method public static k(LN/a;)Z
    .locals 0

    iget p0, p0, LN/a;->l:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o(LN/a;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LN/a;->r:Z

    instance-of v0, p0, LV/e;

    if-eqz v0, :cond_0

    check-cast p0, LV/e;

    iget-boolean v0, p0, LN/a;->r:Z

    invoke-static {v0}, LF1/i;->o(Z)V

    iput-wide p1, p0, LV/e;->P:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LN/a;LN/h;)V
    .locals 4

    iget-object v0, p0, LN/f0;->a:LN/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, LN/f0;->c:LN/a;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {v0}, LF1/i;->o(Z)V

    invoke-static {p1}, LN/f0;->k(LN/a;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p2, LN/h;->g:LN/a;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    iput-object v3, p2, LN/h;->h:LN/K;

    iput-object v3, p2, LN/h;->g:LN/a;

    iput-boolean v2, p2, LN/h;->i:Z

    :cond_3
    invoke-static {p1}, LN/f0;->b(LN/a;)V

    iget p2, p1, LN/a;->l:I

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object p2, p1, LN/a;->g:LN0/O;

    invoke-virtual {p2}, LN0/O;->I()V

    iput v1, p1, LN/a;->l:I

    iput-object v3, p1, LN/a;->m:LU/a0;

    iput-object v3, p1, LN/a;->n:[LG/x;

    iput-boolean v1, p1, LN/a;->r:Z

    invoke-virtual {p1}, LN/a;->p()V

    iput-object v3, p1, LN/a;->u:LU/A;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p1, LN/a;->v:J

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, LN/f0;->a:LN/a;

    invoke-static {v0}, LN/f0;->k(LN/a;)Z

    move-result v0

    iget-object v1, p0, LN/f0;->c:LN/a;

    if-eqz v1, :cond_0

    invoke-static {v1}, LN/f0;->k(LN/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final d(LN/L;)LN/a;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, LN/L;->c:[LU/a0;

    iget v1, p0, LN/f0;->b:I

    aget-object p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LN/f0;->a:LN/a;

    iget-object v2, v1, LN/a;->m:LU/a0;

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, LN/f0;->c:LN/a;

    if-eqz v1, :cond_2

    iget-object v2, v1, LN/a;->m:LU/a0;

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final e(LN/L;LN/a;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, LN/L;->c:[LU/a0;

    iget v2, p0, LN/f0;->b:I

    aget-object v1, v1, v2

    iget-object v3, p2, LN/a;->m:LU/a0;

    if-eqz v3, :cond_5

    if-ne v3, v1, :cond_2

    if-eqz v1, :cond_5

    invoke-virtual {p2}, LN/a;->l()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, LN/L;->m:LN/L;

    iget-object v3, p1, LN/L;->g:LN/M;

    iget-boolean v3, v3, LN/M;->f:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v3, v1, LN/L;->e:Z

    if-eqz v3, :cond_2

    instance-of v3, p2, LV/e;

    if-nez v3, :cond_1

    instance-of v3, p2, LT/b;

    if-nez v3, :cond_1

    iget-wide v3, p2, LN/a;->q:J

    invoke-virtual {v1}, LN/L;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    iget-object p1, p1, LN/L;->m:LN/L;

    :goto_0
    if-eqz p1, :cond_4

    iget-object v1, p1, LN/L;->c:[LU/a0;

    aget-object v1, v1, v2

    iget-object v3, p2, LN/a;->m:LU/a0;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, LN/L;->m:LN/L;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, LN/f0;->a:LN/a;

    invoke-static {v0}, LN/f0;->k(LN/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LN/a;->m()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, LN/f0;->c:LN/a;

    if-eqz v1, :cond_1

    iget v2, v1, LN/a;->l:I

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LN/a;->m()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, LN/f0;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final h(LN/L;)Z
    .locals 5

    iget v0, p0, LN/f0;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object v0

    iget-object v1, p0, LN/f0;->a:LN/a;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, LN/f0;->d:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object p1

    iget-object v1, p0, LN/f0;->c:LN/a;

    if-ne p1, v1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v3
.end method

.method public final i(LN/L;)Z
    .locals 0

    invoke-virtual {p0, p1}, LN/f0;->d(LN/L;)LN/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, LN/f0;->d:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN/f0;->c:LN/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LN/a;->l:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, LN/f0;->a:LN/a;

    invoke-static {v0}, LN/f0;->k(LN/a;)Z

    move-result v0

    return v0
.end method

.method public final l(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LN/f0;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, LN/f0;->a:LN/a;

    iget v2, p1, LN/a;->l:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p1, LN/a;->g:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    invoke-virtual {p1}, LN/a;->t()V

    iput-boolean v1, p0, LN/f0;->e:Z

    return-void

    :cond_1
    iget-boolean p1, p0, LN/f0;->f:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, LN/f0;->c:LN/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, LN/a;->l:I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p1, LN/a;->g:LN0/O;

    invoke-virtual {v0}, LN0/O;->I()V

    invoke-virtual {p1}, LN/a;->t()V

    iput-boolean v1, p0, LN/f0;->f:Z

    :cond_3
    return-void
.end method

.method public final m(LN/a;LN/L;LW/t;LN/h;)I
    .locals 11

    move-object v2, p3

    iget-object v3, p2, LN/L;->c:[LU/a0;

    const/4 v4, 0x1

    if-eqz p1, :cond_c

    iget v5, p1, LN/a;->l:I

    if-eqz v5, :cond_c

    iget-object v5, p0, LN/f0;->a:LN/a;

    if-ne p1, v5, :cond_1

    iget v6, p0, LN/f0;->d:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v6, p0, LN/f0;->c:LN/a;

    const/4 v8, 0x3

    if-ne p1, v6, :cond_3

    iget v6, p0, LN/f0;->d:I

    if-eq v6, v8, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    :cond_2
    return v4

    :cond_3
    iget-object v6, p1, LN/a;->m:LU/a0;

    iget v7, p0, LN/f0;->b:I

    aget-object v9, v3, v7

    const/4 v10, 0x0

    if-eq v6, v9, :cond_4

    move v6, v4

    goto :goto_0

    :cond_4
    move v6, v10

    :goto_0
    invoke-virtual {p3, v7}, LW/t;->b(I)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v6, p1, LN/a;->r:Z

    if-nez v6, :cond_8

    iget-object v2, v2, LW/t;->c:[LW/q;

    aget-object v2, v2, v7

    if-eqz v2, :cond_6

    invoke-interface {v2}, LW/q;->length()I

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v10

    :goto_1
    new-array v5, v4, [LG/x;

    :goto_2
    if-ge v10, v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v10}, LW/q;->b(I)LG/x;

    move-result-object v6

    aput-object v6, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    aget-object v2, v3, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, LN/L;->e()J

    move-result-wide v3

    move-object v7, v5

    iget-wide v5, p2, LN/L;->p:J

    iget-object v1, p2, LN/L;->g:LN/M;

    iget-object v1, v1, LN/M;->a:LU/A;

    move-object v0, v7

    move-object v7, v1

    move-object v1, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, LN/a;->A([LG/x;LU/a0;JJLU/A;)V

    return v8

    :cond_8
    invoke-virtual {p1}, LN/a;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, p4

    invoke-virtual {p0, p1, p4}, LN/f0;->a(LN/a;LN/h;)V

    if-eqz v9, :cond_9

    invoke-virtual {p0}, LN/f0;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    if-ne p1, v5, :cond_a

    move v10, v4

    :cond_a
    invoke-virtual {p0, v10}, LN/f0;->l(Z)V

    return v4

    :cond_b
    return v10

    :cond_c
    :goto_3
    return v4
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, LN/f0;->a:LN/a;

    invoke-static {v0}, LN/f0;->k(LN/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LN/f0;->l(Z)V

    :cond_0
    iget-object v0, p0, LN/f0;->c:LN/a;

    if-eqz v0, :cond_2

    iget v0, v0, LN/a;->l:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LN/f0;->l(Z)V

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 7

    iget-object v0, p0, LN/f0;->a:LN/a;

    iget v1, v0, LN/a;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget v5, p0, LN/f0;->d:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    if-ne v1, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, LF1/i;->o(Z)V

    iput v2, v0, LN/a;->l:I

    invoke-virtual {v0}, LN/a;->u()V

    return-void

    :cond_1
    iget-object v0, p0, LN/f0;->c:LN/a;

    if-eqz v0, :cond_3

    iget v1, v0, LN/a;->l:I

    if-ne v1, v4, :cond_3

    iget v5, p0, LN/f0;->d:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    if-ne v1, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3}, LF1/i;->o(Z)V

    iput v2, v0, LN/a;->l:I

    invoke-virtual {v0}, LN/a;->u()V

    :cond_3
    return-void
.end method
