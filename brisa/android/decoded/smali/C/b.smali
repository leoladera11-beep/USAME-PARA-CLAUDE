.class public abstract LC/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/g0;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LC/b;->a:Ljava/lang/Object;

    return-void

    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, LG/p0;

    invoke-direct {p1}, LG/p0;-><init>()V

    iput-object p1, p0, LC/b;->a:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    const v0, 0x7fffffff

    move-object v1, p0

    check-cast v1, LN/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, LN/x;->A0(II)V

    return-void
.end method

.method public C()V
    .locals 8

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LN/x;->V()I

    move-result v2

    invoke-virtual {v0}, LN/x;->D1()V

    iget v6, v0, LN/x;->H:I

    if-ne v6, v4, :cond_1

    move v6, v3

    :cond_1
    invoke-virtual {v0}, LN/x;->D1()V

    iget-boolean v7, v0, LN/x;->I:Z

    invoke-virtual {v1, v2, v6, v7}, LG/q0;->e(IIZ)I

    move-result v1

    :goto_0
    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, LC/b;->a1()V

    return-void

    :cond_2
    invoke-virtual {v0}, LN/x;->V()I

    move-result v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    invoke-virtual {p0, v5, v6, v0, v4}, LC/b;->b1(JIZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v5, v6, v1, v3}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public C0()V
    .locals 10

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, LN/x;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LC/b;->Y0()Z

    move-result v1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_5

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v5, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LN/x;->V()I

    move-result v5

    invoke-virtual {v0}, LN/x;->D1()V

    iget v8, v0, LN/x;->H:I

    if-ne v8, v6, :cond_2

    move v8, v2

    :cond_2
    invoke-virtual {v0}, LN/x;->D1()V

    iget-boolean v9, v0, LN/x;->I:Z

    invoke-virtual {v1, v5, v8, v9}, LG/q0;->e(IIZ)I

    move-result v1

    :goto_0
    if-ne v1, v7, :cond_3

    invoke-virtual {p0}, LC/b;->a1()V

    return-void

    :cond_3
    invoke-virtual {v0}, LN/x;->V()I

    move-result v5

    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0, v6}, LC/b;->b1(JIZ)V

    return-void

    :cond_4
    invoke-virtual {p0, v3, v4, v1, v2}, LC/b;->b1(JIZ)V

    return-void

    :cond_5
    invoke-virtual {p0}, LC/b;->V0()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, LC/b;->T0()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0, v2}, LC/b;->b1(JIZ)V

    return-void

    :cond_6
    invoke-virtual {p0}, LC/b;->a1()V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {p0}, LC/b;->a1()V

    return-void
.end method

.method public E0()V
    .locals 3

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->D1()V

    iget-wide v0, v0, LN/x;->n0:J

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0, v1}, LC/b;->c1(IJ)V

    return-void
.end method

.method public F()I
    .locals 8

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LC/b;->S0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->y()J

    move-result-wide v2

    invoke-virtual {v0}, LN/x;->getDuration()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/16 v6, 0x64

    if-nez v0, :cond_2

    return v6

    :cond_2
    invoke-static {v2, v3, v4, v5}, LJ/W;->J(JJ)I

    move-result v0

    invoke-static {v0, v1, v6}, LJ/W;->g(III)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public G0(LG/P;)V
    .locals 1

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0, p1}, LN/x;->L0(Ljava/util/List;)V

    return-void
.end method

.method public H0()V
    .locals 3

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->D1()V

    iget-wide v0, v0, LN/x;->m0:J

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0, v1}, LC/b;->c1(IJ)V

    return-void
.end method

.method public I()Z
    .locals 3

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LN/x;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LN/x;->l0()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()J
    .locals 5

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-wide v0, v0, LG/p0;->l:J

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public M0()V
    .locals 6

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, LN/x;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LC/b;->Z0()Z

    move-result v1

    invoke-virtual {p0}, LC/b;->V0()Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_2

    invoke-virtual {p0}, LC/b;->Q0()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, LC/b;->d1(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, LC/b;->a1()V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, LN/x;->O0()J

    move-result-wide v1

    invoke-virtual {v0}, LN/x;->D1()V

    iget-wide v4, v0, LN/x;->o0:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_3

    invoke-virtual {p0, v3}, LC/b;->d1(I)V

    return-void

    :cond_3
    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, LC/b;->b1(JIZ)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, LC/b;->a1()V

    return-void
.end method

.method public N0(LG/P;)V
    .locals 1

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0, p1}, LN/x;->L0(Ljava/util/List;)V

    return-void
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LC/b;->d1(I)V

    return-void
.end method

.method public Q()V
    .locals 2

    const/4 v0, 0x1

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, v0}, LN/x;->l(Z)V

    return-void
.end method

.method public Q0()Z
    .locals 5

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v0, v0, LG/p0;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public R0()LG/P;
    .locals 5

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-object v0, v0, LG/p0;->c:LG/P;

    return-object v0
.end method

