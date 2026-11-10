.class public final LM0/U0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:LM0/X0;


# direct methods
.method public constructor <init>(LM0/X0;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, LM0/U0;->c:LM0/X0;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LM0/U0;->a:Z

    iput-boolean p1, p0, LM0/U0;->b:Z

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 3

    iget-boolean v0, p0, LM0/U0;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, LM0/U0;->a:Z

    iget-boolean p1, p0, LM0/U0;->b:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, LM0/U0;->b:Z

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, LM0/U0;->c:LM0/X0;

    iget-object v3, v2, LM0/X0;->g:LM0/W1;

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    iget-object v0, v2, LM0/X0;->s:LM0/b2;

    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object v4, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {v4}, LM0/d2;->X0()LG/q0;

    move-result-object v4

    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object v6, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {v6}, LM0/d2;->p()LM0/l2;

    move-result-object v6

    iget-object v7, v2, LM0/X0;->s:LM0/b2;

    iget v7, v7, LM0/b2;->k:I

    invoke-virtual {v0, v4, v6, v7}, LM0/b2;->n(LG/q0;LM0/l2;I)LM0/b2;

    move-result-object v0

    iput-object v0, v2, LM0/X0;->s:LM0/b2;

    iget-boolean v4, v1, LM0/U0;->a:Z

    iget-boolean v6, v1, LM0/U0;->b:Z

    invoke-virtual {v3, v0}, LM0/W1;->T0(LM0/b2;)LM0/b2;

    move-result-object v0

    invoke-virtual {v3, v0}, LM0/W1;->S0(LM0/b2;)LM0/b2;

    move-result-object v9

    iget-object v13, v9, LM0/b2;->F:LG/y0;

    iget-object v14, v9, LM0/b2;->j:LG/q0;

    iget-object v15, v3, LM0/W1;->b:LB/A;

    invoke-virtual {v15}, LB/A;->z()Lu1/P;

    move-result-object v7

    iget-object v0, v15, LB/A;->g:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lh/e;

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, LM0/N0;

    :try_start_0
    invoke-virtual {v15, v11}, LB/A;->K(LM0/N0;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v17, v2

    move/from16 v20, v4

    move-object/from16 v21, v7

    move-object v2, v8

    move/from16 v19, v10

    goto/16 :goto_f

    :cond_0
    invoke-virtual {v15}, LB/A;->V()V

    const/4 v0, 0x0

    invoke-virtual {v8, v11, v0}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LM0/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, LM0/g;->h:LG/q0;

    invoke-virtual {v15}, LB/A;->V()V

    invoke-virtual {v8, v11, v0}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, LM0/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LM0/g;->i:LG/y0;

    if-eqz v4, :cond_1

    invoke-virtual {v14, v12}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v20, v4

    :goto_1
    move-object/from16 v21, v7

    :goto_2
    move-object v2, v8

    move/from16 v19, v10

    move-object v4, v11

    goto/16 :goto_d

    :catch_1
    move-object/from16 v17, v2

    move/from16 v20, v4

    :goto_3
    move-object/from16 v21, v7

    :goto_4
    move-object v2, v8

    move/from16 v19, v10

    move-object v4, v11

    goto/16 :goto_e

    :cond_1
    move/from16 v17, v16

    :goto_5
    if-eqz v6, :cond_2

    invoke-virtual {v13, v5}, LG/y0;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_6

    :cond_2
    move-object/from16 v18, v12

    move/from16 v12, v16

    :goto_6
    invoke-virtual {v15, v11}, LB/A;->D(LM0/N0;)LM0/h2;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, LM0/h2;->k()I

    move-result v19

    goto :goto_7

    :cond_3
    invoke-virtual {v2, v11}, LM0/X0;->j(LM0/N0;)Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_10

    :cond_4
    move/from16 v19, v16

    :goto_7
    invoke-virtual {v15}, LB/A;->V()V

    invoke-virtual {v8, v11, v0}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, LM0/g;

    invoke-virtual {v15}, LB/A;->V()V

    invoke-virtual {v8, v11, v0}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, LM0/g;

    invoke-virtual {v15}, LB/A;->V()V

    invoke-virtual {v8, v11, v0}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, LM0/g;

    if-eqz v0, :cond_5

    iget-object v0, v0, LM0/g;->e:LG/c0;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_5
    const/4 v0, 0x0

    :goto_8
    :try_start_1
    invoke-virtual {v2}, LM0/X0;->x()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7

    move/from16 v20, v4

    :try_start_2
    iget-object v4, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {v4}, LM0/d2;->w()LG/c0;

    move-result-object v4

    invoke-static {v0, v4}, LM0/Y1;->k(LG/c0;LG/c0;)LG/c0;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v4, v7

    :try_start_3
    iget-object v7, v11, LM0/N0;->e:LM0/M0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v21, v4

    move-object v4, v11

    move/from16 v11, v17

    move-object/from16 v17, v2

    move-object v2, v8

    move/from16 v8, v19

    move/from16 v19, v10

    move-object v10, v0

    :try_start_4
    invoke-interface/range {v7 .. v12}, LM0/M0;->j(ILM0/b2;LG/c0;ZZ)V

    if-eqz v11, :cond_6

    move-object/from16 v0, v18

    goto :goto_9

    :cond_6
    move-object v0, v14

    :goto_9
    if-eqz v12, :cond_7

    goto :goto_a

    :cond_7
    move-object v5, v13

    :goto_a
    invoke-virtual {v15}, LB/A;->V()V

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM0/g;

    if-eqz v7, :cond_8

    iput-object v0, v7, LM0/g;->h:LG/q0;

    iput-object v5, v7, LM0/g;->i:LG/y0;
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v21, v4

    goto/16 :goto_2

    :catch_4
    move-object/from16 v17, v2

    move-object/from16 v21, v4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :goto_b
    move-object/from16 v17, v2

    goto/16 :goto_1

    :catch_6
    :goto_c
    move-object/from16 v17, v2

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move/from16 v20, v4

    goto :goto_b

    :catch_8
    move/from16 v20, v4

    goto :goto_c

    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception in "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaSessionImpl"

    invoke-static {v5, v4, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_9
    :goto_e
    iget-object v0, v3, LM0/W1;->b:LB/A;

    invoke-virtual {v0, v4}, LB/A;->Q(LM0/N0;)V

    :cond_8
    :goto_f
    add-int/lit8 v10, v19, 0x1

    move-object v8, v2

    move-object/from16 v2, v17

    move/from16 v4, v20

    move-object/from16 v7, v21

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    move v2, v5

    :goto_10
    iput-boolean v2, v1, LM0/U0;->a:Z

    iput-boolean v2, v1, LM0/U0;->b:Z

    return-void

    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid message what="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
