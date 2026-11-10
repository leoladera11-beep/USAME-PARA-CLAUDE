.class public LM0/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/y;


# instance fields
.field public A:Landroid/view/Surface;

.field public B:Landroid/view/SurfaceHolder;

.field public C:Landroid/view/TextureView;

.field public D:LJ/E;

.field public E:LM0/q;

.field public F:Landroid/media/session/MediaController;

.field public G:J

.field public H:J

.field public I:LM0/b2;

.field public J:Landroid/os/Bundle;

.field public final a:LM0/z;

.field public final b:LM0/h2;

.field public final c:LM0/y0;

.field public final d:Landroid/content/ContextWrapper;

.field public final e:LM0/o2;

.field public final f:Landroid/os/Bundle;

.field public final g:LM0/G;

.field public final h:LM0/k0;

.field public final i:LJ/t;

.field public final j:LN0/O;

.field public final k:Lh/f;

.field public final l:Landroid/util/SparseArray;

.field public final m:Landroid/os/Handler;

.field public n:LM0/o2;

.field public o:LM0/i0;

.field public p:Z

.field public q:LM0/b2;

.field public r:Landroid/app/PendingIntent;

.field public s:Lu1/P;

.field public t:Lu1/P;

.field public u:Lu1/C0;

.field public v:Lu1/C0;

.field public w:LM0/j2;

.field public x:LG/c0;

.field public y:LG/c0;

.field public z:LG/c0;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;LM0/z;LM0/o2;Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LM0/b2;->H:LM0/b2;

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    sget-object v0, LJ/E;->c:LJ/E;

    iput-object v0, p0, LM0/l0;->D:LJ/E;

    sget-object v0, LM0/j2;->b:LM0/j2;

    iput-object v0, p0, LM0/l0;->w:LM0/j2;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    iput-object v0, p0, LM0/l0;->s:Lu1/P;

    iput-object v0, p0, LM0/l0;->t:Lu1/P;

    iput-object v0, p0, LM0/l0;->u:Lu1/C0;

    iput-object v0, p0, LM0/l0;->v:Lu1/C0;

    sget-object v0, LG/c0;->b:LG/c0;

    iput-object v0, p0, LM0/l0;->x:LG/c0;

    iput-object v0, p0, LM0/l0;->y:LG/c0;

    invoke-virtual {p0, v0, v0}, LM0/l0;->Y0(LG/c0;LG/c0;)LG/c0;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->z:LG/c0;

    new-instance v0, LJ/t;

    new-instance v1, LG/v;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, LG/v;-><init>(LM0/y;I)V

    sget-object v2, LJ/M;->a:LJ/M;

    invoke-direct {v0, p5, v2, v1}, LJ/t;-><init>(Landroid/os/Looper;LJ/M;LJ/r;)V

    iput-object v0, p0, LM0/l0;->i:LJ/t;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LM0/l0;->m:Landroid/os/Handler;

    iput-object p2, p0, LM0/l0;->a:LM0/z;

    const-string p2, "token must not be null"

    invoke-static {p3, p2}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LM0/l0;->d:Landroid/content/ContextWrapper;

    new-instance p1, LM0/h2;

    invoke-direct {p1}, LM0/h2;-><init>()V

    iput-object p1, p0, LM0/l0;->b:LM0/h2;

    new-instance p1, LM0/y0;

    invoke-direct {p1, p0}, LM0/y0;-><init>(LM0/l0;)V

    iput-object p1, p0, LM0/l0;->c:LM0/y0;

    new-instance p1, Lh/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lh/f;-><init>(I)V

    iput-object p1, p0, LM0/l0;->k:Lh/f;

    iput-object p3, p0, LM0/l0;->e:LM0/o2;

    iput-object p4, p0, LM0/l0;->f:Landroid/os/Bundle;

    new-instance p1, LM0/G;

    invoke-direct {p1, p0}, LM0/G;-><init>(LM0/l0;)V

    iput-object p1, p0, LM0/l0;->g:LM0/G;

    new-instance p1, LM0/k0;

    invoke-direct {p1, p0}, LM0/k0;-><init>(LM0/l0;)V

    iput-object p1, p0, LM0/l0;->h:LM0/k0;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, LM0/l0;->J:Landroid/os/Bundle;

    iget-object p1, p3, LM0/o2;->a:LM0/n2;

    invoke-interface {p1}, LM0/n2;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, LM0/i0;

    invoke-direct {p1, p0, p4}, LM0/i0;-><init>(LM0/l0;Landroid/os/Bundle;)V

    :goto_0
    iput-object p1, p0, LM0/l0;->o:LM0/i0;

    new-instance p1, LN0/O;

    invoke-direct {p1, p0, p5}, LN0/O;-><init>(LM0/l0;Landroid/os/Looper;)V

    iput-object p1, p0, LM0/l0;->j:LN0/O;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LM0/l0;->G:J

    iput-wide p1, p0, LM0/l0;->H:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LM0/l0;->l:Landroid/util/SparseArray;

    return-void
.end method

.method public static Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;)LG/o0;
    .locals 4

    new-instance v0, LG/o0;

    new-instance v1, Lu1/M;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lu1/I;-><init>(I)V

    invoke-virtual {v1, p0}, Lu1/I;->d(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    new-instance v3, Lu1/M;

    invoke-direct {v3, v2}, Lu1/I;-><init>(I)V

    invoke-virtual {v3, p1}, Lu1/I;->d(Ljava/lang/Iterable;)V

    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v2, p0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    aput v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v1, p1, v2}, LG/o0;-><init>(Lu1/C0;Lu1/C0;[I)V

    return-object v0
.end method

.method public static e1(LM0/b2;)I
    .locals 0

    iget-object p0, p0, LM0/b2;->c:LM0/l2;

    iget-object p0, p0, LM0/l2;->a:LG/f0;

    iget p0, p0, LG/f0;->b:I

    return p0
.end method

.method public static k1(LM0/b2;ILjava/util/List;JJ)LM0/b2;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, LM0/b2;->j:LG/q0;

    iget-object v3, v0, LM0/b2;->c:LM0/l2;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v2}, LG/q0;->o()I

    move-result v8

    if-ge v7, v8, :cond_0

    new-instance v8, LG/p0;

    invoke-direct {v8}, LG/p0;-><init>()V

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    add-int v8, v7, v1

    move-object/from16 v9, p2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, LG/P;

    new-instance v11, LG/p0;

    invoke-direct {v11}, LG/p0;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v28, -0x1

    const-wide/16 v29, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v27, -0x1

    invoke-virtual/range {v11 .. v30}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    invoke-virtual {v4, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p2

    invoke-static {v2, v4, v5}, LM0/l0;->s1(LG/q0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4, v5}, LM0/l0;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;)LG/o0;

    move-result-object v2

    iget-object v4, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    goto :goto_4

    :cond_2
    iget-object v4, v3, LM0/l2;->a:LG/f0;

    iget v4, v4, LG/f0;->b:I

    if-lt v4, v1, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    iget-object v3, v3, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->e:I

    if-lt v3, v1, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    move v3, v1

    :goto_4
    const/4 v8, 0x5

    move-wide/from16 v4, p3

    move-object v1, v2

    move v2, v6

    move-wide/from16 v6, p5

    invoke-static/range {v0 .. v8}, LM0/l0;->m1(LM0/b2;LG/o0;IIJJI)LM0/b2;

    move-result-object v0

    return-object v0
.end method