.method public S()V
    .locals 4

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public S0(I)Z
    .locals 1

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->D1()V

    iget-object v0, v0, LN/x;->Q:LG/c0;

    invoke-virtual {v0, p1}, LG/c0;->a(I)Z

    move-result p1

    return p1
.end method

.method public T0()Z
    .locals 5

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v0, v0, LG/p0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V0()Z
    .locals 5

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    iget-object v2, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v2, LG/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    invoke-virtual {v0}, LG/p0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract W0()LC1/d;
.end method

.method public X0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Y0()Z
    .locals 7

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LN/x;->V()I

    move-result v2

    invoke-virtual {v0}, LN/x;->D1()V

    iget v6, v0, LN/x;->H:I

    if-ne v6, v4, :cond_1

    move v6, v3

    :cond_1
    invoke-virtual {v0}, LN/x;->D1()V

    iget-boolean v0, v0, LN/x;->I:Z

    invoke-virtual {v1, v2, v6, v0}, LG/q0;->e(IIZ)I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method public Z(LG/P;J)V
    .locals 2

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, p1, v0, p2, p3}, LN/x;->i(Ljava/util/List;IJ)V

    return-void
.end method

.method public Z0()Z
    .locals 7

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->p0()LG/q0;

    move-result-object v1

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LN/x;->V()I

    move-result v2

    invoke-virtual {v0}, LN/x;->D1()V

    iget v6, v0, LN/x;->H:I

    if-ne v6, v4, :cond_1

    move v6, v3

    :cond_1
    invoke-virtual {v0}, LN/x;->D1()V

    iget-boolean v0, v0, LN/x;->I:Z

    invoke-virtual {v1, v2, v6, v0}, LG/q0;->k(IIZ)I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method public abstract a(LB/A;)V
.end method

.method public a1()V
    .locals 1

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->D1()V

    return-void
.end method

.method public abstract b1(JIZ)V
.end method

.method public c1(IJ)V
    .locals 4

    move-object p1, p0

    check-cast p1, LN/x;

    invoke-virtual {p1}, LN/x;->O0()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1}, LN/x;->getDuration()J

    move-result-wide p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p2, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1}, LN/x;->V()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public d1(I)V
    .locals 7

    move-object p1, p0

    check-cast p1, LN/x;

    invoke-virtual {p1}, LN/x;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LN/x;->V()I

    move-result v1

    invoke-virtual {p1}, LN/x;->D1()V

    iget v5, p1, LN/x;->H:I

    if-ne v5, v3, :cond_1

    move v5, v2

    :cond_1
    invoke-virtual {p1}, LN/x;->D1()V

    iget-boolean v6, p1, LN/x;->I:Z

    invoke-virtual {v0, v1, v5, v6}, LG/q0;->k(IIZ)I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, LC/b;->a1()V

    return-void

    :cond_2
    invoke-virtual {p1}, LN/x;->V()I

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, LN/x;->V()I

    move-result p1

    invoke-virtual {p0, v4, v5, p1, v3}, LC/b;->b1(JIZ)V

    return-void

    :cond_3
    invoke-virtual {p0, v4, v5, v0, v2}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public h(F)V
    .locals 3

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->g()LG/a0;

    move-result-object v1

    new-instance v2, LG/a0;

    iget v1, v1, LG/a0;->b:F

    invoke-direct {v2, p1, v1}, LG/a0;-><init>(FF)V

    invoke-virtual {v0, v2}, LN/x;->d(LG/a0;)V

    return-void
.end method

.method public h0()V
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, v0}, LN/x;->l(Z)V

    return-void
.end method

.method public j0(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, p1, v0, p2}, LN/x;->k0(III)V

    :cond_0
    return-void
.end method

.method public m0(Ljava/util/List;)V
    .locals 2

    const v0, 0x7fffffff

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, v0, p1}, LN/x;->v(ILjava/util/List;)V

    return-void
.end method

.method public n(I)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public abstract p()LC1/d;
.end method

.method public q()J
    .locals 8

    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LG/p0;

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1}, LN/x;->p0()LG/q0;

    move-result-object v2

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LN/x;->V()I

    move-result v3

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v0, v6, v7}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v2

    iget-wide v2, v2, LG/p0;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    return-wide v4

    :cond_1
    iget-wide v2, v0, LG/p0;->f:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_1
    iget-wide v4, v0, LG/p0;->e:J

    sub-long/2addr v2, v4

    invoke-virtual {v1}, LN/x;->r()J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public s0(I)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, p1, v0}, LN/x;->A0(II)V

    return-void
.end method

.method public t(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, LC/b;->b1(JIZ)V

    return-void
.end method

.method public u0(ILG/P;)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    move-object v1, p0

    check-cast v1, LN/x;

    invoke-virtual {v1, p1, p2, v0}, LN/x;->q0(ILjava/util/List;I)V

    return-void
.end method

.method public y0(J)V
    .locals 2

    move-object v0, p0

    check-cast v0, LN/x;

    invoke-virtual {v0}, LN/x;->V()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, LC/b;->b1(JIZ)V

    return-void
.end method
