.class public final LM0/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/e0;


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(LM0/X0;LM0/d2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/V0;->e:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final C(LG/a0;)V
    .locals 2

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->e(LG/a0;)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v0, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, v0}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final D(LG/c0;)V
    .locals 2

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, LM0/X0;->h(LG/c0;)V

    return-void
.end method

.method public final E(I)V
    .locals 4

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1}, LM0/d2;->j()LG/Z;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    invoke-virtual {v1}, LM0/d2;->j()LG/Z;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v0, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, v0}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F(J)V
    .locals 42

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-object/from16 v34, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v35

    move-object/from16 v38, v1

    if-nez v35, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v40, v3

    move-object/from16 v4, v16

    move-object/from16 v16, v31

    move-object/from16 v31, v34

    move-wide/from16 v34, v40

    new-instance v3, LM0/b2;

    move-wide/from16 v36, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v0, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, LM0/U0;->a(ZZ)V

    return-void
.end method

.method public final G(LG/Z;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v4, v2, LM0/b2;->n:F

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v16, v3

    move/from16 v17, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v1}, LM0/X0;->x()V

    iget-object v1, v1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0, v1}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final I(Z)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->k(Z)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0, p1}, LM0/r1;->q(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final K(II)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, LM0/H;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, LM0/H;-><init>(III)V

    invoke-virtual {v0, v1}, LM0/X0;->f(LM0/W0;)V

    return-void
.end method

.method public final M(LI/c;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v21

    move-object/from16 v21, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v0, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, LM0/U0;->a(ZZ)V

    return-void
.end method

.method public final N(LG/T;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move-object/from16 v28, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v28

    move/from16 v28, v31

    move-object/from16 v31, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, LM0/r1;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final O(LG/T;)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->g(LG/T;)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0, p1}, LM0/r1;->o(LG/T;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final T(IZ)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1, p2}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->r:LM0/o1;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    iput p1, v0, LM0/o1;->d:I

    invoke-virtual {v0}, LM0/o1;->a()Landroid/media/VolumeProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionImpl"

    const-string v0, "Exception in using media1 API"

    invoke-static {p2, v0, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final U(Z)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LM0/X0;->x()V

    move-object/from16 v2, p0

    iget-object v0, v2, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/d2;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, LM0/X0;->s:LM0/b2;

    iget-object v4, v0, LM0/b2;->a:LG/Z;

    iget v5, v0, LM0/b2;->b:I

    iget-object v6, v0, LM0/b2;->c:LM0/l2;

    iget-object v7, v0, LM0/b2;->d:LG/f0;

    iget-object v8, v0, LM0/b2;->e:LG/f0;

    iget v9, v0, LM0/b2;->f:I

    iget-object v10, v0, LM0/b2;->g:LG/a0;

    iget v11, v0, LM0/b2;->h:I

    iget-boolean v12, v0, LM0/b2;->i:Z

    iget-object v14, v0, LM0/b2;->j:LG/q0;

    iget v15, v0, LM0/b2;->k:I

    iget-object v13, v0, LM0/b2;->l:LG/C0;

    iget-object v3, v0, LM0/b2;->m:LG/T;

    iget v2, v0, LM0/b2;->n:F

    move/from16 v17, v2

    iget v2, v0, LM0/b2;->o:F

    move/from16 v18, v2

    iget v2, v0, LM0/b2;->p:I

    move/from16 v20, v2

    iget-object v2, v0, LM0/b2;->q:LG/e;

    move-object/from16 v19, v2

    iget-object v2, v0, LM0/b2;->r:LI/c;

    move-object/from16 v21, v2

    iget-object v2, v0, LM0/b2;->s:LG/p;

    move-object/from16 v22, v2

    iget v2, v0, LM0/b2;->t:I

    move/from16 v23, v2

    iget-boolean v2, v0, LM0/b2;->u:Z

    move/from16 v24, v2

    iget-boolean v2, v0, LM0/b2;->v:Z

    move/from16 v25, v2

    iget v2, v0, LM0/b2;->w:I

    move/from16 v26, v2

    iget-boolean v2, v0, LM0/b2;->y:Z

    move/from16 v30, v2

    iget v2, v0, LM0/b2;->z:I

    move/from16 v27, v2

    iget v2, v0, LM0/b2;->A:I

    move/from16 v28, v2

    iget-object v2, v0, LM0/b2;->B:LG/T;

    move-object/from16 v31, v2

    move-object/from16 v16, v3

    iget-wide v2, v0, LM0/b2;->C:J

    move-wide/from16 v32, v2

    iget-wide v2, v0, LM0/b2;->D:J

    move-wide/from16 v34, v2

    iget-wide v2, v0, LM0/b2;->E:J

    move-wide/from16 v36, v2

    iget-object v2, v0, LM0/b2;->F:LG/y0;

    iget-object v0, v0, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v3

    move-object/from16 v39, v0

    if-nez v3, :cond_3

    iget-object v3, v6, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v0

    if-ge v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, LF1/i;->o(Z)V

    new-instance v3, LM0/b2;

    move/from16 v29, p1

    move-object/from16 v38, v2

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v1, LM0/X0;->s:LM0/b2;

    iget-object v0, v1, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v1, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v2, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object v2, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0, v2}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "MediaSessionImpl"

    const-string v3, "Exception in using media1 API"

    invoke-static {v2, v3, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v1}, LM0/X0;->v()V

    return-void
.end method

.method public final a(LG/C0;)V
    .locals 39

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v3, v1, LM0/b2;->a:LG/Z;

    iget v4, v1, LM0/b2;->b:I

    iget-object v5, v1, LM0/b2;->c:LM0/l2;

    iget-object v6, v1, LM0/b2;->d:LG/f0;

    iget-object v7, v1, LM0/b2;->e:LG/f0;

    iget v8, v1, LM0/b2;->f:I

    iget-object v9, v1, LM0/b2;->g:LG/a0;

    iget v10, v1, LM0/b2;->h:I

    iget-boolean v11, v1, LM0/b2;->i:Z

    iget-object v13, v1, LM0/b2;->j:LG/q0;

    iget v14, v1, LM0/b2;->k:I

    iget-object v15, v1, LM0/b2;->m:LG/T;

    iget v2, v1, LM0/b2;->n:F

    iget v12, v1, LM0/b2;->o:F

    move/from16 v16, v2

    iget v2, v1, LM0/b2;->p:I

    move/from16 v19, v2

    iget-object v2, v1, LM0/b2;->q:LG/e;

    move-object/from16 v18, v2

    iget-object v2, v1, LM0/b2;->r:LI/c;

    move-object/from16 v20, v2

    iget-object v2, v1, LM0/b2;->s:LG/p;

    move-object/from16 v21, v2

    iget v2, v1, LM0/b2;->t:I

    move/from16 v22, v2

    iget-boolean v2, v1, LM0/b2;->u:Z

    move/from16 v23, v2

    iget-boolean v2, v1, LM0/b2;->v:Z

    move/from16 v24, v2

    iget v2, v1, LM0/b2;->w:I

    move/from16 v25, v2

    iget-boolean v2, v1, LM0/b2;->x:Z

    move/from16 v28, v2

    iget-boolean v2, v1, LM0/b2;->y:Z

    move/from16 v29, v2

    iget v2, v1, LM0/b2;->z:I

    move/from16 v26, v2

    iget v2, v1, LM0/b2;->A:I

    move/from16 v27, v2

    iget-object v2, v1, LM0/b2;->B:LG/T;

    move-object/from16 v30, v2

    move-object/from16 v17, v3

    iget-wide v2, v1, LM0/b2;->C:J

    move-wide/from16 v31, v2

    iget-wide v2, v1, LM0/b2;->D:J

    move-wide/from16 v33, v2

    iget-wide v2, v1, LM0/b2;->E:J

    move-wide/from16 v35, v2

    iget-object v2, v1, LM0/b2;->F:LG/y0;

    iget-object v1, v1, LM0/b2;->G:LG/w0;

    invoke-virtual {v13}, LG/q0;->p()Z

    move-result v3

    move-object/from16 v38, v1

    if-nez v3, :cond_2

    iget-object v3, v5, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    invoke-virtual {v13}, LG/q0;->o()I

    move-result v1

    if-ge v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    move-object/from16 v37, v2

    new-instance v2, LM0/b2;

    move-object/from16 v3, v17

    move/from16 v17, v12

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v38}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()LM0/X0;
    .locals 1

    iget-object v0, p0, LM0/V0;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    return-object v0
.end method

.method public final d(I)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->i(I)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0, p1}, LM0/r1;->p(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(I)V
    .locals 4

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-boolean v2, v1, LM0/b2;->v:Z

    iget v3, v1, LM0/b2;->w:I

    invoke-virtual {v1, v3, p1, v2}, LM0/b2;->d(IIZ)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v0, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, v0}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f(J)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v32, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v33

    move-object/from16 v38, v1

    if-nez v33, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v31

    move-object/from16 v31, v32

    move-wide/from16 v32, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g(ILG/P;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v5, v2, LM0/b2;->n:F

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v17

    move/from16 v17, v5

    move/from16 v5, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, LM0/r1;->m(LG/P;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j(LG/q0;I)V
    .locals 45

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LM0/X0;->x()V

    move-object/from16 v3, p0

    iget-object v4, v3, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/d2;

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, LM0/d2;->p()LM0/l2;

    move-result-object v4

    if-nez v1, :cond_4

    iget-object v7, v2, LM0/X0;->s:LM0/b2;

    iget-object v7, v7, LM0/b2;->j:LG/q0;

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, LM0/X0;->s:LM0/b2;

    iget-object v9, v7, LM0/b2;->a:LG/Z;

    iget v10, v7, LM0/b2;->b:I

    iget-object v11, v7, LM0/b2;->c:LM0/l2;

    iget v14, v7, LM0/b2;->f:I

    iget-object v15, v7, LM0/b2;->g:LG/a0;

    iget v8, v7, LM0/b2;->h:I

    iget-boolean v12, v7, LM0/b2;->i:Z

    iget-object v13, v7, LM0/b2;->j:LG/q0;

    iget v5, v7, LM0/b2;->k:I

    iget-object v6, v7, LM0/b2;->l:LG/C0;

    iget-object v3, v7, LM0/b2;->m:LG/T;

    move-object/from16 v21, v3

    iget v3, v7, LM0/b2;->n:F

    move/from16 v22, v3

    iget v3, v7, LM0/b2;->o:F

    move/from16 v23, v3

    iget v3, v7, LM0/b2;->p:I

    move/from16 v25, v3

    iget-object v3, v7, LM0/b2;->q:LG/e;

    move-object/from16 v24, v3

    iget-object v3, v7, LM0/b2;->r:LI/c;

    move-object/from16 v26, v3

    iget-object v3, v7, LM0/b2;->s:LG/p;

    move-object/from16 v27, v3

    iget v3, v7, LM0/b2;->t:I

    move/from16 v28, v3

    iget-boolean v3, v7, LM0/b2;->u:Z

    move/from16 v29, v3

    iget-boolean v3, v7, LM0/b2;->v:Z

    move/from16 v30, v3

    iget v3, v7, LM0/b2;->w:I

    move/from16 v31, v3

    iget-boolean v3, v7, LM0/b2;->x:Z

    move/from16 v34, v3

    iget-boolean v3, v7, LM0/b2;->y:Z

    move/from16 v35, v3

    iget v3, v7, LM0/b2;->z:I

    move/from16 v32, v3

    iget v3, v7, LM0/b2;->A:I

    move/from16 v33, v3

    iget-object v3, v7, LM0/b2;->B:LG/T;

    move/from16 v20, v5

    move-object/from16 v18, v6

    iget-wide v5, v7, LM0/b2;->C:J

    move-wide/from16 v37, v5

    iget-wide v5, v7, LM0/b2;->D:J

    move-wide/from16 v39, v5

    iget-wide v5, v7, LM0/b2;->E:J

    move-object/from16 v36, v3

    iget-object v3, v7, LM0/b2;->F:LG/y0;

    move-object/from16 v43, v3

    iget-object v3, v7, LM0/b2;->G:LG/w0;

    iget-object v7, v7, LM0/b2;->e:LG/f0;

    move-object/from16 v19, v13

    iget-object v13, v4, LM0/l2;->a:LG/f0;

    invoke-virtual/range {v19 .. v19}, LG/q0;->p()Z

    move-result v16

    move-object/from16 v44, v3

    if-nez v16, :cond_3

    iget-object v3, v11, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    move-wide/from16 v41, v5

    invoke-virtual/range {v19 .. v19}, LG/q0;->o()I

    move-result v5

    if-ge v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 v41, v5

    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, LF1/i;->o(Z)V

    move/from16 v16, v8

    new-instance v8, LM0/b2;

    move/from16 v17, v12

    move-object v12, v7

    invoke-direct/range {v8 .. v44}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v8, v2, LM0/X0;->s:LM0/b2;

    :cond_4
    iget-object v3, v2, LM0/X0;->s:LM0/b2;

    invoke-virtual {v3, v0, v4, v1}, LM0/b2;->n(LG/q0;LM0/l2;I)LM0/b2;

    move-result-object v1

    iput-object v1, v2, LM0/X0;->s:LM0/b2;

    iget-object v1, v2, LM0/X0;->c:LM0/U0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v1, v2, LM0/X0;->h:LM0/t1;

    iget-object v1, v1, LM0/t1;->k:LM0/r1;

    invoke-virtual {v1, v0}, LM0/r1;->r(LG/q0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k(LG/y0;)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->b(LG/y0;)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, LM0/U0;->a(ZZ)V

    new-instance p1, LG/v;

    const/16 v1, 0x18

    invoke-direct {p1, v1}, LG/v;-><init>(I)V

    invoke-virtual {v0, p1}, LM0/X0;->f(LM0/W0;)V

    return-void
.end method

.method public final l(ILG/f0;LG/f0;)V
    .locals 2

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1, p2, p3}, LM0/b2;->h(ILG/f0;LG/f0;)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p2, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p2}, LM0/X0;->x()V

    iget-object p2, p2, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, p2}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionImpl"

    const-string p3, "Exception in using media1 API"

    invoke-static {p2, p3, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(J)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v31, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v34, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v35

    move-object/from16 v38, v1

    if-nez v35, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v31

    move-object/from16 v31, v34

    move-wide/from16 v34, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n(LG/w0;)V
    .locals 2

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->o(LG/w0;)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, LM0/U0;->a(ZZ)V

    new-instance p1, LG/v;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, LG/v;-><init>(I)V

    invoke-virtual {v0, p1}, LM0/X0;->f(LM0/W0;)V

    return-void
.end method

.method public final o(LG/e;)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->a(LG/e;)LM0/b2;

    move-result-object v1

    iput-object v1, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    iget-object v0, v0, LM0/r1;->i:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v1}, LM0/X0;->x()V

    iget-object v1, v1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1}, LM0/d2;->Y()LG/p;

    move-result-object v1

    iget v1, v1, LG/p;->a:I

    if-nez v1, :cond_2

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Z)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LM0/X0;->x()V

    move-object/from16 v2, p0

    iget-object v0, v2, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/d2;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, LM0/X0;->s:LM0/b2;

    iget-object v4, v0, LM0/b2;->a:LG/Z;

    iget v5, v0, LM0/b2;->b:I

    iget-object v6, v0, LM0/b2;->c:LM0/l2;

    iget-object v7, v0, LM0/b2;->d:LG/f0;

    iget-object v8, v0, LM0/b2;->e:LG/f0;

    iget v9, v0, LM0/b2;->f:I

    iget-object v10, v0, LM0/b2;->g:LG/a0;

    iget v11, v0, LM0/b2;->h:I

    iget-boolean v12, v0, LM0/b2;->i:Z

    iget-object v14, v0, LM0/b2;->j:LG/q0;

    iget v15, v0, LM0/b2;->k:I

    iget-object v13, v0, LM0/b2;->l:LG/C0;

    iget-object v3, v0, LM0/b2;->m:LG/T;

    iget v2, v0, LM0/b2;->n:F

    move/from16 v17, v2

    iget v2, v0, LM0/b2;->o:F

    move/from16 v18, v2

    iget v2, v0, LM0/b2;->p:I

    move/from16 v20, v2

    iget-object v2, v0, LM0/b2;->q:LG/e;

    move-object/from16 v19, v2

    iget-object v2, v0, LM0/b2;->r:LI/c;

    move-object/from16 v21, v2

    iget-object v2, v0, LM0/b2;->s:LG/p;

    move-object/from16 v22, v2

    iget v2, v0, LM0/b2;->t:I

    move/from16 v23, v2

    iget-boolean v2, v0, LM0/b2;->u:Z

    move/from16 v24, v2

    iget-boolean v2, v0, LM0/b2;->v:Z

    move/from16 v25, v2

    iget v2, v0, LM0/b2;->w:I

    move/from16 v26, v2

    iget-boolean v2, v0, LM0/b2;->x:Z

    move/from16 v29, v2

    iget v2, v0, LM0/b2;->z:I

    move/from16 v27, v2

    iget v2, v0, LM0/b2;->A:I

    move/from16 v28, v2

    iget-object v2, v0, LM0/b2;->B:LG/T;

    move-object/from16 v31, v2

    move-object/from16 v16, v3

    iget-wide v2, v0, LM0/b2;->C:J

    move-wide/from16 v32, v2

    iget-wide v2, v0, LM0/b2;->D:J

    move-wide/from16 v34, v2

    iget-wide v2, v0, LM0/b2;->E:J

    move-wide/from16 v36, v2

    iget-object v2, v0, LM0/b2;->F:LG/y0;

    iget-object v0, v0, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v3

    move-object/from16 v39, v0

    if-nez v3, :cond_3

    iget-object v3, v6, LM0/l2;->a:LG/f0;

    iget v3, v3, LG/f0;->b:I

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v0

    if-ge v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, LF1/i;->o(Z)V

    new-instance v3, LM0/b2;

    move/from16 v30, p1

    move-object/from16 v38, v2

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v1, LM0/X0;->s:LM0/b2;

    iget-object v0, v1, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v1, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "MediaSessionImpl"

    const-string v3, "Exception in using media1 API"

    invoke-static {v2, v3, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v1}, LM0/X0;->v()V

    return-void
