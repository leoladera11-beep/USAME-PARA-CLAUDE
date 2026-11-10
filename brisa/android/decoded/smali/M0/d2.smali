.class public final LM0/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/g0;


# instance fields
.field public final a:LG/g0;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(LG/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    iput-object p1, p0, LM0/d2;->a:LG/g0;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->A()V

    return-void
.end method

.method public final A0(II)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->A0(II)V

    return-void
.end method

.method public final B(Z)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->B(Z)V

    return-void
.end method

.method public final B0(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->B0(I)V

    return-void
.end method

.method public final C()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->C()V

    return-void
.end method

.method public final C0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->C0()V

    return-void
.end method

.method public final D(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->D(I)V

    return-void
.end method

.method public final D0(LG/e;Z)V
    .locals 1

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->D0(LG/e;Z)V

    return-void
.end method

.method public final E()LG/y0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->E()LG/y0;

    move-result-object v0

    return-object v0
.end method

.method public final E0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->E0()V

    return-void
.end method

.method public final F()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->F()I

    move-result v0

    return v0
.end method

.method public final F0(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->F0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final G()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public final G0(LG/P;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->G0(LG/P;)V

    return-void
.end method

.method public final H()LG/T;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->H()LG/T;

    move-result-object v0

    return-object v0
.end method

.method public final H0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->H0()V

    return-void
.end method

.method public final I()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->I()Z

    move-result v0

    return v0
.end method

.method public final I0(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->I0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final J()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J0(F)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->J0(F)V

    return-void
.end method

.method public final K()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->K()I

    move-result v0

    return v0
.end method

.method public final K0()LG/T;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->K0()LG/T;

    move-result-object v0

    return-object v0
.end method

.method public final L()LI/c;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->L()LI/c;

    move-result-object v0

    return-object v0
.end method

.method public final L0(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->L0(Ljava/util/List;)V

    return-void
.end method

.method public final M(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->M(Landroid/view/TextureView;)V

    return-void
.end method

.method public final M0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->M0()V

    return-void
.end method

.method public final N()LG/C0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->N()LG/C0;

    move-result-object v0

    return-object v0
.end method

.method public final N0(LG/P;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->N0(LG/P;)V

    return-void
.end method

.method public final O(LG/e0;)V
    .locals 3

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/y;

    if-nez v1, :cond_0

    new-instance v1, LG/y;

    invoke-direct {v1, p0, p1}, LG/y;-><init>(LM0/d2;LG/e0;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v2, v1}, LG/g0;->O(LG/e0;)V

    iget-object v2, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final O0()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->P()V

    return-void
.end method

.method public final P0()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->P0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Q()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->Q()V

    return-void
.end method

.method public final Q0()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->Q0()Z

    move-result v0

    return v0
.end method

.method public final R()F
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->R()F

    move-result v0

    return v0
.end method

.method public final R0()LG/P;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->R0()LG/P;

    move-result-object v0

    return-object v0
.end method

.method public final S()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->S()V

    return-void
.end method

.method public final S0(I)Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->S0(I)Z

    move-result p1

    return p1
.end method

.method public final T()LG/e;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->T()LG/e;

    move-result-object v0

    return-object v0
.end method

.method public final T0()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->T0()Z

    move-result v0

    return v0
.end method

.method public final U()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->U()I

    move-result v0

    return v0
.end method

.method public final U0()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final V()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->V()I

    move-result v0

    return v0
.end method

.method public final V0()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->V0()Z

    move-result v0

    return v0
.end method

.method public final W(IZ)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->W(IZ)V

    return-void
.end method

.method public final W0()LG/P;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LM0/d2;->R0()LG/P;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final X(LG/T;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->X(LG/T;)V

    return-void
.end method

.method public final X0()LG/q0;
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LM0/d2;->p0()LG/q0;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LM0/d2;->W0()LG/P;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, LM0/c2;

    invoke-direct {v0, p0}, LM0/c2;-><init>(LM0/d2;)V

    return-object v0

    :cond_1
    sget-object v0, LG/q0;->a:LG/m0;

    return-object v0
.end method

.method public final Y()LG/p;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->Y()LG/p;

    move-result-object v0

    return-object v0
.end method

.method public final Y0()LG/T;
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LM0/d2;->K0()LG/T;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, LG/T;->M:LG/T;

    return-object v0
.end method

.method public final Z(LG/P;J)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2, p3}, LG/g0;->Z(LG/P;J)V

    return-void
.end method

.method public final Z0()Z
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, LM0/d2;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LM0/d2;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()LG/f0;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LM0/d2;->S0(I)Z

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, LM0/d2;->S0(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LM0/d2;->V()I

    move-result v4

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    const/4 v4, 0x1

    if-ltz v7, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-static {v5}, LF1/i;->o(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LM0/d2;->K()I

    move-result v5

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v3

    :goto_2
    if-ltz v10, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-static {v5}, LF1/i;->o(Z)V

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LM0/d2;->p0()LG/q0;

    move-result-object v2

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v8

    if-ge v7, v8, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    invoke-static {v8}, LF1/i;->o(Z)V

    new-instance v8, LG/p0;

    invoke-direct {v8}, LG/p0;-><init>()V

    invoke-virtual {v2, v7, v8, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v2

    iget v8, v2, LG/p0;->m:I

    iget v2, v2, LG/p0;->n:I

    invoke-static {v10, v8, v2}, LJ/W;->g(III)I

    move-result v2

    if-ne v10, v2, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, LF1/i;->o(Z)V

    :cond_6
    move-wide v2, v5

    new-instance v5, LG/f0;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, LM0/d2;->R0()LG/P;

    move-result-object v4

    :goto_5
    move-object v8, v4

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v0}, LM0/d2;->O0()J

    move-result-wide v11

    goto :goto_7

    :cond_8
    move-wide v11, v2

    :goto_7
    if-eqz v1, :cond_9

    invoke-virtual {v0}, LM0/d2;->r()J

    move-result-wide v2

    :cond_9
    move-wide v13, v2

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, LM0/d2;->U()I

    move-result v3

    move v15, v3

    goto :goto_8

    :cond_a
    move v15, v2

    :goto_8
    if-eqz v1, :cond_b

    invoke-virtual {v0}, LM0/d2;->f0()I

    move-result v2

    :cond_b
    move/from16 v16, v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v16}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    return-object v5
.end method

.method public final a0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->a0()V

    return-void
.end method

.method public final a1()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v1}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->b()Z

    move-result v0

    return v0
.end method

.method public final b0(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->b0(I)V

    return-void
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->c()I

    move-result v0

    return v0
.end method

.method public final c0(II)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->c0(II)V

    return-void
.end method

.method public final d(LG/a0;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->d(LG/a0;)V

    return-void
.end method

.method public final d0(Z)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->d0(Z)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->e()V

    return-void
.end method

.method public final e0(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->e0(I)V

    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->f()I

    move-result v0

    return v0
.end method

.method public final f0()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->f0()I

    move-result v0

    return v0
.end method

.method public final g()LG/a0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->g()LG/a0;

    move-result-object v0

    return-object v0
.end method

.method public final g0(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->g0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(F)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->h(F)V

    return-void
.end method

.method public final h0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->h0()V

    return-void
.end method

.method public final i(Ljava/util/List;IJ)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2, p3, p4}, LG/g0;->i(Ljava/util/List;IJ)V

    return-void
.end method

.method public final i0(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->i0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final j()LG/Z;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->j()LG/Z;

    move-result-object v0

    return-object v0
.end method

.method public final j0(II)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->j0(II)V

    return-void
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->k()I

    move-result v0

    return v0
.end method

.method public final k0(III)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2, p3}, LG/g0;->k0(III)V

    return-void
.end method

.method public final l(Z)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->l(Z)V

    return-void
.end method

.method public final l0()I
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->l0()I

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->m()Z

    move-result v0

    return v0
.end method

.method public final m0(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->m0(Ljava/util/List;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->n(I)V

    return-void
.end method

.method public final n0(LG/w0;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->n0(LG/w0;)V

    return-void
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o0(LG/e0;)V
    .locals 3

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LM0/d2;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/e0;

    iget-object v2, p0, LM0/d2;->a:LG/g0;

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-interface {v2, p1}, LG/g0;->o0(LG/e0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p()LM0/l2;
    .locals 24

    const/16 v0, 0x10

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, LM0/d2;->S0(I)Z

    move-result v0

    new-instance v2, LM0/l2;

    invoke-virtual {v1}, LM0/d2;->a()LG/f0;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LM0/d2;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    invoke-virtual {v1}, LM0/d2;->getDuration()J

    move-result-wide v10

    goto :goto_1

    :cond_1
    move-wide v10, v8

    :goto_1
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, LM0/d2;->y()J

    move-result-wide v14

    goto :goto_2

    :cond_2
    move-wide v14, v12

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, LM0/d2;->F()I

    move-result v4

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, LM0/d2;->s()J

    move-result-wide v16

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v12

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v1}, LM0/d2;->q()J

    move-result-wide v18

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v8

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v1}, LM0/d2;->J()J

    move-result-wide v8

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v1}, LM0/d2;->z0()J

    move-result-wide v12

    :cond_7
    move-wide/from16 v20, v10

    move v11, v4

    move v4, v5

    move-wide v5, v6

    move-wide/from16 v22, v16

    move-wide/from16 v16, v8

    move-wide/from16 v7, v20

    move-wide v9, v14

    move-wide/from16 v14, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v22

    invoke-direct/range {v2 .. v19}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    return-object v2
.end method

.method public final p0()LG/q0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->p0()LG/q0;

    move-result-object v0

    return-object v0
.end method

.method public final q()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q0(ILjava/util/List;I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2, p3}, LG/g0;->q0(ILjava/util/List;I)V

    return-void
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r0()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->r0()Z

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s0(I)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->s0(I)V

    return-void
.end method

.method public final t(IJ)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2, p3}, LG/g0;->t(IJ)V

    return-void
.end method

.method public final t0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->t0()V

    return-void
.end method

.method public final u()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->u()V

    return-void
.end method

.method public final u0(ILG/P;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->u0(ILG/P;)V

    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->v(ILjava/util/List;)V

    return-void
.end method

.method public final v0()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->v0()V

    return-void
.end method

.method public final w()LG/c0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->w()LG/c0;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->w0()Z

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->x()V

    return-void
.end method

.method public final x0()LG/w0;
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->x0()LG/w0;

    move-result-object v0

    return-object v0
.end method

.method public final y()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y0(J)V
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0, p1, p2}, LG/g0;->y0(J)V

    return-void
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->z()Z

    move-result v0

    return v0
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, LM0/d2;->a1()V

    iget-object v0, p0, LM0/d2;->a:LG/g0;

    invoke-interface {v0}, LG/g0;->z0()J

    move-result-wide v0

    return-wide v0
.end method