.method public static l1(LM0/b2;IIZJJ)LM0/b2;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    iget-object v11, v0, LM0/b2;->j:LG/q0;

    iget-boolean v1, v0, LM0/b2;->i:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v11}, LG/q0;->o()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_2

    if-lt v5, v9, :cond_0

    if-lt v5, v10, :cond_1

    :cond_0
    new-instance v6, LG/p0;

    invoke-direct {v6}, LG/p0;-><init>()V

    invoke-virtual {v11, v5, v6, v7, v8}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v11, v2, v3}, LM0/l0;->s1(LG/q0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, LM0/l0;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;)LG/o0;

    move-result-object v2

    iget-object v3, v0, LM0/b2;->c:LM0/l2;

    iget-object v3, v3, LM0/l2;->a:LG/f0;

    iget v12, v3, LG/f0;->b:I

    iget v3, v3, LG/f0;->e:I

    new-instance v5, LG/p0;

    invoke-direct {v5}, LG/p0;-><init>()V

    if-lt v12, v9, :cond_3

    if-ge v12, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_4

    move v3, v4

    move v13, v15

    const/16 v16, 0x1

    goto :goto_8

    :cond_4
    if-eqz v6, :cond_b

    iget v3, v0, LM0/b2;->h:I

    invoke-virtual {v11}, LG/q0;->o()I

    move-result v14

    move v13, v12

    const/16 v16, 0x1

    :goto_2
    if-ge v4, v14, :cond_7

    invoke-virtual {v11, v13, v3, v1}, LG/q0;->e(IIZ)I

    move-result v13

    if-ne v13, v15, :cond_5

    goto :goto_3

    :cond_5
    if-lt v13, v9, :cond_8

    if-lt v13, v10, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    move v13, v15

    :cond_8
    :goto_4
    if-ne v13, v15, :cond_9

    invoke-virtual {v2, v1}, LG/o0;->a(Z)I

    move-result v13

    goto :goto_5

    :cond_9
    if-lt v13, v10, :cond_a

    sub-int v1, v10, v9

    sub-int/2addr v13, v1

    :cond_a
    :goto_5
    invoke-virtual {v2, v13, v5, v7, v8}, LG/o0;->m(ILG/p0;J)LG/p0;

    iget v4, v5, LG/p0;->m:I

    :goto_6
    move v3, v4

    goto :goto_8

    :cond_b
    const/16 v16, 0x1

    if-lt v12, v10, :cond_e

    sub-int v1, v10, v9

    sub-int v13, v12, v1

    if-ne v3, v15, :cond_d

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v9

    :goto_7
    if-ge v1, v10, :cond_c

    new-instance v4, LG/p0;

    invoke-direct {v4}, LG/p0;-><init>()V

    invoke-virtual {v11, v1, v4}, LG/q0;->n(ILG/p0;)V

    iget v5, v4, LG/p0;->n:I

    iget v4, v4, LG/p0;->m:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    move v13, v12

    :goto_8
    const/4 v14, 0x4

    if-eqz v6, :cond_11

    if-ne v13, v15, :cond_f

    sget-object v1, LM0/l2;->k:LG/f0;

    sget-object v3, LM0/l2;->l:LM0/l2;

    invoke-static {v0, v2, v1, v3, v14}, LM0/l0;->n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;

    move-result-object v0

    goto/16 :goto_9

    :cond_f
    if-eqz p3, :cond_10

    const/4 v8, 0x4

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object v1, v2

    move v2, v13

    invoke-static/range {v0 .. v8}, LM0/l0;->m1(LM0/b2;LG/o0;IIJJI)LM0/b2;

    move-result-object v0

    goto/16 :goto_9

    :cond_10
    move-object v1, v2

    move v2, v13

    new-instance v4, LG/p0;

    invoke-direct {v4}, LG/p0;-><init>()V

    invoke-virtual {v1, v2, v4, v7, v8}, LG/o0;->m(ILG/p0;J)LG/p0;

    iget-wide v5, v4, LG/p0;->k:J

    invoke-static {v5, v6}, LJ/W;->S(J)J

    move-result-wide v24

    iget-wide v5, v4, LG/p0;->l:J

    invoke-static {v5, v6}, LJ/W;->S(J)J

    move-result-wide v5

    new-instance v17, LG/f0;

    iget-object v4, v4, LG/p0;->c:LG/P;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-wide/from16 v23, v24

    move-wide/from16 v25, v23

    move/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v28}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    move-wide/from16 v2, v23

    new-instance v4, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {v2, v3, v5, v6}, LM0/Y1;->f(JJ)I

    move-result v26

    const-wide/16 v27, 0x0

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    move-wide/from16 v31, v5

    move-wide/from16 v33, v2

    move-wide/from16 v24, v2

    move-wide/from16 v22, v5

    move-object/from16 v18, v17

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v34}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v3, v14}, LM0/l0;->n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;

    move-result-object v0

    goto :goto_9

    :cond_11
    move-object v1, v2

    move v2, v13

    const/4 v8, 0x4

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, LM0/l0;->m1(LM0/b2;LG/o0;IIJJI)LM0/b2;

    move-result-object v0

    :goto_9
    iget v1, v0, LM0/b2;->A:I

    move/from16 v2, v16

    if-eq v1, v2, :cond_12

    if-eq v1, v14, :cond_12

    if-ge v9, v10, :cond_12

    invoke-virtual {v11}, LG/q0;->o()I

    move-result v1

    if-ne v10, v1, :cond_12

    if-lt v12, v9, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static m1(LM0/b2;LG/o0;IIJJI)LM0/b2;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, LG/f0;

    new-instance v3, LG/p0;

    invoke-direct {v3}, LG/p0;-><init>()V

    const-wide/16 v4, 0x0

    move/from16 v6, p2

    invoke-virtual {v1, v6, v3, v4, v5}, LG/o0;->m(ILG/p0;J)LG/p0;

    iget-object v5, v3, LG/p0;->c:LG/P;

    iget-object v3, v0, LM0/b2;->c:LM0/l2;

    iget-object v3, v3, LM0/l2;->a:LG/f0;

    iget v12, v3, LG/f0;->h:I

    iget v13, v3, LG/f0;->i:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v4, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v13}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    new-instance v3, LM0/l2;

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    iget-boolean v5, v4, LM0/l2;->b:Z

    move v7, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v9, v7

    iget-wide v7, v4, LM0/l2;->d:J

    move v11, v9

    iget-wide v9, v4, LM0/l2;->e:J

    move v12, v11

    iget v11, v4, LM0/l2;->f:I

    move v14, v12

    iget-wide v12, v4, LM0/l2;->g:J

    move/from16 v16, v14

    iget-wide v14, v4, LM0/l2;->h:J

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    iget-wide v2, v4, LM0/l2;->i:J

    move-wide/from16 v17, v2

    iget-wide v2, v4, LM0/l2;->j:J

    move/from16 v4, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v2

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-direct/range {v2 .. v19}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object v4, v2

    move/from16 v2, p8

    invoke-static {v0, v1, v3, v4, v2}, LM0/l0;->n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;

    move-result-object v0

    return-object v0
.end method

.method public static n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, LM0/b2;->a:LG/Z;

    iget v2, v0, LM0/b2;->b:I

    iget-object v3, v0, LM0/b2;->c:LM0/l2;

    iget-object v7, v0, LM0/b2;->g:LG/a0;

    iget v8, v0, LM0/b2;->h:I

    iget-boolean v9, v0, LM0/b2;->i:Z

    iget v12, v0, LM0/b2;->k:I

    iget-object v10, v0, LM0/b2;->l:LG/C0;

    iget-object v13, v0, LM0/b2;->m:LG/T;

    iget v14, v0, LM0/b2;->n:F

    iget v15, v0, LM0/b2;->o:F

    iget v4, v0, LM0/b2;->p:I

    iget-object v5, v0, LM0/b2;->q:LG/e;

    iget-object v6, v0, LM0/b2;->r:LI/c;

    iget-object v11, v0, LM0/b2;->s:LG/p;

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v20, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v22, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v27, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v25, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v28, v1

    move/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v29, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v33, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v0, v0, LM0/b2;->G:LG/w0;

    iget-object v2, v3, LM0/l2;->a:LG/f0;

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p3

    move-object/from16 v36, v0

    iget-object v0, v3, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->b:I

    move-object/from16 v35, v1

    invoke-virtual/range {p1 .. p1}, LG/q0;->o()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    move-object/from16 v36, v0

    move-object/from16 v35, v1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, LF1/i;->o(Z)V

    new-instance v0, LM0/b2;

    move v1, v4

    move-object v4, v2

    move/from16 v2, v17

    move/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v1, v16

    move-object/from16 v11, p1

    move/from16 v6, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v36}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v0
.end method