.end method

.method public final q()V
    .locals 7

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->g:LM0/W1;

    iget-object v1, v1, LM0/W1;->b:LB/A;

    invoke-virtual {v1}, LB/A;->z()Lu1/P;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/N0;

    invoke-virtual {v1}, LB/A;->V()V

    iget-object v5, v1, LB/A;->g:Ljava/lang/Object;

    check-cast v5, Lh/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/g;

    new-instance v5, LG/v;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, LG/v;-><init>(I)V

    invoke-virtual {v0, v4, v5}, LM0/X0;->e(LM0/N0;LM0/W0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final v(IZ)V
    .locals 3

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, p0, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/d2;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    iget v2, v1, LM0/b2;->z:I

    invoke-virtual {v1, p1, v2, p2}, LM0/b2;->d(IIZ)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    iget-object p1, p1, LM0/r1;->i:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p2, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p2}, LM0/X0;->x()V

    iget-object p2, p2, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, p2}, LM0/t1;->Q(LM0/d2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionImpl"

    const-string v0, "Exception in using media1 API"

    invoke-static {p2, v0, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x(F)V
    .locals 2

    invoke-virtual {p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->s:LM0/b2;

    invoke-virtual {v1, p1}, LM0/b2;->p(F)LM0/b2;

    move-result-object p1

    iput-object p1, v0, LM0/X0;->s:LM0/b2;

    iget-object p1, v0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object p1, v0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final y(LG/p;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget v1, v2, LM0/b2;->p:I

    move/from16 v20, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v22, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v22

    move-object/from16 v22, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, LM0/r1;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z(I)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, LM0/V0;->b()LM0/X0;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    move-object/from16 v1, p0

    iget-object v2, v1, LM0/V0;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/d2;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, LM0/X0;->s:LM0/b2;

    iget-object v4, v2, LM0/b2;->a:LG/Z;

    iget v5, v2, LM0/b2;->b:I

    iget-object v6, v2, LM0/b2;->c:LM0/l2;

    iget-object v7, v2, LM0/b2;->d:LG/f0;

    iget-object v8, v2, LM0/b2;->e:LG/f0;

    iget v9, v2, LM0/b2;->f:I

    iget-object v10, v2, LM0/b2;->g:LG/a0;

    iget v11, v2, LM0/b2;->h:I

    iget-boolean v12, v2, LM0/b2;->i:Z

    iget-object v14, v2, LM0/b2;->j:LG/q0;

    iget v15, v2, LM0/b2;->k:I

    iget-object v13, v2, LM0/b2;->l:LG/C0;

    iget-object v3, v2, LM0/b2;->m:LG/T;

    iget v1, v2, LM0/b2;->n:F

    move/from16 v17, v1

    iget v1, v2, LM0/b2;->o:F

    move/from16 v18, v1

    iget-object v1, v2, LM0/b2;->q:LG/e;

    move-object/from16 v19, v1

    iget-object v1, v2, LM0/b2;->r:LI/c;

    move-object/from16 v21, v1

    iget-object v1, v2, LM0/b2;->s:LG/p;

    move-object/from16 v22, v1

    iget v1, v2, LM0/b2;->t:I

    move/from16 v23, v1

    iget-boolean v1, v2, LM0/b2;->u:Z

    move/from16 v24, v1

    iget-boolean v1, v2, LM0/b2;->v:Z

    move/from16 v25, v1

    iget v1, v2, LM0/b2;->w:I

    move/from16 v26, v1

    iget-boolean v1, v2, LM0/b2;->x:Z

    move/from16 v29, v1

    iget-boolean v1, v2, LM0/b2;->y:Z

    move/from16 v30, v1

    iget v1, v2, LM0/b2;->z:I

    move/from16 v27, v1

    iget v1, v2, LM0/b2;->A:I

    move/from16 v28, v1

    iget-object v1, v2, LM0/b2;->B:LG/T;

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    iget-wide v3, v2, LM0/b2;->C:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, LM0/b2;->D:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, LM0/b2;->E:J

    move-object/from16 v31, v1

    iget-object v1, v2, LM0/b2;->F:LG/y0;

    iget-object v2, v2, LM0/b2;->G:LG/w0;

    invoke-virtual {v14}, LG/q0;->p()Z

    move-result v36

    move-object/from16 v38, v1

    if-nez v36, :cond_3

    iget-object v1, v6, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    move-object/from16 v39, v2

    invoke-virtual {v14}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v39, v2

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    move-wide/from16 v36, v3

    new-instance v3, LM0/b2;

    move-object/from16 v4, v16

    move-object/from16 v16, v20

    move/from16 v20, p1

    invoke-direct/range {v3 .. v39}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    iput-object v3, v0, LM0/X0;->s:LM0/b2;

    iget-object v1, v0, LM0/X0;->c:LM0/U0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, LM0/U0;->a(ZZ)V

    :try_start_0
    iget-object v0, v0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
