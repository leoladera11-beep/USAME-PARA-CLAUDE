.class public final synthetic LM0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LJ/q;
.implements LM0/x0;
.implements Lz1/r;
.implements LJ/k;
.implements LM0/T1;
.implements LJ/r;
.implements LJ/P;
.implements LS/v;
.implements Lb0/q;
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LM0/K;->e:I

    iput-object p1, p0, LM0/K;->f:Ljava/lang/Object;

    iput-object p2, p0, LM0/K;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 5

    iget v0, p0, LM0/K;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/w0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v1}, LG/w0;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1}, LM0/q;->E0(LM0/o;ILandroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2, v1}, LM0/q;->y0(LM0/o;ILandroid/view/Surface;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/a0;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, LG/a0;->e:Ljava/lang/String;

    iget v4, v1, LG/a0;->a:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v3, LG/a0;->f:Ljava/lang/String;

    iget v1, v1, LG/a0;->b:F

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-interface {p1, v0, p2, v2}, LM0/q;->i(LM0/o;ILandroid/os/Bundle;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/T;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    invoke-virtual {v1, v0}, LG/T;->c(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v2, p2, v0}, LM0/q;->p0(LM0/o;ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, LM0/K;->e:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, Ly0/h;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Ly0/a;

    new-instance v2, Ly0/g;

    iget-wide v3, p1, Ly0/a;->b:J

    iget-object v5, p1, Ly0/a;->a:Lu1/P;

    iget-wide v6, p1, Ly0/a;->c:J

    invoke-static {v5, v6, v7}, Ld1/m;->k(Lu1/P;J)[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ly0/g;-><init>(J[B)V

    iget-object v3, v0, Ly0/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, p1, Ly0/a;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-nez p1, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_0
    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    iget-wide v7, v0, Ly0/h;->l:J

    cmp-long p1, v7, v5

    if-eqz p1, :cond_2

    cmp-long p1, v3, v7

    if-ltz p1, :cond_3

    :cond_2
    invoke-virtual {v0, v2}, Ly0/h;->g(Ly0/g;)V

    :cond_3
    return-void

    :sswitch_0
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LC1/e;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LU/w;

    check-cast p1, LU/G;

    iget v2, v0, LC1/e;->f:I

    iget-object v0, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, LU/A;

    invoke-interface {p1, v2, v0, v1}, LU/G;->R(ILU/A;LU/w;)V

    return-void

    :sswitch_1
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    check-cast p1, LM0/d2;

    iget-object p1, v0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/X0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, LM0/X0;->i(LM0/N0;Z)V

    :cond_5
    :goto_1
    return-void

    :sswitch_2
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    check-cast p1, LM0/d2;

    iget-object v2, v0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/X0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LM0/d2;->I0(Landroid/view/SurfaceHolder;)V

    iput-object v1, v0, LM0/W1;->l:LM0/U1;

    goto :goto_2

    :cond_6
    new-instance v2, LM0/U1;

    invoke-direct {v2, v1}, LM0/U1;-><init>(Landroid/view/Surface;)V

    iput-object v2, v0, LM0/W1;->l:LM0/U1;

    invoke-virtual {p1, v2}, LM0/d2;->I0(Landroid/view/SurfaceHolder;)V

    :goto_2
    return-void

    :sswitch_3
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/w0;

    check-cast p1, LM0/d2;

    iget-object v2, v1, LG/w0;->H:Lu1/T;

    invoke-virtual {v2}, Lu1/T;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, LG/w0;->a()LG/v0;

    move-result-object v1

    invoke-virtual {v1}, LG/v0;->c()LG/v0;

    move-result-object v1

    invoke-virtual {v2}, Lu1/T;->e()Lu1/K;

    move-result-object v2

    invoke-virtual {v2}, Lu1/K;->h()Lu1/R0;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/s0;

    iget-object v4, v3, LG/s0;->a:LG/r0;

    iget-object v5, v0, LM0/W1;->d:Lu1/B0;

    iget-object v5, v5, Lu1/B0;->l:Lu1/B0;

    iget-object v4, v4, LG/r0;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lu1/B0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/r0;

    if-eqz v4, :cond_8

    iget-object v5, v3, LG/s0;->a:LG/r0;

    iget v5, v5, LG/r0;->a:I

    iget v6, v4, LG/r0;->a:I

    if-ne v5, v6, :cond_8

    new-instance v5, LG/s0;

    iget-object v3, v3, LG/s0;->b:Lu1/P;

    invoke-direct {v5, v4, v3}, LG/s0;-><init>(LG/r0;Ljava/util/List;)V

    invoke-virtual {v1, v5}, LG/v0;->a(LG/s0;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v3}, LG/v0;->a(LG/s0;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, LG/v0;->b()LG/w0;

    move-result-object v1

    :goto_4
    invoke-virtual {p1, v1}, LM0/d2;->n0(LG/w0;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Lz1/B;
    .locals 2

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/X0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    check-cast p1, LM0/L0;

    invoke-virtual {v0, v1, p1}, LM0/X0;->w(LM0/N0;LM0/L0;)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public b(LM0/l0;)V
    .locals 13

    iget v0, p0, LM0/K;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LM0/j2;

    iget-object v0, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v0, LG/c0;

    iget-object v7, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p1, LM0/l0;->x:LG/c0;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, LM0/l0;->w:LM0/j2;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v1, :cond_1

    if-eqz v8, :cond_1

    goto/16 :goto_6

    :cond_1
    iput-object v4, p1, LM0/l0;->w:LM0/j2;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_2

    iput-object v0, p1, LM0/l0;->x:LG/c0;

    iget-object v1, p1, LM0/l0;->z:LG/c0;

    iget-object v2, p1, LM0/l0;->y:LG/c0;

    invoke-virtual {p1, v0, v2}, LM0/l0;->Y0(LG/c0;LG/c0;)LG/c0;

    move-result-object v0

    iput-object v0, p1, LM0/l0;->z:LG/c0;

    invoke-virtual {v0, v1}, LG/c0;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v9

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    if-eqz v8, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v10

    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v11, p1, LM0/l0;->u:Lu1/C0;

    iget-object v12, p1, LM0/l0;->v:Lu1/C0;

    iget-object v1, p1, LM0/l0;->t:Lu1/P;

    iget-object v2, p1, LM0/l0;->s:Lu1/P;

    iget-object v3, p1, LM0/l0;->z:LG/c0;

    iget-object v5, p1, LM0/l0;->J:Landroid/os/Bundle;

    invoke-static {v1, v2, v4, v3, v5}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v1

    iput-object v1, p1, LM0/l0;->u:Lu1/C0;

    iget-object v2, p1, LM0/l0;->s:Lu1/P;

    iget-object v3, p1, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v5, p1, LM0/l0;->z:LG/c0;

    invoke-virtual {p1}, LM0/l0;->i1()I

    move-result v6

    invoke-static/range {v1 .. v6}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v1

    iput-object v1, p1, LM0/l0;->v:Lu1/C0;

    iget-object v1, p1, LM0/l0;->u:Lu1/C0;

    invoke-virtual {v1, v11}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v9

    iget-object v2, p1, LM0/l0;->v:Lu1/C0;

    invoke-virtual {v2, v12}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v9

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p1, LM0/l0;->i:LJ/t;

    new-instance v3, LM0/C;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, LM0/C;-><init>(LM0/l0;I)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v3}, LJ/t;->f(ILJ/q;)V

    :cond_5
    if-nez v8, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, v7, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_6

    move p1, v9

    goto :goto_3

    :cond_6
    move p1, v10

    :goto_3
    invoke-static {p1}, LF1/i;->o(Z)V

    iget-object p1, v7, LM0/z;->d:LM0/x;

    invoke-interface {p1}, LM0/x;->A()V

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, v7, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move p1, v9

    goto :goto_4

    :cond_8
    move p1, v10

    :goto_4
    invoke-static {p1}, LF1/i;->o(Z)V

    iget-object p1, v7, LM0/z;->d:LM0/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, v7, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_a

    goto :goto_5

    :cond_a
    move v9, v10

    :goto_5
    invoke-static {v9}, LF1/i;->o(Z)V

    iget-object p1, v7, LM0/z;->d:LM0/x;

    invoke-interface {p1}, LM0/x;->s()V

    :cond_b
    :goto_6
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LM0/Z1;

    invoke-virtual {p1, v0, v1}, LM0/l0;->q1(LM0/b2;LM0/Z1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;LG/u;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, LM0/K;->f:Ljava/lang/Object;

    check-cast v2, LO/d;

    iget-object v3, v1, LM0/K;->g:Ljava/lang/Object;

    check-cast v3, LG/g0;

    move-object/from16 v4, p1

    check-cast v4, LO/i;

    iget-object v2, v2, LO/d;->i:Landroid/util/SparseArray;

    new-instance v5, Landroid/util/SparseArray;

    iget-object v6, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget-object v8, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v0, v7}, LG/u;->b(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LO/a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2f

    :cond_1
    move v2, v6

    :goto_1
    iget-object v7, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0xb

    if-ge v2, v7, :cond_d

    invoke-virtual {v0, v2}, LG/u;->b(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LO/a;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_6

    iget-object v11, v4, LO/i;->c:LO/f;

    monitor-enter v11

    :try_start_0
    iget-object v7, v11, LO/f;->d:LO/i;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v11, LO/f;->e:LG/q0;

    iget-object v8, v10, LO/a;->b:LG/q0;

    iput-object v8, v11, LO/f;->e:LG/q0;

    iget-object v8, v11, LO/f;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LO/e;

    iget-object v12, v11, LO/f;->e:LG/q0;

    invoke-virtual {v9, v7, v12}, LO/e;->b(LG/q0;LG/q0;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9, v10}, LO/e;->a(LO/a;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    iget-object v12, v9, LO/e;->a:Ljava/lang/String;

    iget-object v13, v11, LO/f;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v11, v9}, LO/f;->a(LO/e;)V

    :cond_4
    iget-boolean v12, v9, LO/e;->e:Z

    if-eqz v12, :cond_2

    iget-object v12, v11, LO/f;->d:LO/i;

    iget-object v9, v9, LO/e;->a:Ljava/lang/String;

    invoke-virtual {v12, v10, v9}, LO/i;->d(LO/a;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v11, v10}, LO/f;->d(LO/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    goto :goto_9

    :goto_4
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-ne v7, v9, :cond_c

    iget-object v7, v4, LO/i;->c:LO/f;

    iget v9, v4, LO/i;->l:I

    monitor-enter v7

    :try_start_2
    iget-object v11, v7, LO/f;->d:LO/i;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    move v8, v6

    :goto_5
    iget-object v9, v7, LO/f;->c:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LO/e;

    invoke-virtual {v11, v10}, LO/e;->a(LO/a;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    iget-object v12, v11, LO/e;->a:Ljava/lang/String;

    iget-object v13, v7, LO/f;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v7, v11}, LO/f;->a(LO/e;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_9
    :goto_7
    iget-boolean v13, v11, LO/e;->e:Z

    if-eqz v13, :cond_8

    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    iget-boolean v12, v11, LO/e;->f:Z

    :cond_a
    iget-object v12, v7, LO/f;->d:LO/i;

    iget-object v11, v11, LO/e;->a:Ljava/lang/String;

    invoke-virtual {v12, v10, v11}, LO/i;->d(LO/a;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v10}, LO/f;->d(LO/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    goto :goto_9

    :goto_8
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_c
    iget-object v7, v4, LO/i;->c:LO/f;

    invoke-virtual {v7, v10}, LO/f;->e(LO/a;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v2, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_e

    iget-object v7, v2, LO/a;->b:LG/q0;

    iget-object v2, v2, LO/a;->d:LU/A;

    invoke-virtual {v4, v7, v2}, LO/i;->c(LG/q0;LU/A;)V

    :cond_e
    iget-object v2, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v4, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v2, :cond_16

    invoke-interface {v3}, LG/g0;->E()LG/y0;

    move-result-object v2

    iget-object v2, v2, LG/y0;->a:Lu1/P;

    invoke-virtual {v2, v6}, Lu1/P;->m(I)Lu1/N;

    move-result-object v2

    :goto_a
    invoke-virtual {v2}, Lu1/a;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v2}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LG/x0;

    move v9, v6

    :goto_b
    iget v12, v15, LG/x0;->a:I

    if-ge v9, v12, :cond_10

    iget-object v12, v15, LG/x0;->e:[Z

    aget-boolean v12, v12, v9

    if-eqz v12, :cond_f

    iget-object v12, v15, LG/x0;->b:LG/r0;

    iget-object v12, v12, LG/r0;->d:[LG/x;

    aget-object v12, v12, v9

    iget-object v12, v12, LG/x;->t:LG/s;

    if-eqz v12, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    const/16 v9, 0xb

    goto :goto_a

    :cond_11
    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_16

    iget-object v2, v4, LO/i;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget-object v9, LJ/W;->a:Ljava/lang/String;

    invoke-static {v2}, LJ/w;->l(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v2

    move v9, v6

    :goto_d
    iget v15, v12, LG/s;->h:I

    if-ge v9, v15, :cond_15

    iget-object v15, v12, LG/s;->e:[LG/r;

    aget-object v15, v15, v9

    iget-object v15, v15, LG/r;->f:Ljava/util/UUID;

    sget-object v7, LG/m;->e:Ljava/util/UUID;

    invoke-virtual {v15, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x3

    goto :goto_e

    :cond_12
    sget-object v7, LG/m;->f:Ljava/util/UUID;

    invoke-virtual {v15, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x2

    goto :goto_e

    :cond_13
    sget-object v7, LG/m;->d:Ljava/util/UUID;

    invoke-virtual {v15, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x6

    goto :goto_e

    :cond_14
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x2

    goto :goto_d

    :cond_15
    move v7, v8

    :goto_e
    invoke-static {v2, v7}, LJ/w;->n(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    :cond_16
    const/16 v2, 0x3f3

    iget-object v7, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v4, LO/i;->A:I

    add-int/2addr v2, v8

    iput v2, v4, LO/i;->A:I

    :cond_17
    iget-object v2, v4, LO/i;->o:LG/Z;

    const/4 v7, 0x4

    if-nez v2, :cond_18

    move v12, v8

    const/16 v9, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x9

    goto/16 :goto_1d

    :cond_18
    iget v13, v2, LG/Z;->e:I

    iget-object v14, v4, LO/i;->a:Landroid/content/Context;

    iget v12, v4, LO/i;->w:I

    if-ne v12, v7, :cond_19

    move v12, v8

    goto :goto_f

    :cond_19
    move v12, v6

    :goto_f
    const/16 v7, 0x3e9

    if-ne v13, v7, :cond_1a

    new-instance v7, LE0/e;

    const/16 v12, 0x14

    invoke-direct {v7, v12, v6}, LE0/e;-><init>(II)V

    :goto_10
    const/16 v9, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x9

    goto/16 :goto_1c

    :cond_1a
    instance-of v7, v2, LN/k;

    if-eqz v7, :cond_1c

    move-object v7, v2

    check-cast v7, LN/k;

    iget v6, v7, LN/k;->n:I

    if-ne v6, v8, :cond_1b

    move v6, v8

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    iget v7, v7, LN/k;->r:I

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Ljava/io/IOException;

    const/16 v20, 0x19

    const/16 v21, 0x1a

    const/16 v15, 0x17

    if-eqz v9, :cond_31

    instance-of v6, v8, LL/y;

    if-eqz v6, :cond_1d

    check-cast v8, LL/y;

    iget v6, v8, LL/y;->g:I

    new-instance v7, LE0/e;

    const/4 v9, 0x5

    invoke-direct {v7, v9, v6}, LE0/e;-><init>(II)V

    goto :goto_10

    :cond_1d
    const/4 v9, 0x5

    instance-of v6, v8, LL/x;

    if-nez v6, :cond_1e

    instance-of v6, v8, LG/X;

    if-eqz v6, :cond_1f

    :cond_1e
    const/16 v6, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/16 v15, 0x9

    const/16 v17, 0x7

    goto/16 :goto_19

    :cond_1f
    instance-of v6, v8, LL/w;

    if-nez v6, :cond_20

    instance-of v7, v8, LL/E;

    if-eqz v7, :cond_21

    :cond_20
    const/4 v13, 0x0

    const/16 v15, 0x9

    goto/16 :goto_15

    :cond_21
    const/16 v6, 0x3ea

    if-ne v13, v6, :cond_22

    new-instance v7, LE0/e;

    const/16 v6, 0x15

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, LE0/e;-><init>(II)V

    goto :goto_10

    :cond_22
    instance-of v6, v8, LQ/g;

    if-eqz v6, :cond_29

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v7, :cond_23

    check-cast v6, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v6}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LJ/W;->s(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, LJ/W;->r(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x1b

    goto :goto_13

    :pswitch_0
    move/from16 v7, v21

    goto :goto_13

    :pswitch_1
    move/from16 v7, v20

    goto :goto_13

    :pswitch_2
    const/16 v7, 0x1c

    goto :goto_13

    :pswitch_3
    const/16 v7, 0x18

    :goto_13
    new-instance v8, LE0/e;

    invoke-direct {v8, v7, v6}, LE0/e;-><init>(II)V

    move-object v7, v8

    goto/16 :goto_10

    :cond_23
    instance-of v7, v6, Landroid/media/MediaDrmResetException;

    if-eqz v7, :cond_24

    new-instance v7, LE0/e;

    const/4 v8, 0x0

    const/16 v12, 0x1b

    invoke-direct {v7, v12, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_24
    const/4 v8, 0x0

    instance-of v7, v6, Landroid/media/NotProvisionedException;

    if-eqz v7, :cond_25

    new-instance v7, LE0/e;

    const/16 v13, 0x18

    invoke-direct {v7, v13, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_25
    instance-of v7, v6, Landroid/media/DeniedByServerException;

    if-eqz v7, :cond_26

    new-instance v7, LE0/e;

    const/16 v6, 0x1d

    invoke-direct {v7, v6, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_26
    instance-of v7, v6, LQ/z;

    if-eqz v7, :cond_27

    new-instance v7, LE0/e;

    invoke-direct {v7, v15, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_27
    instance-of v6, v6, LQ/d;

    if-eqz v6, :cond_28

    new-instance v7, LE0/e;

    const/16 v14, 0x1c

    invoke-direct {v7, v14, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_28
    new-instance v7, LE0/e;

    const/16 v6, 0x1e

    invoke-direct {v7, v6, v8}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_29
    instance-of v6, v8, LL/t;

    if-eqz v6, :cond_2b

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_2b

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v7, v6, Landroid/system/ErrnoException;

    if-eqz v7, :cond_2a

    check-cast v6, Landroid/system/ErrnoException;

    iget v6, v6, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_2a

    new-instance v7, LE0/e;

    const/16 v6, 0x20

    const/4 v13, 0x0

    invoke-direct {v7, v6, v13}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_2a
    const/4 v13, 0x0

    new-instance v7, LE0/e;

    const/16 v6, 0x1f

    invoke-direct {v7, v6, v13}, LE0/e;-><init>(II)V

    goto/16 :goto_10

    :cond_2b
    const/4 v13, 0x0

    new-instance v7, LE0/e;

    const/16 v15, 0x9

    invoke-direct {v7, v15, v13}, LE0/e;-><init>(II)V

    :goto_14
    move/from16 v19, v15

    const/16 v9, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    goto/16 :goto_1c

    :goto_15
    invoke-static {v14}, LJ/A;->a(Landroid/content/Context;)LJ/A;

    move-result-object v7

    invoke-virtual {v7}, LJ/A;->b()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_2c

    new-instance v7, LE0/e;

    const/4 v6, 0x3

    invoke-direct {v7, v6, v13}, LE0/e;-><init>(II)V

    goto :goto_14

    :cond_2c
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v12, v7, Ljava/net/UnknownHostException;

    if-eqz v12, :cond_2d

    new-instance v7, LE0/e;

    const/4 v14, 0x6

    invoke-direct {v7, v14, v13}, LE0/e;-><init>(II)V

    move/from16 v18, v14

    move/from16 v19, v15

    const/16 v9, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x7

    goto/16 :goto_1c

    :cond_2d
    const/4 v14, 0x6

    instance-of v7, v7, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_2e

    new-instance v7, LE0/e;

    const/4 v12, 0x7

    invoke-direct {v7, v12, v13}, LE0/e;-><init>(II)V

    :goto_16
    move/from16 v17, v12

    move/from16 v18, v14

    move/from16 v19, v15

    const/16 v9, 0xd

    const/16 v16, 0x8

    goto/16 :goto_1c

    :cond_2e
    const/4 v12, 0x7

    if-eqz v6, :cond_2f

    check-cast v8, LL/w;

    iget v6, v8, LL/w;->f:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2f

    new-instance v7, LE0/e;

    const/4 v6, 0x4

    invoke-direct {v7, v6, v13}, LE0/e;-><init>(II)V

    goto :goto_16

    :cond_2f
    new-instance v7, LE0/e;

    const/16 v6, 0x8

    invoke-direct {v7, v6, v13}, LE0/e;-><init>(II)V

    move/from16 v16, v6

    move/from16 v17, v12

    :goto_17
    move/from16 v18, v14

    move/from16 v19, v15

    :goto_18
    const/16 v9, 0xd

    goto/16 :goto_1c

    :goto_19
    new-instance v7, LE0/e;

    if-eqz v12, :cond_30

    const/16 v8, 0xa

    goto :goto_1a

    :cond_30
    const/16 v8, 0xb

    :goto_1a
    invoke-direct {v7, v8, v13}, LE0/e;-><init>(II)V

    move/from16 v16, v6

    goto :goto_17

    :cond_31
    const/4 v9, 0x0

    const/16 v12, 0x1b

    const/16 v13, 0x18

    const/16 v14, 0x1c

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x9

    if-eqz v6, :cond_33

    if-eqz v7, :cond_32

    const/4 v12, 0x1

    if-ne v7, v12, :cond_33

    :cond_32
    new-instance v7, LE0/e;

    const/16 v6, 0x23

    invoke-direct {v7, v6, v9}, LE0/e;-><init>(II)V

    goto :goto_18

    :cond_33
    if-eqz v6, :cond_34

    const/4 v12, 0x3

    if-ne v7, v12, :cond_34

    new-instance v7, LE0/e;

    const/16 v6, 0xf

    invoke-direct {v7, v6, v9}, LE0/e;-><init>(II)V

    goto :goto_18

    :cond_34
    if-eqz v6, :cond_35

    const/4 v6, 0x2

    if-ne v7, v6, :cond_35

    new-instance v7, LE0/e;

    invoke-direct {v7, v15, v9}, LE0/e;-><init>(II)V

    goto :goto_18

    :cond_35
    instance-of v6, v8, LS/p;

    if-eqz v6, :cond_36

    check-cast v8, LS/p;

    iget-object v6, v8, LS/p;->h:Ljava/lang/String;

    invoke-static {v6}, LJ/W;->s(Ljava/lang/String;)I

    move-result v6

    new-instance v7, LE0/e;

    const/16 v9, 0xd

    invoke-direct {v7, v9, v6}, LE0/e;-><init>(II)V

    goto/16 :goto_1c

    :cond_36
    const/16 v9, 0xd

    instance-of v6, v8, LS/m;

    const/16 v7, 0xe

    if-eqz v6, :cond_37

    check-cast v8, LS/m;

    iget v6, v8, LS/m;->e:I

    new-instance v8, LE0/e;

    invoke-direct {v8, v7, v6}, LE0/e;-><init>(II)V

    move-object v7, v8

    goto :goto_1c

    :cond_37
    instance-of v6, v8, Ljava/lang/OutOfMemoryError;

    if-eqz v6, :cond_38

    new-instance v6, LE0/e;

    const/4 v12, 0x0

    invoke-direct {v6, v7, v12}, LE0/e;-><init>(II)V

    move-object v7, v6

    goto :goto_1c

    :cond_38
    const/4 v12, 0x0

    instance-of v6, v8, LP/w;

    if-eqz v6, :cond_39

    check-cast v8, LP/w;

    new-instance v7, LE0/e;

    const/16 v6, 0x11

    invoke-direct {v7, v6, v12}, LE0/e;-><init>(II)V

    goto :goto_1c

    :cond_39
    instance-of v6, v8, LP/y;

    if-eqz v6, :cond_3a

    check-cast v8, LP/y;

    iget v6, v8, LP/y;->e:I

    new-instance v7, LE0/e;

    const/16 v8, 0x12

    invoke-direct {v7, v8, v6}, LE0/e;-><init>(II)V

    goto :goto_1c

    :cond_3a
    instance-of v6, v8, Landroid/media/MediaCodec$CryptoException;

    if-eqz v6, :cond_3b

    check-cast v8, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v8}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, LJ/W;->r(I)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    const/16 v13, 0x1b

    goto :goto_1b

    :pswitch_4
    move/from16 v13, v21

    goto :goto_1b

    :pswitch_5
    move/from16 v13, v20

    goto :goto_1b

    :pswitch_6
    move v13, v14

    :goto_1b
    :pswitch_7
    new-instance v7, LE0/e;

    invoke-direct {v7, v13, v6}, LE0/e;-><init>(II)V

    goto :goto_1c

    :cond_3b
    new-instance v7, LE0/e;

    const/16 v6, 0x16

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, LE0/e;-><init>(II)V

    :goto_1c
    invoke-static {}, LO/g;->c()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget-wide v12, v4, LO/i;->e:J

    sub-long v12, v10, v12

    invoke-static {v6, v12, v13}, LJ/w;->h(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v8, v7, LE0/e;->a:I

    invoke-static {v6, v8}, LJ/w;->g(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v7, v7, LE0/e;->b:I

    invoke-static {v6, v7}, LJ/w;->w(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    invoke-static {v6, v2}, LJ/w;->i(Landroid/media/metrics/PlaybackErrorEvent$Builder;LG/Z;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    invoke-static {v2}, LJ/w;->j(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    iget-object v6, v4, LO/i;->b:Ljava/util/concurrent/Executor;

    new-instance v7, LH/i;

    const/16 v8, 0x13

    invoke-direct {v7, v4, v2, v8}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v12, 0x1

    iput-boolean v12, v4, LO/i;->B:Z

    const/4 v2, 0x0

    iput-object v2, v4, LO/i;->o:LG/Z;

    :goto_1d
    iget-object v2, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v3}, LG/g0;->E()LG/y0;

    move-result-object v2

    invoke-virtual {v2, v6}, LG/y0;->a(I)Z

    move-result v7

    invoke-virtual {v2, v12}, LG/y0;->a(I)Z

    move-result v6

    const/4 v12, 0x3

    invoke-virtual {v2, v12}, LG/y0;->a(I)Z

    move-result v2

    if-nez v7, :cond_3c

    if-nez v6, :cond_3c

    if-eqz v2, :cond_42

    :cond_3c
    if-nez v7, :cond_3e

    iget-object v7, v4, LO/i;->s:LG/x;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_1e

    :cond_3d
    iput-object v8, v4, LO/i;->s:LG/x;

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v10, v11, v8}, LO/i;->e(IJLG/x;)V

    goto :goto_1e

    :cond_3e
    const/4 v8, 0x0

    :goto_1e
    if-nez v6, :cond_40

    iget-object v6, v4, LO/i;->t:LG/x;

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    goto :goto_1f

    :cond_3f
    iput-object v8, v4, LO/i;->t:LG/x;

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v10, v11, v8}, LO/i;->e(IJLG/x;)V

    :cond_40
    :goto_1f
    if-nez v2, :cond_42

    iget-object v2, v4, LO/i;->u:LG/x;

    invoke-static {v2, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_20

    :cond_41
    iput-object v8, v4, LO/i;->u:LG/x;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v10, v11, v8}, LO/i;->e(IJLG/x;)V

    :cond_42
    :goto_20
    iget-object v2, v4, LO/i;->p:LN0/O;

    invoke-virtual {v4, v2}, LO/i;->a(LN0/O;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v4, LO/i;->p:LN0/O;

    iget-object v2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget v6, v2, LG/x;->x:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_44

    iget-object v6, v4, LO/i;->s:LG/x;

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    :goto_21
    const/4 v2, 0x0

    goto :goto_22

    :cond_43
    iput-object v2, v4, LO/i;->s:LG/x;

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v10, v11, v2}, LO/i;->e(IJLG/x;)V

    goto :goto_21

    :goto_22
    iput-object v2, v4, LO/i;->p:LN0/O;

    :cond_44
    iget-object v2, v4, LO/i;->q:LN0/O;

    invoke-virtual {v4, v2}, LO/i;->a(LN0/O;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v4, LO/i;->q:LN0/O;

    iget-object v2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget-object v6, v4, LO/i;->t:LG/x;

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    :goto_23
    const/4 v2, 0x0

    goto :goto_24

    :cond_45
    iput-object v2, v4, LO/i;->t:LG/x;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v10, v11, v2}, LO/i;->e(IJLG/x;)V

    goto :goto_23

    :goto_24
    iput-object v2, v4, LO/i;->q:LN0/O;

    :cond_46
    iget-object v2, v4, LO/i;->r:LN0/O;

    invoke-virtual {v4, v2}, LO/i;->a(LN0/O;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v4, LO/i;->r:LN0/O;

    iget-object v2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget-object v6, v4, LO/i;->u:LG/x;

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    :goto_25
    const/4 v2, 0x0

    goto :goto_26

    :cond_47
    iput-object v2, v4, LO/i;->u:LG/x;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v10, v11, v2}, LO/i;->e(IJLG/x;)V

    goto :goto_25

    :goto_26
    iput-object v2, v4, LO/i;->r:LN0/O;

    :cond_48
    iget-object v2, v4, LO/i;->a:Landroid/content/Context;

    invoke-static {v2}, LJ/A;->a(Landroid/content/Context;)LJ/A;

    move-result-object v2

    invoke-virtual {v2}, LJ/A;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_8
    const/4 v2, 0x1

    goto :goto_27

    :pswitch_9
    move/from16 v2, v17

    goto :goto_27

    :pswitch_a
    move/from16 v2, v16

    goto :goto_27

    :pswitch_b
    const/4 v2, 0x3

    goto :goto_27

    :pswitch_c
    move/from16 v2, v18

    goto :goto_27

    :pswitch_d
    const/4 v2, 0x5

    goto :goto_27

    :pswitch_e
    const/4 v2, 0x4

    goto :goto_27

    :pswitch_f
    const/4 v2, 0x2

    goto :goto_27

    :pswitch_10
    move/from16 v2, v19

    goto :goto_27

    :pswitch_11
    const/4 v2, 0x0

    :goto_27
    iget v6, v4, LO/i;->n:I

    if-eq v2, v6, :cond_49

    iput v2, v4, LO/i;->n:I

    invoke-static {}, LO/g;->b()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    invoke-static {v6, v2}, LJ/w;->d(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    iget-wide v6, v4, LO/i;->e:J

    sub-long v6, v10, v6

    invoke-static {v2, v6, v7}, LJ/w;->e(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    invoke-static {v2}, LJ/w;->f(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v2

    iget-object v6, v4, LO/i;->b:Ljava/util/concurrent/Executor;

    new-instance v7, LH/i;

    const/16 v8, 0x12

    invoke-direct {v7, v4, v2, v8}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_49
    invoke-interface {v3}, LG/g0;->c()I

    move-result v2

    const/4 v6, 0x2

    const/4 v8, 0x0

    if-eq v2, v6, :cond_4a

    iput-boolean v8, v4, LO/i;->v:Z

    :cond_4a
    invoke-interface {v3}, LG/g0;->j()LG/Z;

    move-result-object v2

    if-nez v2, :cond_4b

    iput-boolean v8, v4, LO/i;->x:Z

    const/16 v6, 0xa

    goto :goto_28

    :cond_4b
    iget-object v2, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v12, 0x1

    iput-boolean v12, v4, LO/i;->x:Z

    :cond_4c
    :goto_28
    invoke-interface {v3}, LG/g0;->c()I

    move-result v2

    iget-boolean v7, v4, LO/i;->v:Z

    if-eqz v7, :cond_4d

    const/4 v9, 0x5

    :goto_29
    const/4 v12, 0x1

    goto/16 :goto_2b

    :cond_4d
    iget-boolean v7, v4, LO/i;->x:Z

    if-eqz v7, :cond_4e

    goto :goto_29

    :cond_4e
    const/4 v7, 0x4

    if-ne v2, v7, :cond_4f

    const/16 v9, 0xb

    goto :goto_29

    :cond_4f
    const/16 v9, 0xc

    const/4 v8, 0x2

    if-ne v2, v8, :cond_54

    iget v2, v4, LO/i;->m:I

    if-eqz v2, :cond_53

    if-eq v2, v8, :cond_53

    if-ne v2, v9, :cond_50

    goto :goto_2a

    :cond_50
    invoke-interface {v3}, LG/g0;->z()Z

    move-result v2

    if-nez v2, :cond_51

    move/from16 v9, v17

    goto :goto_29

    :cond_51
    invoke-interface {v3}, LG/g0;->l0()I

    move-result v2

    if-eqz v2, :cond_52

    move v9, v6

    goto :goto_29

    :cond_52
    move/from16 v9, v18

    goto :goto_29

    :cond_53
    :goto_2a
    move v9, v8

    goto :goto_29

    :cond_54
    const/4 v12, 0x3

    if-ne v2, v12, :cond_57

    invoke-interface {v3}, LG/g0;->z()Z

    move-result v2

    if-nez v2, :cond_55

    move v9, v7

    goto :goto_29

    :cond_55
    invoke-interface {v3}, LG/g0;->l0()I

    move-result v2

    if-eqz v2, :cond_56

    move/from16 v9, v19

    goto :goto_29

    :cond_56
    move v9, v12

    goto :goto_29

    :cond_57
    const/4 v12, 0x1

    if-ne v2, v12, :cond_58

    iget v2, v4, LO/i;->m:I

    if-eqz v2, :cond_58

    goto :goto_2b

    :cond_58
    iget v9, v4, LO/i;->m:I

    :goto_2b
    iget v2, v4, LO/i;->m:I

    if-eq v2, v9, :cond_59

    iput v9, v4, LO/i;->m:I

    iput-boolean v12, v4, LO/i;->B:Z

    invoke-static {}, LO/g;->f()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget v3, v4, LO/i;->m:I

    invoke-static {v2, v3}, LO/g;->g(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v6, v4, LO/i;->e:J

    sub-long/2addr v10, v6

    invoke-static {v2, v10, v11}, LO/g;->h(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-static {v2}, LO/g;->i(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    iget-object v3, v4, LO/i;->b:Ljava/util/concurrent/Executor;

    new-instance v6, LH/i;

    const/16 v7, 0x15

    invoke-direct {v6, v4, v2, v7}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_59
    iget-object v0, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    const/16 v2, 0x404

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v3, v4, LO/i;->c:LO/f;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v3

    :try_start_4
    iget-object v2, v3, LO/f;->f:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v4, v3, LO/f;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, LO/f;->a(LO/e;)V

    goto :goto_2c

    :catchall_2
    move-exception v0

    goto :goto_2e

    :cond_5a
    :goto_2c
    iget-object v2, v3, LO/f;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5b
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO/e;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-boolean v5, v4, LO/e;->e:Z

    if-eqz v5, :cond_5b

    iget-object v5, v3, LO/f;->d:LO/i;

    if-eqz v5, :cond_5b

    iget-object v4, v4, LO/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, LO/i;->d(LO/a;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2d

    :cond_5c
    monitor-exit v3

    return-void

    :goto_2e
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_5d
    :goto_2f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public d()[Lb0/n;
    .locals 3

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LU/n;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/x;

    iget-object v2, v0, LU/n;->c:Ld1/m;

    invoke-virtual {v2, v1}, Ld1/m;->a(LG/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ly0/h;

    iget-object v0, v0, LU/n;->c:Ld1/m;

    invoke-virtual {v0, v1}, Ld1/m;->c(LG/x;)Ly0/m;

    move-result-object v0

    invoke-direct {v2, v0}, Ly0/h;-><init>(Ly0/m;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lf0/a;

    invoke-direct {v2, v1}, Lf0/a;-><init>(LG/x;)V

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lb0/n;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    return-object v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 5

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LG/x;

    check-cast p1, LS/o;

    iget-object v2, p1, LS/o;->b:Ljava/lang/String;

    iget-object v3, v1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v1}, LS/w;->c(LG/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1, v4}, LS/o;->c(Landroid/content/Context;LG/x;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, LS/o;->d(LG/x;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LM0/K;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/T1;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LM0/R1;

    invoke-virtual {p1}, LM0/X0;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, LM0/m2;

    const/16 p2, -0x64

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz1/B;

    new-instance v0, LM0/n0;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, p2, v1}, LM0/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3, v0}, LJ/W;->R(Lz1/B;Lz1/r;)Lz1/H;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/T1;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LM0/E1;

    invoke-virtual {p1}, LM0/X0;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, LM0/m2;

    const/16 p2, -0x64

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2, p3}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz1/B;

    new-instance v0, LM0/n0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, p2, v1}, LM0/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3, v0}, LJ/W;->R(Lz1/B;Lz1/r;)Lz1/H;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, LM0/K;->e:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LO/a;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LU/w;

    check-cast p1, LO/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LO/a;->d:LU/A;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, LN0/O;

    iget-object v4, v1, LU/w;->b:LG/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, LO/i;->c:LO/f;

    iget-object v0, v0, LO/a;->b:LG/q0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v0, v2}, LO/f;->c(LG/q0;LU/A;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-direct {v3, v4, v0, v2}, LN0/O;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget v0, v1, LU/w;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object v3, p1, LO/i;->r:LN0/O;

    goto :goto_0

    :cond_2
    iput-object v3, p1, LO/i;->q:LN0/O;

    goto :goto_0

    :cond_3
    iput-object v3, p1, LO/i;->p:LN0/O;

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LM0/r0;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, LG/e0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0}, LM0/b2;->s()LG/P;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, LG/e0;->g(ILG/P;)V

    return-void

    :sswitch_1
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LG/P;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, LG/e0;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, LG/e0;->g(ILG/P;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, Lorg/mozilla/javascript/Script;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->b([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, LM0/K;->f:Ljava/lang/Object;

    check-cast v0, LS/r;

    iget-object v1, p0, LM0/K;->g:Ljava/lang/Object;

    check-cast v1, LN0/O;

    .line 2
    iget-object v2, v0, LS/r;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, LS/r;->B:LM/f;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