.method public static s1(LG/q0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/p0;

    iget v2, v1, LG/p0;->m:I

    iget v3, v1, LG/p0;->n:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v1, LG/p0;->m:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v6, v3, v2

    add-int/2addr v6, v5

    iput v6, v1, LG/p0;->n:I

    :goto_1
    if-gt v2, v3, :cond_2

    new-instance v1, LG/n0;

    invoke-direct {v1}, LG/n0;-><init>()V

    invoke-virtual {p0, v2, v1, v0}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iput v4, v1, LG/n0;->c:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, LG/p0;->m:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, LG/p0;->n:I

    new-instance v1, LG/n0;

    invoke-direct {v1}, LG/n0;-><init>()V

    sget-object v9, LG/c;->f:LG/c;

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3, p4}, LM0/c;->g(Ljava/util/List;LM0/j2;LG/c0;)Lu1/C0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x6

    const/4 v1, 0x7

    filled-new-array {p1, v1}, [I

    move-result-object p1

    iget-object v1, p4, LG/c0;->a:LG/u;

    invoke-virtual {v1, p1}, LG/u;->a([I)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0x8

    const/16 v1, 0x9

    filled-new-array {p2, v1}, [I

    move-result-object p2

    iget-object p4, p4, LG/c0;->a:LG/u;

    invoke-virtual {p4, p2}, LG/u;->a([I)Z

    move-result p2

    if-nez p2, :cond_2

    move p3, v0

    :cond_2
    invoke-static {p0, p1, p3, p5}, LM0/c;->j(Ljava/util/List;ZZI)Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3, p4}, LM0/c;->k(Ljava/util/List;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object p0

    :cond_0
    invoke-static {p0, p2, p3}, LM0/c;->g(Ljava/util/List;LM0/j2;LG/c0;)Lu1/C0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, LM0/l0;->t1(II)V

    return-void
.end method

.method public final A0(II)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/N;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LM0/N;-><init>(LM0/l0;III)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, p1, p2}, LM0/l0;->t1(II)V

    return-void
.end method

.method public final A1(Z)V
    .locals 9

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->z:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    iget-boolean v2, v0, LM0/b2;->v:Z

    if-ne v2, p1, :cond_1

    if-ne v1, v8, :cond_1

    return-void

    :cond_1
    iget-wide v1, p0, LM0/l0;->G:J

    iget-wide v3, p0, LM0/l0;->H:J

    iget-object v5, p0, LM0/l0;->a:LM0/z;

    iget-wide v5, v5, LM0/z;->f:J

    invoke-static/range {v0 .. v6}, LM0/Y1;->j(LM0/b2;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, LM0/l0;->G:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LM0/l0;->H:J

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {v0, v7, v8, p1}, LM0/b2;->d(IIZ)LM0/b2;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final B(Z)V
    .locals 2

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/X;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/X;-><init>(LM0/l0;ZI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v1, v0, LM0/b2;->i:Z

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, p1}, LM0/b2;->k(Z)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/Z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LM0/Z;-><init>(IZ)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final B0(I)V
    .locals 3

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/I;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v1, v0, LM0/b2;->s:LG/p;

    iget v2, v0, LM0/b2;->t:I

    if-eq v2, p1, :cond_2

    iget v2, v1, LG/p;->b:I

    if-gt v2, p1, :cond_2

    iget v1, v1, LG/p;->c:I

    if-eqz v1, :cond_1

    if-gt p1, v1, :cond_2

    :cond_1
    iget-boolean v1, v0, LM0/b2;->u:Z

    invoke-virtual {v0, p1, v1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/I;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final B1(Landroid/view/Surface;II)V
    .locals 8

    invoke-virtual {p0}, LM0/l0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LM0/l0;->i1()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    new-instance v2, LM0/S;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, LM0/S;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-virtual {p0, v2}, LM0/l0;->c1(LM0/h0;)V

    return-void

    :cond_1
    move-object v3, p0

    move-object v4, p1

    new-instance p1, LM0/K;

    const/4 p2, 0x3

    invoke-direct {p1, p0, v4, p2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, LM0/l0;->c1(LM0/h0;)V

    return-void
.end method

.method public final C()V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0}, LM0/l0;->f1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, LM0/l0;->f1()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, LM0/l0;->x1(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C0()V
    .locals 7

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, LM0/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, LM0/l0;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LM0/l0;->f1()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LM0/l0;->f1()I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, LM0/l0;->x1(IJ)V

    return-void

    :cond_3
    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v1}, LM0/l0;->e1(LM0/b2;)I

    move-result v1

    new-instance v4, LG/p0;

    invoke-direct {v4}, LG/p0;-><init>()V

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v1, v0, LG/p0;->h:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, LG/p0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, LM0/l0;->x1(IJ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    iput-object p1, p0, LM0/l0;->q:LM0/b2;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, LM0/l0;->p1(LM0/b2;LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final D(I)V
    .locals 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/I;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object p1, p0, LM0/l0;->q:LM0/b2;

    iget v0, p1, LM0/b2;->t:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, LM0/b2;->s:LG/p;

    iget v1, v1, LG/p;->b:I

    if-lt v0, v1, :cond_1

    iget-boolean v1, p1, LM0/b2;->u:Z

    invoke-virtual {p1, v0, v1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object p1

    iput-object p1, p0, LM0/l0;->q:LM0/b2;

    new-instance p1, LM0/I;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, LM0/I;-><init>(LM0/l0;II)V

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v0}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D0(LG/e;Z)V
    .locals 1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C0;

    invoke-direct {v0, p0, p1, p2}, LM0/C0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object p2, p0, LM0/l0;->q:LM0/b2;

    iget-object p2, p2, LM0/b2;->q:LG/e;

    invoke-virtual {p2, p1}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {p2, p1}, LM0/b2;->a(LG/e;)LM0/b2;

    move-result-object p2

    iput-object p2, p0, LM0/l0;->q:LM0/b2;

    new-instance p2, LM0/e0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LM0/e0;-><init>(LG/e;I)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E()LG/y0;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->F:LG/y0;

    return-object v0
.end method

.method public final E0()V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v0, v0, LM0/b2;->D:J

    invoke-virtual {p0, v0, v1}, LM0/l0;->y1(J)V

    return-void
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget v0, v0, LM0/l2;->f:I

    return v0
.end method

.method public final F0(Landroid/view/TextureView;)V
    .locals 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, LM0/l0;->X0()V

    return-void

    :cond_1
    iget-object v0, p0, LM0/l0;->C:Landroid/view/TextureView;

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, LM0/l0;->W0()V

    iput-object p1, p0, LM0/l0;->C:Landroid/view/TextureView;

    iget-object v0, p0, LM0/l0;->h:LM0/k0;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, LM0/l0;->r1(II)V

    return-void

    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, LM0/l0;->A:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LM0/l0;->r1(II)V

    return-void
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v0, v0, LM0/b2;->E:J

    return-wide v0
.end method

.method public final G0(LG/P;)V
    .locals 8

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/F;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/F;-><init>(LM0/l0;LG/P;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final H()LG/T;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->m:LG/T;

    return-object v0
.end method

.method public final H0()V
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v0, v0, LM0/b2;->C:J

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, LM0/l0;->y1(J)V

    return-void
.end method

.method public final I()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->x:Z

    return v0
.end method

.method public final I0(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, LM0/l0;->X0()V

    return-void

    :cond_1
    iget-object v0, p0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, LM0/l0;->W0()V

    iput-object p1, p0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    iget-object v0, p0, LM0/l0;->h:LM0/k0;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, LM0/l0;->A:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, LM0/l0;->r1(II)V

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, LM0/l0;->A:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, LM0/l0;->r1(II)V

    return-void
.end method

.method public final J()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->i:J

    return-wide v0
.end method

.method public final J0(F)V
    .locals 2

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/U;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/U;-><init>(LM0/l0;FI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, LM0/b2;->p(F)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/c0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LM0/c0;-><init>(FI)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->e:I

    return v0
.end method

.method public final K0()LG/T;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->B:LG/T;

    return-object v0
.end method

.method public final L()LI/c;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->r:LI/c;

    return-object v0
.end method

.method public final L0(Ljava/util/List;)V
    .locals 8

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/D;-><init>(LM0/l0;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final M(Landroid/view/TextureView;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, LM0/l0;->C:Landroid/view/TextureView;

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LM0/l0;->X0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final M0()V
    .locals 8

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, LM0/l0;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LM0/l0;->h1()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v2}, LM0/l0;->e1(LM0/b2;)I

    move-result v2

    new-instance v3, LG/p0;

    invoke-direct {v3}, LG/p0;-><init>()V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-boolean v2, v0, LG/p0;->h:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_3

    invoke-virtual {v0}, LG/p0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {p0}, LM0/l0;->h1()I

    move-result v0

    invoke-virtual {p0, v0, v6, v7}, LM0/l0;->x1(IJ)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, LM0/l0;->O0()J

    move-result-wide v0

    iget-object v2, p0, LM0/l0;->q:LM0/b2;

    iget-wide v2, v2, LM0/b2;->E:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p0}, LM0/l0;->h1()I

    move-result v0

    invoke-virtual {p0, v0, v6, v7}, LM0/l0;->x1(IJ)V

    return-void

    :cond_4
    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    invoke-virtual {p0, v0, v4, v5}, LM0/l0;->x1(IJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final N()LG/C0;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->l:LG/C0;

    return-object v0
.end method

.method public final N0(LG/P;)V
    .locals 8

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/F;-><init>(LM0/l0;LG/P;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final O(LG/e0;)V
    .locals 1

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0()J
    .locals 7

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v1, p0, LM0/l0;->G:J

    iget-wide v3, p0, LM0/l0;->H:J

    iget-object v5, p0, LM0/l0;->a:LM0/z;

    iget-wide v5, v5, LM0/z;->f:J

    invoke-static/range {v0 .. v6}, LM0/Y1;->j(LM0/b2;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, LM0/l0;->G:J

    return-wide v0
.end method

.method public final P()V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0}, LM0/l0;->h1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, LM0/l0;->h1()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, LM0/l0;->x1(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final P0()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v0, v0, LM0/b2;->C:J

    return-wide v0
.end method

.method public final Q()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MCImplBase"

    const-string v1, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, LM0/C;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v1}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, v0}, LM0/l0;->A1(Z)V

    return-void
.end method

.method public final Q0()LM0/j2;
    .locals 1

    iget-object v0, p0, LM0/l0;->w:LM0/j2;

    return-object v0
.end method

.method public final R()F
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->n:F

    return v0
.end method

.method public final R0()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, LM0/l0;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public final S()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, LM0/l0;->x1(IJ)V

    return-void
.end method

.method public final S0()Lu1/P;
    .locals 1

    iget-object v0, p0, LM0/l0;->u:Lu1/C0;

    return-object v0
.end method

.method public final T()LG/e;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->q:LG/e;

    return-object v0
.end method

.method public final T0()V
    .locals 9

    iget-object v0, p0, LM0/l0;->e:LM0/o2;

    iget-object v1, v0, LM0/o2;->a:LM0/n2;

    iget-object v2, v0, LM0/o2;->a:LM0/n2;

    invoke-interface {v1}, LM0/n2;->b()I

    move-result v1

    const-string v3, "MCImplBase"

    iget-object v4, p0, LM0/l0;->a:LM0/z;

    iget-object v5, p0, LM0/l0;->d:Landroid/content/ContextWrapper;

    iget-object v6, p0, LM0/l0;->f:Landroid/os/Bundle;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, LM0/l0;->o:LM0/i0;

    invoke-interface {v2}, LM0/n2;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/os/IBinder;

    sget v1, LM0/W1;->m:I

    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, LM0/q;

    if-eqz v2, :cond_0

    check-cast v1, LM0/q;

    goto :goto_0

    :cond_0
    new-instance v1, LM0/p;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, LM0/p;->a:Landroid/os/IBinder;

    :goto_0
    iget-object v0, p0, LM0/l0;->b:LM0/h2;

    invoke-virtual {v0}, LM0/h2;->k()I

    move-result v0

    new-instance v2, LM0/h;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v7, v6}, LM0/h;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    :try_start_0
    iget-object v5, p0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v2}, LM0/h;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v5, v0, v2}, LM0/q;->q(LM0/o;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call connection request."

    invoke-static {v3, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    new-instance v1, LM0/i0;

    invoke-direct {v1, p0, v6}, LM0/i0;-><init>(LM0/l0;Landroid/os/Bundle;)V

    iput-object v1, p0, LM0/l0;->o:LM0/i0;

    const-string v1, "bind to "

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    const/16 v6, 0x1001

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "androidx.media3.session.MediaSessionService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, LM0/n2;->i()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, LM0/n2;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v2, p0, LM0/l0;->o:LM0/i0;

    invoke-virtual {v5, v7, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not allowed"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LH/a;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v0}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->h:I

    return v0
.end method

.method public final U0(LM0/i2;Landroid/os/Bundle;)Lz1/B;
    .locals 2

    invoke-virtual {p0}, LM0/l0;->i1()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, LM0/l0;->i1()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, LM0/l0;->U0(LM0/i2;Landroid/os/Bundle;)Lz1/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LM0/M;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LM0/M;-><init>(LM0/l0;LM0/i2;Landroid/os/Bundle;I)V

    invoke-virtual {p0, p1, v0}, LM0/l0;->d1(LM0/i2;LM0/h0;)Lz1/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LM0/M;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LM0/M;-><init>(LM0/l0;LM0/i2;Landroid/os/Bundle;I)V

    invoke-virtual {p0, p1, v0}, LM0/l0;->d1(LM0/i2;LM0/h0;)Lz1/B;

    move-result-object p1

    return-object p1
.end method

.method public final V()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    return v0
.end method

.method public final V0(ILjava/util/List;)V
    .locals 13

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p2

    iget-object p2, v1, LM0/l0;->q:LM0/b2;

    iget-object p2, p2, LM0/b2;->j:LG/q0;

    invoke-virtual {p2}, LG/q0;->o()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v4, v2

    iget-object v2, v1, LM0/l0;->q:LM0/b2;

    invoke-virtual {p0}, LM0/l0;->O0()J

    move-result-wide v5

    invoke-virtual {p0}, LM0/l0;->r()J

    move-result-wide v7

    invoke-static/range {v2 .. v8}, LM0/l0;->k1(LM0/b2;ILjava/util/List;JJ)LM0/b2;

    move-result-object v8

    iget-object p1, v1, LM0/l0;->q:LM0/b2;

    iget-object p1, p1, LM0/b2;->j:LG/q0;

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v12, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final W(IZ)V
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/W;

    invoke-direct {v0, p0, p2, p1}, LM0/W;-><init>(LM0/l0;ZI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object p1, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, p1, LM0/b2;->u:Z

    if-eq v0, p2, :cond_1

    iget v0, p1, LM0/b2;->t:I

    invoke-virtual {p1, v0, p2}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object p1

    iput-object p1, p0, LM0/l0;->q:LM0/b2;

    new-instance p1, LM0/X;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, LM0/X;-><init>(LM0/l0;ZI)V

    iget-object p2, p0, LM0/l0;->i:LJ/t;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0, p1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p2}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final W0()V
    .locals 3

    iget-object v0, p0, LM0/l0;->C:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, LM0/l0;->C:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v2, p0, LM0/l0;->h:LM0/k0;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    :cond_1
    iget-object v0, p0, LM0/l0;->A:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iput-object v1, p0, LM0/l0;->A:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method public final X(LG/T;)V
    .locals 2

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->m:LG/T;

    invoke-virtual {v0, p1}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {v0, p1}, LM0/b2;->g(LG/T;)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/L;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LM0/L;-><init>(LG/T;I)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final X0()V
    .locals 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LM0/l0;->W0()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v1, v1}, LM0/l0;->r1(II)V

    return-void
.end method

.method public final Y()LG/p;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->s:LG/p;

    return-object v0
.end method

.method public final Y0(LG/c0;LG/c0;)LG/c0;
    .locals 7

    invoke-static {p1, p2}, LM0/Y1;->k(LG/c0;LG/c0;)LG/c0;

    move-result-object p1

    iget-object p2, p0, LM0/l0;->q:LM0/b2;

    iget-object p2, p2, LM0/b2;->s:LG/p;

    iget p2, p2, LG/p;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, LG/c0;->a(I)Z

    move-result v1

    const/16 v2, 0x22

    const/16 v3, 0x1a

    const/16 v4, 0x21

    const/16 v5, 0x19

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    filled-new-array {v5, v4, v3, v2}, [I

    move-result-object v1

    iget-object v6, p1, LG/c0;->a:LG/u;

    invoke-virtual {v6, v1}, LG/u;->a([I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    new-instance v1, LG/b0;

    invoke-direct {v1, p1}, LG/b0;-><init>(LG/c0;)V

    iget-object p1, v1, LG/b0;->a:LE/b;

    invoke-virtual {p1, v0}, LE/b;->a(I)V

    invoke-virtual {v1, v5, p2}, LG/b0;->d(IZ)V

    invoke-virtual {v1, v4, p2}, LG/b0;->d(IZ)V

    invoke-virtual {v1, v3, p2}, LG/b0;->d(IZ)V

    invoke-virtual {v1, v2, p2}, LG/b0;->d(IZ)V

    invoke-virtual {v1}, LG/b0;->c()LG/c0;

    move-result-object p1

    return-object p1
.end method

.method public final Z(LG/P;J)V
    .locals 7

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/f0;

    invoke-direct {v0, p0, p1, p2, p3}, LM0/f0;-><init>(LM0/l0;LG/P;J)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final a()V
    .locals 6

    iget-object v0, p0, LM0/l0;->E:LM0/q;

    iget-boolean v1, p0, LM0/l0;->p:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LM0/l0;->p:Z

    const/4 v2, 0x0

    iput-object v2, p0, LM0/l0;->n:LM0/o2;

    iget-object v3, p0, LM0/l0;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, LM0/l0;->W0()V

    iget-object v3, p0, LM0/l0;->j:LN0/O;

    iget-object v4, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, LN0/O;->O()V

    :cond_1
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, LM0/l0;->E:LM0/q;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LM0/l0;->b:LM0/h2;

    invoke-virtual {v1}, LM0/h2;->k()I

    move-result v1

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, LM0/l0;->g:LM0/G;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v3, p0, LM0/l0;->c:LM0/y0;

    invoke-interface {v0, v3, v1}, LM0/q;->c0(LM0/o;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v0, p0, LM0/l0;->i:LJ/t;

    invoke-virtual {v0}, LJ/t;->d()V

    iget-object v0, p0, LM0/l0;->b:LM0/h2;

    new-instance v1, LM0/V;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, LM0/V;-><init>(LM0/l0;I)V

    iget-object v3, v0, LM0/h2;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {v2}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, LM0/h2;->k:Ljava/lang/Object;

    iput-object v1, v0, LM0/h2;->j:Ljava/lang/Object;

    iget-object v1, v0, LM0/h2;->i:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1}, Lh/j;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LM0/h2;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v1, LH/a;

    const/4 v4, 0x4

    invoke-direct {v1, v0, v4}, LH/a;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    monitor-exit v3

    :goto_1
    return-void

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a0()V
    .locals 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->t:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, LM0/b2;->s:LG/p;

    iget v2, v2, LG/p;->b:I

    if-lt v1, v2, :cond_1

    iget-boolean v2, v0, LM0/b2;->u:Z

    invoke-virtual {v0, v1, v2}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/I;

    const/16 v2, 0xb

    invoke-direct {v0, p0, v1, v2}, LM0/I;-><init>(LM0/l0;II)V

    iget-object v1, p0, LM0/l0;->i:LJ/t;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a1(LM0/q;LM0/h0;Z)Lz1/B;
    .locals 4

    if-eqz p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LM0/l0;->F:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    const-string v1, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance v0, LM0/m2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM0/m2;-><init>(I)V

    iget-object v1, p0, LM0/l0;->b:LM0/h2;

    invoke-virtual {v1, v0}, LM0/h2;->d(Ljava/lang/Object;)LM0/g2;

    move-result-object v0

    iget v2, v0, LM0/g2;->l:I

    iget-object v3, p0, LM0/l0;->k:Lh/f;

    if-eqz p3, :cond_2

    invoke-virtual {v3}, Lh/f;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, LM0/l0;->q:LM0/b2;

    iput-object p3, p0, LM0/l0;->I:LM0/b2;

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p3}, Lh/f;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    invoke-interface {p2, p1, v2}, LM0/h0;->a(LM0/q;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "MCImplBase"

    const-string p3, "Cannot connect to the service or the session is gone"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lh/f;->remove(Ljava/lang/Object;)Z

    new-instance p1, LM0/m2;

    const/16 p2, -0x64

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-virtual {v1, v2, p1}, LM0/h2;->m(ILjava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance p1, LM0/m2;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->y:Z

    return v0
.end method

.method public final b0(I)V
    .locals 2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->h:I

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, p1}, LM0/b2;->i(I)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LG/l0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LG/l0;-><init>(II)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b1(LM0/h0;)V
    .locals 3

    iget-object v0, p0, LM0/l0;->j:LN0/O;

    iget-object v1, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v0, v0, LM0/l0;->E:LM0/q;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, LM0/l0;->E:LM0/q;

    invoke-virtual {p0, v0, p1, v2}, LM0/l0;->a1(LM0/q;LM0/h0;Z)Lz1/B;

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->A:I

    return v0
.end method

.method public final c0(II)V
    .locals 2

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/N;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LM0/N;-><init>(LM0/l0;III)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object p2, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, p2, LM0/b2;->s:LG/p;

    iget v1, p2, LM0/b2;->t:I

    if-eq v1, p1, :cond_2

    iget v1, v0, LG/p;->b:I

    if-gt v1, p1, :cond_2

    iget v0, v0, LG/p;->c:I

    if-eqz v0, :cond_1

    if-gt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p2, LM0/b2;->u:Z

    invoke-virtual {p2, p1, v0}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object p2

    iput-object p2, p0, LM0/l0;->q:LM0/b2;

    new-instance p2, LM0/I;

    const/4 v0, 0x4

    invoke-direct {p2, p0, p1, v0}, LM0/I;-><init>(LM0/l0;II)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0, p2}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c1(LM0/h0;)V
    .locals 3

    iget-object v0, p0, LM0/l0;->j:LN0/O;

    iget-object v1, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v0, v0, LM0/l0;->E:LM0/q;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, LM0/l0;->E:LM0/q;

    invoke-virtual {p0, v0, p1, v2}, LM0/l0;->a1(LM0/q;LM0/h0;Z)Lz1/B;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, LM0/u;->s(Lz1/B;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, p1, LM0/g2;

    if-eqz v1, :cond_1

    check-cast p1, LM0/g2;

    iget p1, p1, LM0/g2;->l:I

    iget-object v1, p0, LM0/l0;->k:Lh/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh/f;->remove(Ljava/lang/Object;)Z

    new-instance v1, LM0/m2;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, LM0/m2;-><init>(I)V

    iget-object v2, p0, LM0/l0;->b:LM0/h2;

    invoke-virtual {v2, p1, v1}, LM0/h2;->m(ILjava/lang/Object;)V

    :cond_1
    const-string p1, "MCImplBase"

    const-string v1, "Synchronous command takes too long on the session side."

    invoke-static {p1, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(LG/a0;)V
    .locals 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/K;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->g:LG/a0;

    invoke-virtual {v0, p1}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {v0, p1}, LM0/b2;->e(LG/a0;)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LM0/Q;-><init>(LG/a0;I)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d0(Z)V
    .locals 2

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/X;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, LM0/X;-><init>(LM0/l0;ZI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v1, v0, LM0/b2;->u:Z

    if-eq v1, p1, :cond_1

    iget v1, v0, LM0/b2;->t:I

    invoke-virtual {v0, v1, p1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/X;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, LM0/X;-><init>(LM0/l0;ZI)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d1(LM0/i2;LM0/h0;)Lz1/B;
    .locals 3

    iget v0, p1, LM0/i2;->a:I

    iget-object v1, p1, LM0/i2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    iget-object v0, p0, LM0/l0;->w:LM0/j2;

    iget-object v0, v0, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v0, p1}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1}, LM0/c;->n(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Controller isn\'t allowed to call custom session command:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCImplBase"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, LM0/l0;->E:LM0/q;

    :goto_1
    invoke-virtual {p0, p1, p2, v2}, LM0/l0;->a1(LM0/q;LM0/h0;Z)Lz1/B;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LM0/C;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v1}, LM0/l0;->b1(LM0/h0;)V

    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    iget v2, v1, LM0/b2;->A:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v1, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e0(I)V
    .locals 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/I;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object p1, p0, LM0/l0;->q:LM0/b2;

    iget v0, p1, LM0/b2;->t:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, LM0/b2;->s:LG/p;

    iget v1, v1, LG/p;->c:I

    if-eqz v1, :cond_2

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-boolean v1, p1, LM0/b2;->u:Z

    invoke-virtual {p1, v0, v1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object p1

    iput-object p1, p0, LM0/l0;->q:LM0/b2;

    new-instance p1, LM0/I;

    const/16 v1, 0x8

    invoke-direct {p1, p0, v0, v1}, LM0/I;-><init>(LM0/l0;II)V

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v0}, LJ/t;->b()V

    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->h:I

    return v0
.end method

.method public final f0()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->i:I

    return v0
.end method

.method public final f1()I
    .locals 5

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v1, v0, LM0/b2;->j:LG/q0;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    iget-object v2, p0, LM0/l0;->q:LM0/b2;

    iget v3, v2, LM0/b2;->h:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-boolean v2, v2, LM0/b2;->i:Z

    invoke-virtual {v1, v0, v3, v2}, LG/q0;->e(IIZ)I

    move-result v0

    return v0
.end method

.method public final g()LG/a0;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->g:LG/a0;

    return-object v0
.end method

.method public final g0(Landroid/view/SurfaceView;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LM0/l0;->I0(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final g1(LG/q0;IJ)LJ0/f;
    .locals 6

    invoke-virtual {p1}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LG/p0;

    invoke-direct {v0}, LG/p0;-><init>()V

    new-instance v1, LG/n0;

    invoke-direct {v1}, LG/n0;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, LG/q0;->o()I

    move-result v2

    if-lt p2, v2, :cond_2

    :cond_1
    iget-object p2, p0, LM0/l0;->q:LM0/b2;

    iget-boolean p2, p2, LM0/b2;->i:Z

    invoke-virtual {p1, p2}, LG/q0;->a(Z)I

    move-result p2

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, v0, p3, p4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p3

    iget-wide p3, p3, LG/p0;->k:J

    invoke-static {p3, p4}, LJ/W;->S(J)J

    move-result-wide p3

    :cond_2
    invoke-static {p3, p4}, LJ/W;->G(J)J

    move-result-wide p3

    invoke-virtual {p1}, LG/q0;->o()I

    move-result v2

    invoke-static {p2, v2}, LF1/i;->i(II)V

    invoke-virtual {p1, p2, v0}, LG/q0;->n(ILG/p0;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, v2

    if-nez p2, :cond_3

    iget-wide p3, v0, LG/p0;->k:J

    cmp-long p2, p3, v2

    if-nez p2, :cond_3

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget p2, v0, LG/p0;->m:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, LG/q0;->f(ILG/n0;Z)LG/n0;

    :goto_1
    iget v3, v0, LG/p0;->n:I

    if-ge p2, v3, :cond_4

    iget-wide v3, v1, LG/n0;->e:J

    cmp-long v3, v3, p3

    if-eqz v3, :cond_4

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3, v1, v2}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v4

    iget-wide v4, v4, LG/n0;->e:J

    cmp-long v4, v4, p3

    if-gtz v4, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2, v1, v2}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iget-wide v0, v1, LG/n0;->e:J

    sub-long/2addr p3, v0

    new-instance p1, LJ0/f;

    invoke-direct {p1, p2, p3, p4}, LJ0/f;-><init>(IJ)V

    return-object p1
.end method

.method public final getDuration()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->d:J

    return-wide v0
.end method

.method public final h(F)V
    .locals 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/U;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/U;-><init>(LM0/l0;FI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->g:LG/a0;

    iget v1, v0, LG/a0;->a:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    new-instance v1, LG/a0;

    iget v0, v0, LG/a0;->b:F

    invoke-direct {v1, p1, v0}, LG/a0;-><init>(FF)V

    iget-object p1, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {p1, v1}, LM0/b2;->e(LG/a0;)LM0/b2;

    move-result-object p1

    iput-object p1, p0, LM0/l0;->q:LM0/b2;

    new-instance p1, LM0/Q;

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0}, LM0/Q;-><init>(LG/a0;I)V

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v0}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h0()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/C;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LM0/l0;->A1(Z)V

    return-void
.end method

.method public final h1()I
    .locals 5

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v1, v0, LM0/b2;->j:LG/q0;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    iget-object v2, p0, LM0/l0;->q:LM0/b2;

    iget v3, v2, LM0/b2;->h:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-boolean v2, v2, LM0/b2;->i:Z

    invoke-virtual {v1, v0, v3, v2}, LG/q0;->k(IIZ)I

    move-result v0

    return v0
.end method

.method public final i(Ljava/util/List;IJ)V
    .locals 8

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LM0/g0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, LM0/g0;-><init>(LM0/l0;Ljava/util/List;IJ)V

    invoke-virtual {p0, v1}, LM0/l0;->b1(LM0/h0;)V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final i0(Landroid/view/SurfaceView;)V
    .locals 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LM0/l0;->X0()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i1()I
    .locals 1

    iget-object v0, p0, LM0/l0;->n:LM0/o2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LM0/o2;->a:LM0/n2;

    invoke-interface {v0}, LM0/n2;->h()I

    move-result v0

    return v0
.end method

.method public final j()LG/Z;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->a:LG/Z;

    return-object v0
.end method

.method public final j0(II)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/N;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, LM0/N;-><init>(LM0/l0;III)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM0/l0;->o1(III)V

    return-void
.end method

.method public final j1(I)Z
    .locals 2

    iget-object v0, p0, LM0/l0;->z:LG/c0;

    invoke-virtual {v0, p1}, LG/c0;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MCImplBase"

    const-string v1, "Controller isn\'t allowed to call command= "

    invoke-static {v1, v0, p1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->t:I

    return v0
.end method

.method public final k0(III)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/Y;

    invoke-direct {v0, p0, p1, p2, p3}, LM0/Y;-><init>(LM0/l0;III)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, p1, p2, p3}, LM0/l0;->o1(III)V

    return-void
.end method

.method public final l(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "MCImplBase"

    const-string v0, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, LM0/X;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, LM0/X;-><init>(LM0/l0;ZI)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, p1}, LM0/l0;->A1(Z)V

    return-void
.end method

.method public final l0()I
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->z:I

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-boolean v0, v0, LM0/l2;->b:Z

    return v0
.end method

.method public final m0(Ljava/util/List;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/D;-><init>(LM0/l0;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v0

    invoke-virtual {p0, v0, p1}, LM0/l0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public final n(I)V
    .locals 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/I;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, LM0/l0;->x1(IJ)V

    return-void
.end method

.method public final n0(LG/w0;)V
    .locals 2

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/K;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v1, v0, LM0/b2;->G:LG/w0;

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, LM0/b2;->o(LG/w0;)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LM0/d0;-><init>(LG/w0;I)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {p1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-wide v0, v0, LM0/b2;->D:J

    return-wide v0
.end method

.method public final o0(LG/e0;)V
    .locals 1

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->e(LG/e0;)V

    return-void
.end method

.method public final o1(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v3

    move/from16 v4, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v1

    sub-int v6, v3, v5

    move/from16 v7, p3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v3, :cond_5

    if-eq v1, v4, :cond_5

    if-ne v1, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x0

    if-ge v10, v3, :cond_1

    new-instance v13, LG/p0;

    invoke-direct {v13}, LG/p0;-><init>()V

    invoke-virtual {v2, v10, v13, v11, v12}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7, v1, v4, v6}, LJ/W;->F(Ljava/util/ArrayList;III)V

    invoke-static {v2, v7, v8}, LM0/l0;->s1(LG/q0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, LM0/l0;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;)LG/o0;

    move-result-object v3

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v0, LM0/l0;->q:LM0/b2;

    invoke-static {v7}, LM0/l0;->e1(LM0/b2;)I

    move-result v7

    if-lt v7, v1, :cond_2

    if-ge v7, v4, :cond_2

    sub-int v1, v7, v1

    add-int/2addr v1, v6

    :goto_1
    move v13, v1

    goto :goto_2

    :cond_2
    if-gt v4, v7, :cond_3

    if-le v6, v7, :cond_3

    sub-int v1, v7, v5

    goto :goto_1

    :cond_3
    if-le v4, v7, :cond_4

    if-gt v6, v7, :cond_4

    add-int v1, v7, v5

    goto :goto_1

    :cond_4
    move v13, v7

    :goto_2
    new-instance v1, LG/p0;

    invoke-direct {v1}, LG/p0;-><init>()V

    iget-object v4, v0, LM0/l0;->q:LM0/b2;

    iget-object v4, v4, LM0/b2;->c:LM0/l2;

    iget-object v4, v4, LM0/l2;->a:LG/f0;

    iget v4, v4, LG/f0;->e:I

    invoke-virtual {v2, v7, v1, v11, v12}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v2

    iget v2, v2, LG/p0;->m:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v13, v1, v11, v12}, LG/o0;->m(ILG/p0;J)LG/p0;

    iget v1, v1, LG/p0;->m:I

    add-int v14, v1, v4

    iget-object v11, v0, LM0/l0;->q:LM0/b2;

    invoke-virtual {v0}, LM0/l0;->O0()J

    move-result-wide v15

    invoke-virtual {v0}, LM0/l0;->r()J

    move-result-wide v17

    const/16 v19, 0x5

    move-object v12, v3

    invoke-static/range {v11 .. v19}, LM0/l0;->m1(LM0/b2;LG/o0;IIJJI)LM0/b2;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->E:LM0/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p0()LG/q0;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    return-object v0
.end method

.method public final p1(LM0/b2;LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    if-eqz p3, :cond_0

    new-instance v1, LM0/O;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, LM0/O;-><init>(LM0/b2;Ljava/lang/Integer;I)V

    const/4 p3, 0x0

    invoke-virtual {v0, p3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_0
    if-eqz p5, :cond_1

    new-instance p3, LM0/O;

    const/4 v1, 0x1

    invoke-direct {p3, p2, p5, v1}, LM0/O;-><init>(LM0/b2;Ljava/lang/Integer;I)V

    const/16 p5, 0xb

    invoke-virtual {v0, p5, p3}, LJ/t;->c(ILJ/q;)V

    :cond_1
    invoke-virtual {p2}, LM0/b2;->s()LG/P;

    move-result-object p3

    if-eqz p6, :cond_2

    new-instance p5, LM0/K;

    const/4 v1, 0x2

    invoke-direct {p5, p3, p6, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p5}, LJ/t;->c(ILJ/q;)V

    :cond_2
    iget-object p3, p1, LM0/b2;->a:LG/Z;

    iget-object p5, p2, LM0/b2;->a:LG/Z;

    if-eq p3, p5, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p5}, LG/Z;->a(LG/Z;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p3, LM0/T;

    const/4 p6, 0x0

    invoke-direct {p3, p6, p5}, LM0/T;-><init>(ILG/Z;)V

    const/16 p6, 0xa

    invoke-virtual {v0, p6, p3}, LJ/t;->c(ILJ/q;)V

    if-eqz p5, :cond_4

    new-instance p3, LM0/T;

    const/4 v1, 0x1

    invoke-direct {p3, v1, p5}, LM0/T;-><init>(ILG/Z;)V

    invoke-virtual {v0, p6, p3}, LJ/t;->c(ILJ/q;)V

    :cond_4
    :goto_0
    iget-object p3, p1, LM0/b2;->F:LG/y0;

    iget-object p5, p2, LM0/b2;->F:LG/y0;

    invoke-virtual {p3, p5}, LG/y0;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    new-instance p3, LM0/P;

    const/16 p5, 0x12

    invoke-direct {p3, p2, p5}, LM0/P;-><init>(LM0/b2;I)V

    const/4 p5, 0x2

    invoke-virtual {v0, p5, p3}, LJ/t;->c(ILJ/q;)V

    :cond_5
    iget-object p3, p1, LM0/b2;->B:LG/T;

    iget-object p5, p2, LM0/b2;->B:LG/T;

    invoke-virtual {p3, p5}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, LM0/P;

    const/16 p5, 0x13

    invoke-direct {p3, p2, p5}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p5, 0xe

    invoke-virtual {v0, p5, p3}, LJ/t;->c(ILJ/q;)V

    :cond_6
    iget-boolean p3, p1, LM0/b2;->y:Z

    iget-boolean p5, p2, LM0/b2;->y:Z

    if-eq p3, p5, :cond_7

    new-instance p3, LM0/P;

    const/16 p5, 0x14

    invoke-direct {p3, p2, p5}, LM0/P;-><init>(LM0/b2;I)V

    const/4 p5, 0x3

    invoke-virtual {v0, p5, p3}, LJ/t;->c(ILJ/q;)V

    :cond_7
    iget p3, p1, LM0/b2;->A:I

    iget p5, p2, LM0/b2;->A:I

    if-eq p3, p5, :cond_8

    new-instance p3, LM0/P;

    const/16 p5, 0x15

    invoke-direct {p3, p2, p5}, LM0/P;-><init>(LM0/b2;I)V

    const/4 p5, 0x4

    invoke-virtual {v0, p5, p3}, LJ/t;->c(ILJ/q;)V

    :cond_8
    if-eqz p4, :cond_9

    new-instance p3, LM0/O;

    const/4 p5, 0x2

    invoke-direct {p3, p2, p4, p5}, LM0/O;-><init>(LM0/b2;Ljava/lang/Integer;I)V

    const/4 p4, 0x5

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_9
    iget p3, p1, LM0/b2;->z:I

    iget p4, p2, LM0/b2;->z:I

    if-eq p3, p4, :cond_a

    new-instance p3, LM0/P;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/4 p4, 0x6

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_a
    iget-boolean p3, p1, LM0/b2;->x:Z

    iget-boolean p4, p2, LM0/b2;->x:Z

    if-eq p3, p4, :cond_b

    new-instance p3, LM0/P;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/4 p4, 0x7

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_b
    iget-object p3, p1, LM0/b2;->g:LG/a0;

    iget-object p4, p2, LM0/b2;->g:LG/a0;

    invoke-virtual {p3, p4}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    new-instance p3, LM0/P;

    const/4 p4, 0x2

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0xc

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_c
    iget p3, p1, LM0/b2;->h:I

    iget p4, p2, LM0/b2;->h:I

    if-eq p3, p4, :cond_d

    new-instance p3, LM0/P;

    const/4 p4, 0x3

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x8

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_d
    iget-boolean p3, p1, LM0/b2;->i:Z

    iget-boolean p4, p2, LM0/b2;->i:Z

    if-eq p3, p4, :cond_e

    new-instance p3, LM0/P;

    const/4 p4, 0x4

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x9

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_e
    iget-object p3, p1, LM0/b2;->m:LG/T;

    iget-object p4, p2, LM0/b2;->m:LG/T;

    invoke-virtual {p3, p4}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    new-instance p3, LM0/P;

    const/4 p4, 0x5

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0xf

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_f
    iget p3, p1, LM0/b2;->n:F

    iget p4, p2, LM0/b2;->n:F

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_10

    new-instance p3, LM0/P;

    const/4 p4, 0x6

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x16

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_10
    iget-object p3, p1, LM0/b2;->q:LG/e;

    iget-object p4, p2, LM0/b2;->q:LG/e;

    invoke-virtual {p3, p4}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    new-instance p3, LM0/P;

    const/4 p4, 0x7

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x14

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_11
    iget p3, p1, LM0/b2;->p:I

    iget p4, p2, LM0/b2;->p:I

    if-eq p3, p4, :cond_12

    new-instance p3, LM0/P;

    const/16 p4, 0x8

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x15

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_12
    iget-object p3, p1, LM0/b2;->r:LI/c;

    iget-object p3, p3, LI/c;->a:Lu1/C0;

    iget-object p4, p2, LM0/b2;->r:LI/c;

    iget-object p4, p4, LI/c;->a:Lu1/C0;

    invoke-virtual {p3, p4}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    new-instance p3, LM0/P;

    const/16 p4, 0x9

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x1b

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    new-instance p3, LM0/P;

    const/16 p5, 0xa

    invoke-direct {p3, p2, p5}, LM0/P;-><init>(LM0/b2;I)V

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_13
    iget-object p3, p1, LM0/b2;->s:LG/p;

    iget-object p4, p2, LM0/b2;->s:LG/p;

    invoke-virtual {p3, p4}, LG/p;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    new-instance p3, LM0/P;

    const/16 p4, 0xb

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x1d

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_14
    iget p3, p1, LM0/b2;->t:I

    iget p4, p2, LM0/b2;->t:I

    if-ne p3, p4, :cond_15

    iget-boolean p3, p1, LM0/b2;->u:Z

    iget-boolean p4, p2, LM0/b2;->u:Z

    if-eq p3, p4, :cond_16

    :cond_15
    new-instance p3, LM0/P;

    const/16 p4, 0xc

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x1e

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_16
    iget-object p3, p1, LM0/b2;->l:LG/C0;

    iget-object p4, p2, LM0/b2;->l:LG/C0;

    invoke-virtual {p3, p4}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_17

    new-instance p3, LM0/P;

    const/16 p4, 0xd

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x19

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_17
    iget-wide p3, p1, LM0/b2;->C:J

    iget-wide p5, p2, LM0/b2;->C:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_18

    new-instance p3, LM0/P;

    const/16 p4, 0xe

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x10

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_18
    iget-wide p3, p1, LM0/b2;->D:J

    iget-wide p5, p2, LM0/b2;->D:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_19

    new-instance p3, LM0/P;

    const/16 p4, 0xf

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x11

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_19
    iget-wide p3, p1, LM0/b2;->E:J

    iget-wide p5, p2, LM0/b2;->E:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_1a

    new-instance p3, LM0/P;

    const/16 p4, 0x10

    invoke-direct {p3, p2, p4}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p4, 0x12

    invoke-virtual {v0, p4, p3}, LJ/t;->c(ILJ/q;)V

    :cond_1a
    iget-object p1, p1, LM0/b2;->G:LG/w0;

    iget-object p3, p2, LM0/b2;->G:LG/w0;

    invoke-virtual {p1, p3}, LG/w0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    new-instance p1, LM0/P;

    const/16 p3, 0x11

    invoke-direct {p1, p2, p3}, LM0/P;-><init>(LM0/b2;I)V

    const/16 p2, 0x13

    invoke-virtual {v0, p2, p1}, LJ/t;->c(ILJ/q;)V

    :cond_1b
    invoke-virtual {v0}, LJ/t;->b()V

    return-void
.end method

.method public final q()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->h:J

    return-wide v0
.end method

.method public final q0(ILjava/util/List;I)V
    .locals 7

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v1, LM0/S;

    const/4 v6, 0x1

    move-object v2, p0

    move v4, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, LM0/S;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-virtual {p0, v1}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, v4, v3, v5}, LM0/l0;->u1(ILjava/util/List;I)V

    return-void
.end method

.method public final q1(LM0/b2;LM0/Z1;)V
    .locals 12

    invoke-virtual {p0}, LM0/l0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LM0/l0;->i1()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    iget-object v5, p0, LM0/l0;->I:LM0/b2;

    const/4 v1, 0x0

    if-eqz v5, :cond_3

    iget-object v8, p0, LM0/l0;->z:LG/c0;

    iget-object v10, p0, LM0/l0;->n:LM0/o2;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, LM0/Y1;->m(LM0/b2;LM0/b2;LM0/Z1;LG/c0;ZLM0/o2;)LM0/b2;

    move-result-object v2

    iput-object v2, p0, LM0/l0;->I:LM0/b2;

    iget-object v2, p0, LM0/l0;->k:Lh/f;

    invoke-virtual {v2}, Lh/f;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LM0/l0;->I:LM0/b2;

    sget-object v5, LM0/Z1;->c:LM0/Z1;

    iput-object v1, p0, LM0/l0;->I:LM0/b2;

    move-object v6, v2

    move-object v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v6, p1

    move-object v7, p2

    :goto_2
    iget-object v5, p0, LM0/l0;->q:LM0/b2;

    iget-object v8, p0, LM0/l0;->z:LG/c0;

    iget-object v10, p0, LM0/l0;->n:LM0/o2;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v5 .. v10}, LM0/Y1;->m(LM0/b2;LM0/b2;LM0/Z1;LG/c0;ZLM0/o2;)LM0/b2;

    move-result-object v2

    iput-object v2, p0, LM0/l0;->q:LM0/b2;

    iget v6, v2, LM0/b2;->f:I

    iget-object v7, v2, LM0/b2;->j:LG/q0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    if-eq v6, v4, :cond_4

    iget-object v6, v5, LM0/b2;->j:LG/q0;

    invoke-virtual {v6}, LG/q0;->p()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, v5, LM0/b2;->d:LG/f0;

    iget-object v9, v2, LM0/b2;->d:LG/f0;

    invoke-virtual {v6, v9}, LG/f0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v5, LM0/b2;->e:LG/f0;

    invoke-virtual {v6, v8}, LG/f0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v1

    goto :goto_4

    :cond_6
    :goto_3
    iget v6, v2, LM0/b2;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v5}, LM0/b2;->s()LG/P;

    move-result-object v9

    invoke-virtual {v2}, LM0/b2;->s()LG/P;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget v10, v2, LM0/b2;->b:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_5

    :cond_7
    move-object v10, v1

    :goto_5
    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_b

    :cond_8
    iget-object v9, v5, LM0/b2;->e:LG/f0;

    iget v9, v9, LG/f0;->b:I

    iget v11, v8, LG/f0;->b:I

    if-eq v9, v11, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x2

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_a
    iget v4, v5, LM0/b2;->h:I

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v5, LM0/b2;->d:LG/f0;

    iget v4, v4, LG/f0;->h:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_b

    iget v4, v8, LG/f0;->h:I

    if-ne v4, v9, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_b
    :goto_7
    iget-object v3, v5, LM0/b2;->j:LG/q0;

    invoke-virtual {v3, v7}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, v2, LM0/b2;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_c
    move-object v3, v1

    :goto_8
    iget v4, v5, LM0/b2;->w:I

    iget v7, v2, LM0/b2;->w:I

    if-ne v4, v7, :cond_e

    iget-boolean v4, v5, LM0/b2;->v:Z

    iget-boolean v8, v2, LM0/b2;->v:Z

    if-eq v4, v8, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    move-object v0, p0

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v10

    goto :goto_b

    :cond_e
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :goto_b
    invoke-virtual/range {v0 .. v6}, LM0/l0;->p1(LM0/b2;LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final r()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-boolean v1, v0, LM0/l2;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, LM0/l0;->O0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget-wide v0, v0, LG/f0;->g:J

    return-wide v0
.end method

.method public final r0()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->u:Z

    return v0
.end method

.method public final r1(II)V
    .locals 2

    iget-object v0, p0, LM0/l0;->D:LJ/E;

    iget v1, v0, LJ/E;->a:I

    if-ne v1, p1, :cond_1

    iget v0, v0, LJ/E;->b:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, LJ/E;

    invoke-direct {v0, p1, p2}, LJ/E;-><init>(II)V

    iput-object v0, p0, LM0/l0;->D:LJ/E;

    new-instance v0, LM0/H;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LM0/H;-><init>(III)V

    iget-object p1, p0, LM0/l0;->i:LJ/t;

    const/16 p2, 0x18

    invoke-virtual {p1, p2, v0}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->g:J

    return-wide v0
.end method

.method public final s0(I)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/I;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, LM0/I;-><init>(LM0/l0;II)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, LM0/l0;->t1(II)V

    return-void
.end method

.method public final t(IJ)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/b0;

    invoke-direct {v0, p1, p2, p3, p0}, LM0/b0;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, p1, p2, p3}, LM0/l0;->x1(IJ)V

    return-void
.end method

.method public final t0()V
    .locals 3

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, LM0/b2;->p(F)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LG/v;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LG/v;-><init>(I)V

    iget-object v1, p0, LM0/l0;->i:LJ/t;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v1}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t1(II)V
    .locals 12

    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    iget-object v1, v1, LM0/b2;->j:LG/q0;

    invoke-virtual {v1}, LG/q0;->o()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p1, v1, :cond_5

    if-eq p1, v3, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v1}, LM0/l0;->e1(LM0/b2;)I

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lt v1, p1, :cond_1

    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v1}, LM0/l0;->e1(LM0/b2;)I

    move-result v1

    if-ge v1, v3, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    invoke-virtual {p0}, LM0/l0;->O0()J

    move-result-wide v5

    invoke-virtual {p0}, LM0/l0;->r()J

    move-result-wide v7

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v1 .. v8}, LM0/l0;->l1(LM0/b2;IIZJJ)LM0/b2;

    move-result-object v1

    iget-object v4, p0, LM0/l0;->q:LM0/b2;

    iget-object v4, v4, LM0/b2;->c:LM0/l2;

    iget-object v4, v4, LM0/l2;->a:LG/f0;

    iget v4, v4, LG/f0;->b:I

    if-lt v4, p1, :cond_2

    if-ge v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v11, :cond_3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v9, :cond_4

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    move-object v5, v3

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final u()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LM0/l0;->j1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, LM0/C;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {v0, v1}, LM0/l0;->b1(LM0/h0;)V

    iget-object v1, v0, LM0/l0;->q:LM0/b2;

    new-instance v2, LM0/l2;

    iget-object v3, v0, LM0/l0;->q:LM0/b2;

    iget-object v3, v3, LM0/b2;->c:LM0/l2;

    iget-object v4, v3, LM0/l2;->a:LG/f0;

    iget-boolean v3, v3, LM0/l2;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, LM0/l0;->q:LM0/b2;

    iget-object v7, v7, LM0/b2;->c:LM0/l2;

    iget-wide v8, v7, LM0/l2;->d:J

    iget-object v7, v7, LM0/l2;->a:LG/f0;

    iget-wide v10, v7, LG/f0;->f:J

    move-wide v12, v10

    invoke-static {v12, v13, v8, v9}, LM0/Y1;->f(JJ)I

    move-result v11

    iget-object v7, v0, LM0/l0;->q:LM0/b2;

    iget-object v7, v7, LM0/b2;->c:LM0/l2;

    iget-wide v14, v7, LM0/l2;->h:J

    move-object v10, v2

    move/from16 v16, v3

    iget-wide v2, v7, LM0/l2;->i:J

    iget-object v7, v7, LM0/l2;->a:LG/f0;

    move-wide/from16 v17, v2

    iget-wide v2, v7, LG/f0;->f:J

    move-wide/from16 v20, v2

    move-object v3, v4

    move/from16 v4, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v20

    move-wide v7, v8

    move-object v2, v10

    move-wide v9, v12

    const-wide/16 v12, 0x0

    invoke-direct/range {v2 .. v19}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    invoke-virtual {v1, v2}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/l0;->q:LM0/b2;

    iget v2, v1, LM0/b2;->A:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v1, LM0/b2;->a:LG/Z;

    invoke-virtual {v1, v3, v2}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/l0;->q:LM0/b2;

    new-instance v1, LG/v;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LG/v;-><init>(I)V

    iget-object v2, v0, LM0/l0;->i:LJ/t;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v2}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u0(ILG/P;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/E;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LM0/E;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, LM0/l0;->u1(ILjava/util/List;I)V

    return-void
.end method

.method public final u1(ILjava/util/List;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v2

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, LM0/l0;->q:LM0/b2;

    iget-object v3, v3, LM0/b2;->j:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v2, -0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, LM0/l0;->z1(Ljava/util/List;IJZ)V

    move-object v8, v0

    return-void

    :cond_1
    move-object v8, v0

    move/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v9, v8, LM0/l0;->q:LM0/b2;

    invoke-virtual {v8}, LM0/l0;->O0()J

    move-result-wide v12

    invoke-virtual {v8}, LM0/l0;->r()J

    move-result-wide v14

    move-object/from16 v11, p2

    move v10, v2

    invoke-static/range {v9 .. v15}, LM0/l0;->k1(LM0/b2;ILjava/util/List;JJ)LM0/b2;

    move-result-object v0

    invoke-virtual {v8}, LM0/l0;->O0()J

    move-result-wide v4

    invoke-virtual {v8}, LM0/l0;->r()J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-static/range {v0 .. v7}, LM0/l0;->l1(LM0/b2;IIZJJ)LM0/b2;

    move-result-object v0

    iget-object v3, v8, LM0/l0;->q:LM0/b2;

    iget-object v3, v3, LM0/b2;->c:LM0/l2;

    iget-object v3, v3, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    const/4 v4, 0x0

    if-lt v3, v1, :cond_2

    if-ge v3, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    move-object v5, v3

    const/4 v3, 0x0

    move-object v1, v0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, LM0/E;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LM0/E;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    invoke-virtual {p0, p1, p2}, LM0/l0;->V0(ILjava/util/List;)V

    return-void
.end method

.method public final v0()V
    .locals 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LM0/C;-><init>(LM0/l0;I)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v1, v0, LM0/b2;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, LM0/b2;->s:LG/p;

    iget v2, v2, LG/p;->c:I

    if-eqz v2, :cond_2

    if-gt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-boolean v2, v0, LM0/b2;->u:Z

    invoke-virtual {v0, v1, v2}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/l0;->q:LM0/b2;

    new-instance v0, LM0/I;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, LM0/I;-><init>(LM0/l0;II)V

    iget-object v1, p0, LM0/l0;->i:LJ/t;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v1}, LJ/t;->b()V

    return-void
.end method

.method public final w()LG/c0;
    .locals 1

    iget-object v0, p0, LM0/l0;->z:LG/c0;

    return-object v0
.end method

.method public final w0()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->i:Z

    return v0
.end method

.method public final x()V
    .locals 4

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget v0, v0, LM0/b2;->o:F

    new-instance v1, LM0/U;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, LM0/U;-><init>(LM0/l0;FI)V

    invoke-virtual {p0, v1}, LM0/l0;->b1(LM0/h0;)V

    iget-object v1, p0, LM0/l0;->q:LM0/b2;

    iget v2, v1, LM0/b2;->n:F

    iget v3, v1, LM0/b2;->o:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, LM0/b2;->p(F)LM0/b2;

    move-result-object v1

    iput-object v1, p0, LM0/l0;->q:LM0/b2;

    new-instance v1, LM0/c0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LM0/c0;-><init>(FI)V

    iget-object v0, p0, LM0/l0;->i:LJ/t;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v0}, LJ/t;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x0()LG/w0;
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->G:LG/w0;

    return-object v0
.end method

.method public final x1(IJ)V
    .locals 53

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-wide/from16 v13, p2

    iget-object v1, v0, LM0/l0;->q:LM0/b2;

    iget-object v1, v1, LM0/b2;->j:LG/q0;

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, LG/q0;->o()I

    move-result v2

    if-ge v3, v2, :cond_e

    :cond_0
    invoke-virtual {v0}, LM0/l0;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget v4, v2, LM0/b2;->A:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    iget-object v6, v2, LM0/b2;->a:LG/Z;

    invoke-virtual {v2, v4, v6}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v13, v14}, LM0/l0;->g1(LG/q0;IJ)LJ0/f;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-nez v4, :cond_7

    new-instance v1, LG/f0;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v13, v9

    move-wide v9, v7

    if-nez v16, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v13

    :goto_1
    move-wide v11, v9

    if-nez v16, :cond_4

    goto :goto_2

    :cond_4
    move-wide v9, v13

    :goto_2
    const/4 v2, -0x1

    move-wide/from16 v17, v11

    const/4 v12, -0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v19, v5

    const/4 v5, 0x0

    move/from16 v20, v6

    move/from16 v6, p1

    move/from16 v15, v19

    move/from16 v13, v20

    const/16 v34, 0x2

    invoke-direct/range {v1 .. v12}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v3, v2, LM0/b2;->j:LG/q0;

    move/from16 v4, v16

    new-instance v16, LM0/l2;

    iget-object v5, v0, LM0/l0;->q:LM0/b2;

    iget-object v5, v5, LM0/b2;->c:LM0/l2;

    iget-boolean v5, v5, LM0/l2;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    iget-object v6, v0, LM0/l0;->q:LM0/b2;

    iget-object v6, v6, LM0/b2;->c:LM0/l2;

    iget-wide v7, v6, LM0/l2;->d:J

    if-nez v4, :cond_5

    const-wide/16 v23, 0x0

    goto :goto_3

    :cond_5
    move-wide/from16 v23, p2

    :goto_3
    iget-wide v9, v6, LM0/l2;->h:J

    iget-wide v11, v6, LM0/l2;->i:J

    if-nez v4, :cond_6

    const-wide/16 v32, 0x0

    goto :goto_4

    :cond_6
    move-wide/from16 v32, p2

    :goto_4
    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v5

    move-wide/from16 v21, v7

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    invoke-direct/range {v16 .. v33}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v4, v16

    invoke-static {v2, v3, v1, v4, v15}, LM0/l0;->n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;

    move-result-object v1

    goto/16 :goto_9

    :cond_7
    move v15, v5

    move v13, v6

    const/16 v34, 0x2

    iget-object v3, v2, LM0/b2;->c:LM0/l2;

    iget-object v5, v3, LM0/l2;->a:LG/f0;

    iget-object v3, v3, LM0/l2;->a:LG/f0;

    iget v5, v5, LG/f0;->e:I

    iget v6, v4, LJ0/f;->a:I

    new-instance v7, LG/n0;

    invoke-direct {v7}, LG/n0;-><init>()V

    invoke-virtual {v1, v5, v7, v13}, LG/q0;->f(ILG/n0;Z)LG/n0;

    new-instance v8, LG/n0;

    invoke-direct {v8}, LG/n0;-><init>()V

    invoke-virtual {v1, v6, v8, v13}, LG/q0;->f(ILG/n0;Z)LG/n0;

    if-eq v5, v6, :cond_8

    move v9, v15

    goto :goto_5

    :cond_8
    move v9, v13

    :goto_5
    iget-wide v10, v4, LJ0/f;->b:J

    invoke-virtual {v0}, LM0/l0;->O0()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, LJ/W;->G(J)J

    move-result-wide v19

    iget-wide v13, v7, LG/n0;->e:J

    sub-long v12, v19, v13

    if-nez v9, :cond_9

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    goto/16 :goto_8

    :cond_9
    iget v14, v3, LG/f0;->h:I

    const/4 v4, -0x1

    if-ne v14, v4, :cond_a

    move v4, v15

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, LF1/i;->o(Z)V

    new-instance v19, LG/f0;

    iget v4, v7, LG/n0;->c:I

    iget-object v3, v3, LG/f0;->c:LG/P;

    move-object/from16 v22, v3

    move/from16 v21, v4

    iget-wide v3, v7, LG/n0;->e:J

    add-long/2addr v3, v12

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v25

    iget-wide v3, v7, LG/n0;->e:J

    add-long/2addr v3, v12

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v27

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v20, 0x0

    const/16 v23, 0x0

    move/from16 v24, v5

    invoke-direct/range {v19 .. v30}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    move-object/from16 v3, v19

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v8, v4}, LG/q0;->f(ILG/n0;Z)LG/n0;

    new-instance v5, LG/p0;

    invoke-direct {v5}, LG/p0;-><init>()V

    iget v7, v8, LG/n0;->c:I

    invoke-virtual {v1, v7, v5}, LG/q0;->n(ILG/p0;)V

    move-object/from16 p2, v5

    iget-wide v4, v8, LG/n0;->e:J

    add-long/2addr v4, v10

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v25

    new-instance v36, LG/f0;

    iget v1, v8, LG/n0;->c:I

    move-object/from16 v4, p2

    iget-object v5, v4, LG/p0;->c:LG/P;

    move-wide/from16 v27, v25

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v19, v36

    invoke-direct/range {v19 .. v30}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    move-object/from16 v1, v19

    move-wide/from16 v5, v25

    invoke-virtual {v2, v15, v3, v1}, LM0/b2;->h(ILG/f0;LG/f0;)LM0/b2;

    move-result-object v2

    if-nez v9, :cond_b

    cmp-long v3, v10, v12

    if-gez v3, :cond_c

    :cond_b
    move-object/from16 v36, v1

    goto :goto_7

    :cond_c
    iget-object v3, v2, LM0/b2;->c:LM0/l2;

    iget-wide v5, v3, LM0/l2;->g:J

    invoke-static {v5, v6}, LJ/W;->G(J)J

    move-result-wide v5

    sub-long v12, v10, v12

    sub-long/2addr v5, v12

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, v8, LG/n0;->e:J

    add-long/2addr v7, v10

    add-long/2addr v7, v5

    invoke-static {v7, v8}, LJ/W;->S(J)J

    move-result-wide v7

    new-instance v35, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    iget-wide v9, v4, LG/p0;->l:J

    invoke-static {v9, v10}, LJ/W;->S(J)J

    move-result-wide v40

    iget-wide v3, v4, LG/p0;->l:J

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, LM0/Y1;->f(JJ)I

    move-result v44

    invoke-static {v5, v6}, LJ/W;->S(J)J

    move-result-wide v45

    const-wide v47, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    move-wide/from16 v51, v7

    move-object/from16 v36, v1

    move-wide/from16 v42, v7

    invoke-direct/range {v35 .. v52}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v1, v35

    invoke-virtual {v2, v1}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v2

    goto :goto_8

    :goto_7
    new-instance v35, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    iget-wide v7, v4, LG/p0;->l:J

    invoke-static {v7, v8}, LJ/W;->S(J)J

    move-result-wide v40

    iget-wide v3, v4, LG/p0;->l:J

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, LM0/Y1;->f(JJ)I

    move-result v44

    const-wide v47, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    const-wide/16 v45, 0x0

    move-wide/from16 v51, v5

    move-wide/from16 v42, v5

    invoke-direct/range {v35 .. v52}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v1, v35

    invoke-virtual {v2, v1}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v2

    :goto_8
    move-object v1, v2

    :goto_9
    iget-object v2, v1, LM0/b2;->c:LM0/l2;

    iget-object v3, v0, LM0/l0;->q:LM0/b2;

    iget-object v3, v3, LM0/b2;->j:LG/q0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    iget-object v4, v0, LM0/l0;->q:LM0/b2;

    iget-object v4, v4, LM0/b2;->c:LM0/l2;

    iget-object v4, v4, LM0/l2;->a:LG/f0;

    iget v4, v4, LG/f0;->b:I

    if-eq v3, v4, :cond_d

    move v5, v15

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_f

    iget-object v2, v2, LM0/l2;->a:LG/f0;

    iget-wide v2, v2, LG/f0;->f:J

    iget-object v4, v0, LM0/l0;->q:LM0/b2;

    iget-object v4, v4, LM0/b2;->c:LM0/l2;

    iget-object v4, v4, LM0/l2;->a:LG/f0;

    iget-wide v6, v4, LG/f0;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    return-void

    :cond_f
    :goto_c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v5, :cond_10

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_d
    move-object v5, v2

    goto :goto_e

    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    :goto_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final y()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->e:J

    return-wide v0
.end method

.method public final y0(J)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LM0/l0;->j1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/J;

    invoke-direct {v0, p1, p2, p0}, LM0/J;-><init>(JLjava/lang/Object;)V

    invoke-virtual {p0, v0}, LM0/l0;->b1(LM0/h0;)V

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, LM0/l0;->x1(IJ)V

    return-void
.end method

.method public final y1(J)V
    .locals 4

    invoke-virtual {p0}, LM0/l0;->O0()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0}, LM0/l0;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    invoke-static {v0}, LM0/l0;->e1(LM0/b2;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, LM0/l0;->x1(IJ)V

    return-void
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->v:Z

    return v0
.end method

.method public final z0()J
    .locals 2

    iget-object v0, p0, LM0/l0;->q:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->j:J

    return-wide v0
.end method

.method public final z1(Ljava/util/List;IJZ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v11, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v11, v6, :cond_0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, LG/P;

    sget-object v6, LM0/u;->a:Lu1/b0;

    new-instance v6, LG/p0;

    invoke-direct {v6}, LG/p0;-><init>()V

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v24, 0x0

    const-wide/16 v9, 0x0

    move/from16 v22, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move/from16 v23, v22

    invoke-virtual/range {v6 .. v25}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, LG/n0;

    invoke-direct {v8}, LG/n0;-><init>()V

    sget-object v16, LG/c;->f:LG/c;

    const/16 v17, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    move/from16 v11, v22

    invoke-virtual/range {v8 .. v17}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v22, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, LM0/l0;->Z0(Ljava/util/ArrayList;Ljava/util/ArrayList;)LG/o0;

    move-result-object v3

    iget-object v4, v3, LG/o0;->e:Lu1/C0;

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v4, Lu1/C0;->h:I

    if-ge v2, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, LG/A;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    :goto_1
    const/4 v6, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    if-eqz p5, :cond_4

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v2, v2, LM0/b2;->i:Z

    invoke-virtual {v3, v2}, LG/o0;->a(Z)I

    move-result v2

    :goto_2
    move v13, v2

    move v2, v5

    move-wide v4, v8

    goto :goto_3

    :cond_4
    if-ne v2, v6, :cond_6

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->c:LM0/l2;

    iget-object v2, v2, LM0/l2;->a:LG/f0;

    iget v11, v2, LG/f0;->b:I

    iget-wide v12, v2, LG/f0;->f:J

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v4, Lu1/C0;->h:I

    if-lt v11, v2, :cond_5

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-boolean v2, v2, LM0/b2;->i:Z

    invoke-virtual {v3, v2}, LG/o0;->a(Z)I

    move-result v2

    move v13, v2

    move-wide v4, v8

    move v2, v10

    goto :goto_3

    :cond_5
    move v2, v5

    move-wide v4, v12

    move v13, v11

    goto :goto_3

    :cond_6
    move v13, v2

    move v2, v5

    move-wide/from16 v4, p3

    :goto_3
    invoke-virtual {v0, v3, v13, v4, v5}, LM0/l0;->g1(LG/q0;IJ)LJ0/f;

    move-result-object v11

    if-nez v11, :cond_b

    new-instance v11, LG/f0;

    cmp-long v1, v4, v8

    const-wide/16 v8, 0x0

    if-nez v1, :cond_7

    move-wide/from16 v17, v8

    goto :goto_4

    :cond_7
    move-wide/from16 v17, v4

    :goto_4
    if-nez v1, :cond_8

    move-wide/from16 v19, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v19, v4

    :goto_5
    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v13

    invoke-direct/range {v11 .. v22}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    new-instance v14, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    if-nez v1, :cond_9

    move-wide/from16 v21, v8

    goto :goto_6

    :cond_9
    move-wide/from16 v21, v4

    :goto_6
    if-nez v1, :cond_a

    move-wide/from16 v30, v8

    goto :goto_7

    :cond_a
    move-wide/from16 v30, v4

    :goto_7
    const/16 v16, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    move-object v15, v11

    invoke-direct/range {v14 .. v31}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    goto :goto_8

    :cond_b
    iget-wide v4, v11, LJ0/f;->b:J

    new-instance v15, LG/f0;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, LG/P;

    iget v1, v11, LJ0/f;->a:I

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v17

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v19

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v12, 0x0

    move-object v11, v15

    const/4 v15, 0x0

    move/from16 v16, v1

    invoke-direct/range {v11 .. v22}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    new-instance v14, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v21

    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v30

    const/16 v16, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    move-object v15, v11

    invoke-direct/range {v14 .. v31}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    :goto_8
    iget-object v1, v0, LM0/l0;->q:LM0/b2;

    const/4 v4, 0x4

    invoke-static {v1, v3, v11, v14, v4}, LM0/l0;->n1(LM0/b2;LG/q0;LG/f0;LM0/l2;I)LM0/b2;

    move-result-object v1

    iget v5, v1, LM0/b2;->A:I

    if-eq v13, v6, :cond_e

    if-eq v5, v10, :cond_e

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    const/4 v5, 0x2

    goto :goto_a

    :cond_d
    :goto_9
    move v5, v4

    :cond_e
    :goto_a
    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->a:LG/Z;

    invoke-virtual {v1, v5, v2}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v1

    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    goto :goto_b

    :cond_f
    move-object v4, v3

    :goto_b
    iget-object v2, v0, LM0/l0;->q:LM0/b2;

    iget-object v2, v2, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, LM0/b2;->j:LG/q0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_d

    :cond_10
    :goto_c
    move-object v5, v3

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :goto_e
    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, LM0/l0;->C1(LM0/b2;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
