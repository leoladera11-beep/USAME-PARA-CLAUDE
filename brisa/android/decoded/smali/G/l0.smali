.class public final synthetic LG/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/j;
.implements LJ/q;
.implements LM0/x0;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, LG/l0;->e:I

    iput p1, p0, LG/l0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILM0/i2;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    const/4 p2, 0x3

    iput p2, p0, LG/l0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/l0;->f:I

    return-void
.end method

.method public synthetic constructor <init>(LO/a;ILG/f0;LG/f0;)V
    .locals 0

    .line 3
    const/16 p1, 0xb

    iput p1, p0, LG/l0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LG/l0;->f:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LG/l0;->e:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LG/l0;->f:I

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->B0(I)V

    return-void

    :pswitch_0
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->b0(I)V

    return-void

    :pswitch_1
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->e0(I)V

    return-void

    :pswitch_2
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0}, LM0/d2;->D(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    move-object/from16 v0, p0

    iget v1, v0, LG/l0;->e:I

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget v8, v0, LG/l0;->f:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/os/Bundle;

    sget-object v9, LG/n0;->h:Ljava/lang/String;

    invoke-virtual {v1, v9, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    sget-object v9, LG/n0;->i:Ljava/lang/String;

    invoke-virtual {v1, v9, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sget-object v9, LG/n0;->j:Ljava/lang/String;

    invoke-virtual {v1, v9, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    sget-object v9, LG/n0;->k:Ljava/lang/String;

    invoke-virtual {v1, v9, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    sget-object v9, LG/n0;->l:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_10

    sget-object v10, LG/c;->h:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_0

    new-array v2, v7, [LG/a;

    move-object/from16 v21, v2

    goto/16 :goto_10

    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [LG/a;

    move v12, v7

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_f

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v5, LG/a;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    sget-object v5, LG/a;->n:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v23

    sget-object v5, LG/a;->t:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v24

    sget-object v5, LG/a;->o:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    sget-object v6, LG/a;->u:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v3, LG/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    sget-object v4, LG/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    sget-object v7, LG/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    sget-object v7, LG/a;->s:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    sget-object v7, LG/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    sget-object v0, LG/a;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 p1, v3

    sget-object v3, LG/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    new-instance v20, LG/a;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    new-array v3, v2, [I

    move-object/from16 v25, v3

    goto :goto_1

    :cond_1
    move-object/from16 v25, p1

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LG/P;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v8, v5}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v5

    :goto_3
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v26, v2

    move-object/from16 p1, v4

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_4
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LG/P;

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v35, v6

    check-cast v35, Landroid/net/Uri;

    if-nez v35, :cond_5

    move-object/from16 v26, v2

    move/from16 v27, v3

    move-object/from16 p1, v4

    const/16 v42, 0x0

    goto :goto_8

    :cond_5
    sget-object v6, LG/P;->g:LG/P;

    new-instance v6, LG/D;

    invoke-direct {v6}, LG/D;-><init>()V

    move-object/from16 v26, v2

    new-instance v2, LG/G;

    invoke-direct {v2}, LG/G;-><init>()V

    sget-object v39, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v41, Lu1/C0;->i:Lu1/C0;

    move/from16 v27, v3

    new-instance v3, LG/I;

    invoke-direct {v3}, LG/I;-><init>()V

    sget-object v48, LG/L;->d:LG/L;

    move-object/from16 p1, v4

    iget-object v4, v2, LG/G;->b:Landroid/net/Uri;

    if-eqz v4, :cond_7

    iget-object v4, v2, LG/G;->a:Ljava/util/UUID;

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, LF1/i;->o(Z)V

    new-instance v45, LG/K;

    iget-object v4, v2, LG/G;->a:Ljava/util/UUID;

    if-eqz v4, :cond_8

    new-instance v4, LG/H;

    invoke-direct {v4, v2}, LG/H;-><init>(LG/G;)V

    move-object/from16 v37, v4

    goto :goto_7

    :cond_8
    const/16 v37, 0x0

    :goto_7
    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const-wide v42, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v34, v45

    invoke-direct/range {v34 .. v43}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    new-instance v42, LG/P;

    new-instance v2, LG/F;

    invoke-direct {v2, v6}, LG/E;-><init>(LG/D;)V

    new-instance v4, LG/J;

    invoke-direct {v4, v3}, LG/J;-><init>(LG/I;)V

    sget-object v47, LG/T;->M:LG/T;

    const-string v43, ""

    move-object/from16 v44, v2

    move-object/from16 v46, v4

    invoke-direct/range {v42 .. v48}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    :goto_8
    aput-object v42, v26, v27

    add-int/lit8 v3, v27, 0x1

    move-object/from16 v4, p1

    move-object/from16 v2, v26

    goto/16 :goto_4

    :cond_9
    move-object/from16 p1, v4

    const/4 v2, 0x0

    new-array v3, v2, [LG/P;

    move-object/from16 v26, v3

    :goto_9
    if-nez p1, :cond_a

    new-array v4, v2, [J

    move-object/from16 v27, v4

    goto :goto_a

    :cond_a
    move-object/from16 v27, p1

    :goto_a
    new-array v3, v2, [Ljava/lang/String;

    if-nez v7, :cond_b

    :goto_b
    move-object/from16 v31, v3

    goto :goto_c

    :cond_b
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_b

    :goto_c
    if-nez v0, :cond_c

    new-array v0, v2, [LG/b;

    move-object/from16 v32, v0

    goto :goto_f

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [LG/b;

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_d

    const/16 v34, 0x0

    goto :goto_e

    :cond_d
    new-instance v34, LG/b;

    sget-object v5, LG/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v35

    sget-object v5, LG/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v37

    sget-object v5, LG/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v34 .. v39}, LG/b;-><init>(JJLjava/lang/String;)V

    :goto_e
    aput-object v34, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_e
    move-object/from16 v32, v2

    :goto_f
    invoke-direct/range {v20 .. v33}, LG/a;-><init>(JII[I[LG/P;[JJZ[Ljava/lang/String;[LG/b;Z)V

    aput-object v20, v11, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v21, v11

    :goto_10
    sget-object v0, LG/c;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    sget-object v0, LG/c;->j:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    sget-object v0, LG/c;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    new-instance v20, LG/c;

    invoke-direct/range {v20 .. v26}, LG/c;-><init>([LG/a;JJI)V

    :goto_11
    move-object/from16 v18, v20

    goto :goto_12

    :cond_10
    sget-object v20, LG/c;->f:LG/c;

    goto :goto_11

    :goto_12
    sget-object v0, LG/n0;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v0, LG/n0;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v10, LG/n0;

    invoke-direct {v10}, LG/n0;-><init>()V

    invoke-virtual/range {v10 .. v19}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    return-object v10

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, LG/p0;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v8, v1}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v1

    :goto_13
    move-object/from16 v36, v1

    goto :goto_14

    :cond_11
    sget-object v1, LG/P;->g:LG/P;

    goto :goto_13

    :goto_14
    sget-object v1, LG/p0;->s:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v37

    sget-object v1, LG/p0;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v39

    sget-object v1, LG/p0;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v41

    sget-object v1, LG/p0;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    sget-object v1, LG/p0;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    sget-object v1, LG/p0;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {v1}, LG/J;->b(Landroid/os/Bundle;)LG/J;

    move-result-object v1

    move-object/from16 v45, v1

    goto :goto_15

    :cond_12
    const/16 v45, 0x0

    :goto_15
    sget-object v1, LG/p0;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, LG/p0;->z:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v46

    sget-object v3, LG/p0;->A:Ljava/lang/String;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v48

    sget-object v3, LG/p0;->B:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v50

    sget-object v3, LG/p0;->C:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v51

    sget-object v2, LG/p0;->D:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v52

    sget-object v2, LG/p0;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    sget-object v0, LG/p0;->p:Ljava/lang/Object;

    :cond_13
    move-object/from16 v35, v0

    new-instance v34, LG/p0;

    invoke-direct/range {v34 .. v34}, LG/p0;-><init>()V

    invoke-virtual/range {v34 .. v53}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    move-object/from16 v0, v34

    iput-boolean v1, v0, LG/p0;->j:Z

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(LM0/l0;)V
    .locals 1

    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, LM0/l0;->l:Landroid/util/SparseArray;

    iget v0, p0, LG/l0;->f:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LG/l0;->e:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, LO/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LG/l0;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p1, LO/i;->v:Z

    :cond_0
    iput v0, p1, LO/i;->l:I

    return-void

    :sswitch_0
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->z(I)V

    return-void

    :sswitch_1
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->d(I)V

    return-void

    :sswitch_2
    iget v0, p0, LG/l0;->f:I

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->d(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
