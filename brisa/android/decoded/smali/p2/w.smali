.class public final enum Lp2/w;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InBody"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lp2/c;->e:Ljava/util/ArrayList;

    sget-object v4, Lp2/b;->r:[Ljava/lang/String;

    sget-object v5, Lp2/b;->u:[Ljava/lang/String;

    sget-object v6, Lp2/b;->y:[Ljava/lang/String;

    iget v7, v1, Lp2/Q;->a:I

    invoke-static {v7}, Lz/K;->b(I)I

    move-result v7

    if-eqz v7, :cond_c2

    const-string v9, "h5"

    const-string v10, "h4"

    const-string v12, "h3"

    const-string v13, "h2"

    const-string v14, "h1"

    const-string v15, "dt"

    const-string v11, "dd"

    const-string v8, "p"

    move-object/from16 v18, v4

    const-string v4, "li"

    move-object/from16 v19, v5

    const-string v5, "br"

    move-object/from16 v20, v3

    sget-object v3, Lp2/A;->h:Lp2/u;

    move-object/from16 v22, v3

    const-string v3, "template"

    move-object/from16 v23, v3

    const-string v3, "http://www.w3.org/1999/xhtml"

    move-object/from16 v24, v3

    const-string v3, "body"

    move-object/from16 v25, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_58

    move/from16 v27, v8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    const/4 v3, 0x6

    if-ne v7, v3, :cond_2

    iget-object v3, v2, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lp2/A;->u:Lp2/k;

    invoke-virtual {v3, v1, v2}, Lp2/k;->d(Lp2/Q;Lp2/c;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v2, v6}, Lp2/c;->D([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    return v27

    :cond_1
    move-object v1, v0

    goto/16 :goto_2f

    :cond_2
    iget v1, v1, Lp2/Q;->a:I

    invoke-static {v1}, LB1/e;->t(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected state: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    check-cast v1, Lp2/I;

    iget-boolean v3, v2, Lp2/c;->w:Z

    if-eqz v3, :cond_4

    invoke-static {v1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lp2/c;->L()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lp2/c;->t(Lp2/I;Z)V

    return v27

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v1, v3}, Lp2/c;->t(Lp2/I;Z)V

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v27

    :cond_5
    check-cast v1, Lp2/J;

    invoke-virtual {v2, v1}, Lp2/c;->v(Lp2/J;)V

    return v27

    :cond_6
    const/4 v8, 0x4

    const/16 v21, 0x6

    move-object v7, v1

    check-cast v7, Lp2/M;

    invoke-virtual {v7}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    :goto_0
    move-object/from16 v4, v23

    :goto_1
    const/4 v11, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "sarcasm"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v11, 0x10

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "span"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 v11, 0xf

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "html"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v11, 0xe

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "form"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    const/16 v11, 0xd

    goto :goto_2

    :sswitch_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    const/16 v11, 0xc

    goto :goto_2

    :sswitch_5
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_0

    :cond_c
    const/16 v11, 0xb

    goto :goto_2

    :sswitch_6
    const-string v4, "h6"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_0

    :cond_d
    const/16 v11, 0xa

    goto :goto_2

    :sswitch_7
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_0

    :cond_e
    const/16 v11, 0x9

    goto :goto_2

    :sswitch_8
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_0

    :cond_f
    move-object/from16 v4, v23

    const/16 v11, 0x8

    goto/16 :goto_3

    :sswitch_9
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_0

    :cond_10
    move-object/from16 v4, v23

    const/4 v11, 0x7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    move/from16 v11, v21

    :goto_2
    move-object/from16 v4, v23

    goto :goto_3

    :sswitch_b
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    move-object/from16 v4, v23

    const/4 v11, 0x5

    goto :goto_3

    :sswitch_c
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_0

    :cond_13
    move-object/from16 v4, v23

    const/4 v11, 0x4

    goto :goto_3

    :sswitch_d
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    move-object/from16 v4, v23

    const/4 v11, 0x3

    goto :goto_3

    :sswitch_e
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_0

    :cond_15
    move-object/from16 v4, v23

    const/4 v11, 0x2

    goto :goto_3

    :sswitch_f
    move-object/from16 v4, v25

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    move-object/from16 v4, v23

    move/from16 v11, v27

    goto :goto_3

    :sswitch_10
    move-object/from16 v4, v23

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_1

    :cond_17
    const/4 v11, 0x0

    :goto_3
    sget-object v9, Lp2/A;->v:Lp2/l;

    packed-switch v11, :pswitch_data_0

    sget-object v4, Lp2/b;->z:[Ljava/lang/String;

    invoke-static {v8, v4}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v7, Lp2/O;->e:Ljava/lang/String;

    move-object/from16 v6, v24

    invoke-virtual {v2, v4, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v2}, Lp2/c;->h()Lo2/j;

    move-result-object v5

    iget-object v6, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v2}, Lp2/c;->E()Lo2/j;

    return v27

    :cond_18
    const/4 v5, 0x0

    :goto_4
    const/16 v7, 0x8

    if-lt v5, v7, :cond_19

    :goto_5
    move/from16 v8, v27

    goto/16 :goto_c

    :cond_19
    add-int/lit8 v5, v5, 0x1

    iget-object v6, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_6
    if-ltz v6, :cond_1c

    iget-object v8, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo2/j;

    if-nez v8, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v9, v8, Lo2/j;->h:Lp2/E;

    iget-object v9, v9, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_8

    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_1c
    :goto_7
    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_1d

    invoke-virtual/range {p0 .. p2}, Lp2/w;->e(Lp2/Q;Lp2/c;)Z

    move-result v8

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v9, v20

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v8}, Lp2/c;->N(Lo2/j;)V

    goto :goto_5

    :cond_1e
    iget-object v6, v8, Lo2/j;->h:Lp2/E;

    iget-object v6, v6, Lp2/E;->g:Ljava/lang/String;

    move/from16 v10, v27

    invoke-virtual {v2, v10, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/4 v8, 0x0

    goto :goto_c

    :cond_1f
    invoke-virtual {v2}, Lp2/c;->h()Lo2/j;

    move-result-object v6

    if-eq v6, v8, :cond_20

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_20
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_22

    :cond_21
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_22

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo2/j;

    iget-object v11, v10, Lo2/j;->h:Lp2/E;

    const/16 v12, 0x80

    invoke-virtual {v11, v12}, Lp2/E;->b(I)Z

    move-result v11

    if-eqz v11, :cond_21

    goto :goto_9

    :cond_22
    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_24

    :goto_a
    invoke-virtual {v2}, Lp2/c;->h()Lo2/j;

    move-result-object v1

    if-eq v1, v8, :cond_23

    invoke-virtual {v2}, Lp2/c;->E()Lo2/j;

    goto :goto_a

    :cond_23
    invoke-virtual {v2}, Lp2/c;->E()Lo2/j;

    invoke-virtual {v2, v8}, Lp2/c;->N(Lo2/j;)V

    :goto_b
    const/4 v8, 0x1

    goto :goto_c

    :cond_24
    invoke-virtual {v2, v8}, Lp2/c;->a(Lo2/j;)Lo2/j;

    move-result-object v6

    if-nez v6, :cond_25

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    goto :goto_b

    :goto_c
    return v8

    :cond_25
    const/4 v11, 0x0

    :goto_d
    iget-object v12, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_27

    iget-object v12, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_26

    goto :goto_e

    :cond_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_27
    const/4 v11, -0x1

    :goto_e
    move-object v13, v10

    move-object v14, v13

    const/4 v12, 0x0

    :goto_f
    const/16 v27, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_28

    iget-object v13, v13, Lo2/p;->e:Lo2/j;

    goto :goto_10

    :cond_28
    invoke-virtual {v2, v13}, Lp2/c;->a(Lo2/j;)Lo2/j;

    move-result-object v13

    :goto_10
    if-eqz v13, :cond_29

    invoke-virtual {v13, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2a

    :cond_29
    move-object/from16 v16, v4

    move/from16 v18, v5

    goto/16 :goto_17

    :cond_2a
    if-ne v13, v8, :cond_2b

    :goto_11
    move-object/from16 v16, v4

    move/from16 v18, v5

    goto/16 :goto_18

    :cond_2b
    const/4 v15, 0x3

    if-le v12, v15, :cond_2c

    iget-object v15, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-virtual {v2, v13}, Lp2/c;->N(Lo2/j;)V

    goto :goto_11

    :cond_2c
    iget-object v15, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    invoke-virtual {v2, v13}, Lp2/c;->O(Lo2/j;)V

    goto :goto_f

    :cond_2d
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v13}, Lp2/c;->N(Lo2/j;)V

    goto :goto_11

    :cond_2e
    invoke-static {v13}, Lp2/c;->M(Lo2/j;)Lo2/j;

    move-result-object v15

    iget-object v7, v2, Lp2/c;->r:Ljava/util/ArrayList;

    move-object/from16 v16, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    move/from16 v18, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    const/16 v19, 0x1

    goto :goto_12

    :cond_2f
    const/16 v19, 0x0

    :goto_12
    invoke-static/range {v19 .. v19}, LS1/e;->m(Z)V

    invoke-virtual {v7, v4, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v5, :cond_30

    const/4 v5, 0x1

    goto :goto_13

    :cond_30
    const/4 v5, 0x0

    :goto_13
    invoke-static {v5}, LS1/e;->m(Z)V

    invoke-virtual {v9, v4, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v14, v10, :cond_33

    const/4 v4, 0x0

    :goto_14
    iget-object v5, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_32

    iget-object v5, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v15, v5, :cond_31

    :goto_15
    const/16 v27, 0x1

    goto :goto_16

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_32
    const/4 v4, -0x1

    goto :goto_15

    :goto_16
    add-int/lit8 v4, v4, 0x1

    move v11, v4

    :cond_33
    invoke-virtual {v15, v14}, Lo2/j;->F(Lo2/p;)V

    move-object v13, v15

    move-object v14, v13

    move-object/from16 v4, v16

    move/from16 v5, v18

    const/16 v7, 0x8

    goto/16 :goto_f

    :goto_17
    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :goto_18
    invoke-virtual {v6, v14}, Lo2/j;->F(Lo2/p;)V

    invoke-static {v8}, Lp2/c;->M(Lo2/j;)Lo2/j;

    move-result-object v4

    iget-object v5, v10, Lo2/j;->i:Lo2/i;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-nez v5, :cond_34

    sget-object v5, Lo2/p;->g:Ljava/util/List;

    goto :goto_19

    :cond_34
    invoke-virtual {v10}, Lo2/j;->k()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/p;

    invoke-virtual {v4, v6}, Lo2/j;->F(Lo2/p;)V

    goto :goto_1a

    :cond_35
    invoke-virtual {v10, v4}, Lo2/j;->F(Lo2/p;)V

    invoke-virtual {v2, v8}, Lp2/c;->N(Lo2/j;)V

    invoke-virtual {v2, v4}, Lp2/c;->b(Lo2/j;)V

    :try_start_0
    iget-object v5, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    :catch_0
    iget-object v5, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    invoke-virtual {v2, v8}, Lp2/c;->O(Lo2/j;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_36

    const-string v5, "Did not find element on stack to insert after"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lp2/c;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_36
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1c
    move-object/from16 v20, v9

    move-object/from16 v4, v16

    move/from16 v5, v18

    const/16 v27, 0x1

    goto/16 :goto_4

    :cond_37
    move-object/from16 v6, v24

    sget-object v3, Lp2/b;->x:[Ljava/lang/String;

    invoke-static {v8, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/4 v3, 0x0

    return v3

    :cond_38
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lp2/c;->o(Z)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_39
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    return v10

    :cond_3a
    move-object/from16 v3, v19

    const/4 v10, 0x1

    invoke-static {v8, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v1, "name"

    invoke-virtual {v2, v10, v1}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v2, v10, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/4 v3, 0x0

    return v3

    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lp2/c;->o(Z)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_3c
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {v2}, Lp2/c;->c()V

    const/16 v27, 0x1

    return v27

    :cond_3d
    move-object v1, v0

    :cond_3e
    move/from16 v27, v10

    goto/16 :goto_2f

    :cond_3f
    invoke-virtual/range {p0 .. p2}, Lp2/w;->e(Lp2/Q;Lp2/c;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lp2/w;->e(Lp2/Q;Lp2/c;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-virtual {v2, v3}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/16 v17, 0x0

    return v17

    :cond_40
    invoke-virtual {v2, v6}, Lp2/c;->D([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_41
    iput-object v9, v2, Lp2/c;->m:Lp2/A;

    invoke-virtual {v2, v1}, Lp2/c;->H(Lp2/Q;)Z

    move-result v1

    return v1

    :pswitch_2
    move-object/from16 v6, v24

    invoke-virtual {v2, v4}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, v2, Lp2/c;->q:Lo2/m;

    const/4 v3, 0x0

    iput-object v3, v2, Lp2/c;->q:Lo2/m;

    if-eqz v1, :cond_42

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_42
    const/4 v4, 0x0

    goto :goto_1d

    :cond_43
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lp2/c;->o(Z)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_44
    invoke-virtual {v2, v1}, Lp2/c;->O(Lo2/j;)V

    return v10

    :goto_1d
    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_45
    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_46
    invoke-virtual {v2, v4}, Lp2/c;->o(Z)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_47
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    return v10

    :pswitch_3
    move/from16 v10, v27

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    return v4

    :cond_48
    invoke-virtual {v2, v6}, Lp2/c;->D([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_49
    invoke-virtual {v2, v3}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    iput-object v9, v2, Lp2/c;->m:Lp2/A;

    return v10

    :pswitch_4
    move-object/from16 v6, v24

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/16 v17, 0x0

    return v17

    :cond_4a
    invoke-virtual {v2, v8}, Lp2/c;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_4b
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    const/16 v27, 0x1

    return v27

    :pswitch_5
    move-object/from16 v9, v20

    move-object/from16 v6, v24

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_53

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v4, v3, Lo2/j;->h:Lp2/E;

    iget-object v5, v4, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    move-object/from16 v5, v18

    invoke-static {v3, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2, v8}, Lp2/c;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_4c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v27, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_4d

    invoke-virtual {v2}, Lp2/c;->E()Lo2/j;

    move-result-object v3

    iget-object v4, v3, Lo2/j;->h:Lp2/E;

    iget-object v4, v4, Lp2/E;->g:Ljava/lang/String;

    invoke-static {v4, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :cond_4d
    move-object v1, v0

    :cond_4e
    const/16 v27, 0x1

    goto/16 :goto_2f

    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_50
    :goto_20
    const/4 v10, 0x1

    goto :goto_21

    :cond_51
    move-object/from16 v5, v18

    goto :goto_20

    :goto_21
    invoke-virtual {v4, v10}, Lp2/E;->b(I)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_22

    :cond_52
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v18, v5

    goto :goto_1e

    :cond_53
    :goto_22
    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    const/16 v17, 0x0

    return v17

    :pswitch_6
    move-object/from16 v6, v24

    move/from16 v10, v27

    const/16 v17, 0x0

    invoke-virtual {v2, v10, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    return v17

    :cond_54
    invoke-virtual {v2, v8}, Lp2/c;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_55
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    return v10

    :pswitch_7
    const/16 v17, 0x0

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v5}, Lp2/c;->J(Ljava/lang/String;)V

    return v17

    :pswitch_8
    move-object/from16 v6, v24

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v8}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v8}, Lp2/c;->J(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lp2/c;->H(Lp2/Q;)Z

    move-result v1

    return v1

    :cond_56
    invoke-virtual {v2, v8}, Lp2/c;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v6}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v2, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_57
    invoke-virtual {v2, v8}, Lp2/c;->F(Ljava/lang/String;)V

    const/16 v27, 0x1

    return v27

    :pswitch_9
    move-object/from16 v8, v22

    invoke-virtual {v8, v1, v2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v27

    :cond_58
    move-object/from16 v7, v19

    move-object/from16 v8, v22

    move-object/from16 v29, v23

    move-object/from16 v6, v25

    const/16 v21, 0x6

    const/16 v26, 0x3

    sget-object v0, Lp2/b;->s:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v1

    check-cast v0, Lp2/N;

    move-object/from16 v22, v7

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    :goto_23
    const/4 v11, -0x1

    goto/16 :goto_24

    :sswitch_11
    const-string v5, "noembed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_23

    :cond_59
    const/16 v11, 0x37

    goto/16 :goto_24

    :sswitch_12
    const-string v5, "plaintext"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_23

    :cond_5a
    const/16 v11, 0x36

    goto/16 :goto_24

    :sswitch_13
    const-string v5, "noscript"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto :goto_23

    :cond_5b
    const/16 v11, 0x35

    goto/16 :goto_24

    :sswitch_14
    const-string v5, "listing"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_23

    :cond_5c
    const/16 v11, 0x34

    goto/16 :goto_24

    :sswitch_15
    const-string v5, "table"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto :goto_23

    :cond_5d
    const/16 v11, 0x33

    goto/16 :goto_24

    :sswitch_16
    const-string v5, "small"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_23

    :cond_5e
    const/16 v11, 0x32

    goto/16 :goto_24

    :sswitch_17
    const-string v5, "input"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_23

    :cond_5f
    const/16 v11, 0x31

    goto/16 :goto_24

    :sswitch_18
    const-string v5, "image"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_23

    :cond_60
    const/16 v11, 0x30

    goto/16 :goto_24

    :sswitch_19
    const-string v5, "embed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    goto :goto_23

    :cond_61
    const/16 v11, 0x2f

    goto/16 :goto_24

    :sswitch_1a
    const-string v5, "span"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto/16 :goto_23

    :cond_62
    const/16 v11, 0x2e

    goto/16 :goto_24

    :sswitch_1b
    const-string v5, "nobr"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    goto/16 :goto_23

    :cond_63
    const/16 v11, 0x2d

    goto/16 :goto_24

    :sswitch_1c
    const-string v5, "math"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto/16 :goto_23

    :cond_64
    const/16 v11, 0x2c

    goto/16 :goto_24

    :sswitch_1d
    const-string v5, "html"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto/16 :goto_23

    :cond_65
    const/16 v11, 0x2b

    goto/16 :goto_24

    :sswitch_1e
    const-string v5, "form"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    goto/16 :goto_23

    :cond_66
    const/16 v11, 0x2a

    goto/16 :goto_24

    :sswitch_1f
    const-string v5, "font"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    goto/16 :goto_23

    :cond_67
    const/16 v11, 0x29

    goto/16 :goto_24

    :sswitch_20
    const-string v5, "code"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    goto/16 :goto_23

    :cond_68
    const/16 v11, 0x28

    goto/16 :goto_24

    :sswitch_21
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    goto/16 :goto_23

    :cond_69
    const/16 v11, 0x27

    goto/16 :goto_24

    :sswitch_22
    const-string v5, "area"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto/16 :goto_23

    :cond_6a
    const/16 v11, 0x26

    goto/16 :goto_24

    :sswitch_23
    const-string v5, "xmp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto/16 :goto_23

    :cond_6b
    const/16 v11, 0x25

    goto/16 :goto_24

    :sswitch_24
    const-string v5, "wbr"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto/16 :goto_23

    :cond_6c
    const/16 v11, 0x24

    goto/16 :goto_24

    :sswitch_25
    const-string v5, "svg"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto/16 :goto_23

    :cond_6d
    const/16 v11, 0x23

    goto/16 :goto_24

    :sswitch_26
    const-string v5, "rtc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto/16 :goto_23

    :cond_6e
    const/16 v11, 0x22

    goto/16 :goto_24

    :sswitch_27
    const-string v5, "pre"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto/16 :goto_23

    :cond_6f
    const/16 v11, 0x21

    goto/16 :goto_24

    :sswitch_28
    const-string v5, "img"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto/16 :goto_23

    :cond_70
    const/16 v11, 0x20

    goto/16 :goto_24

    :sswitch_29
    const-string v5, "big"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto/16 :goto_23

    :cond_71
    const/16 v11, 0x1f

    goto/16 :goto_24

    :sswitch_2a
    const-string v5, "tt"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    goto/16 :goto_23

    :cond_72
    const/16 v11, 0x1e

    goto/16 :goto_24

    :sswitch_2b
    const-string v5, "rt"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    goto/16 :goto_23

    :cond_73
    const/16 v11, 0x1d

    goto/16 :goto_24

    :sswitch_2c
    const-string v5, "rp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_23

    :cond_74
    const/16 v11, 0x1c

    goto/16 :goto_24

    :sswitch_2d
    const-string v5, "rb"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto/16 :goto_23

    :cond_75
    const/16 v11, 0x1b

    goto/16 :goto_24

    :sswitch_2e
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    goto/16 :goto_23

    :cond_76
    const/16 v11, 0x1a

    goto/16 :goto_24

    :sswitch_2f
    const-string v5, "hr"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_23

    :cond_77
    const/16 v11, 0x19

    goto/16 :goto_24

    :sswitch_30
    const-string v5, "h6"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    goto/16 :goto_23

    :cond_78
    const/16 v11, 0x18

    goto/16 :goto_24

    :sswitch_31
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto/16 :goto_23

    :cond_79
    const/16 v11, 0x17

    goto/16 :goto_24

    :sswitch_32
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    goto/16 :goto_23

    :cond_7a
    const/16 v11, 0x16

    goto/16 :goto_24

    :sswitch_33
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    goto/16 :goto_23

    :cond_7b
    const/16 v11, 0x15

    goto/16 :goto_24

    :sswitch_34
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    goto/16 :goto_23

    :cond_7c
    const/16 v11, 0x14

    goto/16 :goto_24

    :sswitch_35
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto/16 :goto_23

    :cond_7d
    const/16 v11, 0x13

    goto/16 :goto_24

    :sswitch_36
    const-string v5, "em"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto/16 :goto_23

    :cond_7e
    const/16 v11, 0x12

    goto/16 :goto_24

    :sswitch_37
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    goto/16 :goto_23

    :cond_7f
    const/16 v11, 0x11

    goto/16 :goto_24

    :sswitch_38
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    goto/16 :goto_23

    :cond_80
    const/16 v11, 0x10

    goto/16 :goto_24

    :sswitch_39
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    goto/16 :goto_23

    :cond_81
    const/16 v11, 0xf

    goto/16 :goto_24

    :sswitch_3a
    const-string v5, "u"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    goto/16 :goto_23

    :cond_82
    const/16 v11, 0xe

    goto/16 :goto_24

    :sswitch_3b
    const-string v5, "s"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    goto/16 :goto_23

    :cond_83
    const/16 v11, 0xd

    goto/16 :goto_24

    :sswitch_3c
    const-string v5, "i"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    goto/16 :goto_23

    :cond_84
    const/16 v11, 0xc

    goto/16 :goto_24

    :sswitch_3d
    const-string v5, "b"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    goto/16 :goto_23

    :cond_85
    const/16 v11, 0xb

    goto/16 :goto_24

    :sswitch_3e
    const-string v5, "a"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    goto/16 :goto_23

    :cond_86
    const/16 v11, 0xa

    goto/16 :goto_24

    :sswitch_3f
    const-string v5, "optgroup"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    goto/16 :goto_23

    :cond_87
    const/16 v11, 0x9

    goto/16 :goto_24

    :sswitch_40
    const-string v5, "strong"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    goto/16 :goto_23

    :cond_88
    const/16 v11, 0x8

    goto/16 :goto_24

    :sswitch_41
    const-string v5, "strike"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    goto/16 :goto_23

    :cond_89
    const/4 v11, 0x7

    goto :goto_24

    :sswitch_42
    const-string v5, "select"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto/16 :goto_23

    :cond_8a
    move/from16 v11, v21

    goto :goto_24

    :sswitch_43
    const-string v5, "textarea"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    goto/16 :goto_23

    :cond_8b
    const/4 v11, 0x5

    goto :goto_24

    :sswitch_44
    const-string v5, "option"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    goto/16 :goto_23

    :cond_8c
    const/4 v11, 0x4

    goto :goto_24

    :sswitch_45
    const-string v5, "keygen"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    goto/16 :goto_23

    :cond_8d
    move/from16 v11, v26

    goto :goto_24

    :sswitch_46
    const-string v5, "iframe"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto/16 :goto_23

    :cond_8e
    const/4 v11, 0x2

    goto :goto_24

    :sswitch_47
    const-string v5, "button"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    goto/16 :goto_23

    :cond_8f
    const/4 v11, 0x1

    goto :goto_24

    :sswitch_48
    const-string v5, "frameset"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    goto/16 :goto_23

    :cond_90
    const/4 v11, 0x0

    :goto_24
    sget-object v5, Lp2/A;->l:Lp2/y;

    const-string v9, "ruby"

    packed-switch v11, :pswitch_data_1

    invoke-virtual {v2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v3

    invoke-virtual {v3}, Lp2/E;->h()Lp2/l1;

    move-result-object v4

    if-eqz v4, :cond_91

    invoke-static {v0, v2, v4}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    const/16 v27, 0x1

    return v27

    :cond_91
    const/16 v27, 0x1

    iget v3, v3, Lp2/E;->h:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_98

    sget-object v3, Lp2/b;->q:[Ljava/lang/String;

    invoke-static {v7, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_93

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_92
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v27

    :cond_93
    sget-object v3, Lp2/b;->p:[Ljava/lang/String;

    invoke-static {v7, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-virtual {v8, v1, v2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result v0

    return v0

    :cond_94
    move-object/from16 v3, v22

    invoke-static {v7, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    iget-object v0, v2, Lp2/c;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    const/16 v27, 0x1

    return v27

    :cond_95
    const/4 v3, 0x0

    const/16 v27, 0x1

    sget-object v1, Lp2/b;->v:[Ljava/lang/String;

    invoke-static {v7, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {v2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    return v27

    :cond_96
    sget-object v1, Lp2/b;->w:[Ljava/lang/String;

    invoke-static {v7, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    move-object/from16 v1, p0

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    return v3

    :cond_97
    move-object/from16 v1, p0

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v27

    :cond_98
    move-object/from16 v1, p0

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v27

    :pswitch_a
    move-object/from16 v1, p0

    const/16 v27, 0x1

    invoke-virtual {v2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v3

    invoke-virtual {v3}, Lp2/E;->h()Lp2/l1;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v27

    :pswitch_b
    move-object/from16 v1, p0

    const/4 v3, 0x5

    const/16 v27, 0x1

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_99
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    iget-object v0, v2, Lp2/c;->c:Lp2/T;

    sget-object v2, Lp2/l1;->k:Lp2/i1;

    invoke-virtual {v0, v2}, Lp2/T;->m(Lp2/l1;)V

    return v27

    :pswitch_c
    move-object/from16 v1, p0

    const/16 v27, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->S(Lp2/N;)V

    return v27

    :pswitch_d
    move-object/from16 v1, p0

    iget-object v3, v2, Lp2/c;->d:Lo2/g;

    iget v3, v3, Lo2/g;->p:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_9a

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_9a
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    iput-object v5, v2, Lp2/c;->m:Lp2/A;

    const/4 v10, 0x1

    return v10

    :pswitch_e
    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "hidden"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v10

    :pswitch_f
    move-object/from16 v1, p0

    const/4 v10, 0x1

    const-string v3, "svg"

    invoke-virtual {v2, v3}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v3

    if-nez v3, :cond_9b

    const-string v3, "img"

    invoke-virtual {v0, v3}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lp2/c;->H(Lp2/Q;)Z

    move-result v0

    return v0

    :cond_9b
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v10

    :pswitch_10
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v10

    :pswitch_11
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    const-string v3, "nobr"

    invoke-virtual {v2, v10, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v3}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lp2/c;->L()V

    :cond_9c
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lp2/c;->b(Lo2/j;)V

    iget-object v2, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v10

    :pswitch_12
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    const-string v3, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v0, v3}, Lp2/c;->z(Lp2/N;Ljava/lang/String;)V

    return v10

    :pswitch_13
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    move-object/from16 v4, v29

    invoke-virtual {v2, v4}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_9d
    :goto_25
    const/16 v17, 0x0

    goto/16 :goto_32

    :cond_9e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3e

    move-object/from16 v9, v20

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/j;

    invoke-static {v0, v2}, Lp2/A;->c(Lp2/N;Lo2/j;)V

    return v10

    :pswitch_14
    move-object/from16 v1, p0

    move-object/from16 v4, v29

    const/4 v3, 0x0

    iget-object v5, v2, Lp2/c;->q:Lo2/m;

    if-eqz v5, :cond_9f

    invoke-virtual {v2, v4}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9f

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    return v3

    :cond_9f
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-virtual {v2, v6}, Lp2/c;->n(Ljava/lang/String;)V

    move-object/from16 v3, v24

    invoke-virtual {v2, v6, v3}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a0

    iget-object v3, v2, Lp2/c;->m:Lp2/A;

    invoke-virtual {v2, v3}, Lp2/c;->m(Lp2/A;)V

    :cond_a0
    invoke-virtual {v2, v6}, Lp2/c;->F(Ljava/lang/String;)V

    :cond_a1
    const/4 v10, 0x1

    invoke-virtual {v2, v0, v10, v10}, Lp2/c;->A(Lp2/N;ZZ)V

    return v10

    :pswitch_15
    move-object/from16 v1, p0

    move-object/from16 v9, v20

    move-object/from16 v4, v29

    const/4 v10, 0x1

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_9d

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_a2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo2/j;

    invoke-virtual {v5, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    :cond_a2
    invoke-virtual {v2, v4}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a3

    goto :goto_25

    :cond_a3
    const/4 v4, 0x0

    iput-boolean v4, v2, Lp2/c;->w:Z

    invoke-virtual {v2, v3}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-static {v0, v2}, Lp2/A;->c(Lp2/N;Lo2/j;)V

    const/16 v27, 0x1

    return v27

    :pswitch_16
    move-object/from16 v1, p0

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_a4
    invoke-virtual {v2}, Lp2/c;->L()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    invoke-virtual {v2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v3

    invoke-virtual {v3}, Lp2/E;->h()Lp2/l1;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    const/4 v10, 0x1

    return v10

    :pswitch_17
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    const-string v3, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v0, v3}, Lp2/c;->z(Lp2/N;Ljava/lang/String;)V

    return v10

    :pswitch_18
    move-object/from16 v1, p0

    const/4 v3, 0x5

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_a5
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    iget-object v0, v2, Lp2/c;->b:Lp2/a;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Lp2/a;->z(Ljava/lang/String;)Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v10

    :pswitch_19
    move-object/from16 v1, p0

    move-object/from16 v3, v24

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v9}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    const-string v4, "rtc"

    invoke-virtual {v2, v4}, Lp2/c;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a6

    invoke-virtual {v2, v9, v3}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a6

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    :cond_a6
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/4 v10, 0x1

    return v10

    :pswitch_1a
    move-object/from16 v1, p0

    move-object/from16 v3, v24

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v9}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lp2/c;->o(Z)V

    invoke-virtual {v2, v9, v3}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    :cond_a7
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v10

    :pswitch_1b
    move-object/from16 v1, p0

    move-object/from16 v9, v20

    const/4 v5, 0x0

    const/4 v10, 0x1

    iput-boolean v5, v2, Lp2/c;->w:Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_26
    if-lez v3, :cond_a8

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo2/j;

    invoke-virtual {v5, v4}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v7

    iget-object v5, v5, Lo2/j;->h:Lp2/E;

    if-eqz v7, :cond_a9

    invoke-virtual {v2, v4}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_a8
    :goto_27
    const/4 v3, 0x5

    goto :goto_28

    :cond_a9
    const/16 v12, 0x80

    invoke-virtual {v5, v12}, Lp2/E;->b(I)Z

    move-result v7

    if-eqz v7, :cond_aa

    iget-object v5, v5, Lp2/E;->g:Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-static {v5, v7}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ab

    goto :goto_27

    :cond_aa
    move-object/from16 v7, v19

    :cond_ab
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v19, v7

    goto :goto_26

    :goto_28
    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_ac
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/16 v27, 0x1

    return v27

    :pswitch_1c
    move-object/from16 v1, p0

    const/4 v3, 0x5

    const/16 v27, 0x1

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_ad
    invoke-virtual {v2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v27

    :pswitch_1d
    const/4 v3, 0x5

    move-object/from16 v1, p0

    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_ae
    invoke-virtual {v2}, Lp2/c;->q()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {v2}, Lp2/c;->h()Lo2/j;

    move-result-object v3

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    move-object/from16 v5, v18

    invoke-static {v3, v5}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2}, Lp2/c;->E()Lo2/j;

    :cond_af
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/16 v27, 0x1

    return v27

    :pswitch_1e
    move-object/from16 v1, p0

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x18

    if-lt v4, v5, :cond_b0

    add-int/lit8 v8, v3, -0x19

    goto :goto_29

    :cond_b0
    const/4 v8, 0x0

    :goto_29
    if-lt v4, v8, :cond_b1

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v5, v3, Lp2/E;->g:Ljava/lang/String;

    sget-object v10, Lp2/b;->t:[Ljava/lang/String;

    invoke-static {v5, v10}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_b1
    :goto_2a
    const/4 v3, 0x5

    goto :goto_2b

    :cond_b2
    const/16 v12, 0x80

    invoke-virtual {v3, v12}, Lp2/E;->b(I)Z

    move-result v5

    if-eqz v5, :cond_b3

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-static {v3, v7}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b3

    goto :goto_2a

    :cond_b3
    add-int/lit8 v4, v4, -0x1

    goto :goto_29

    :goto_2b
    invoke-virtual {v2, v3, v6}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-virtual {v2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_b4
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/16 v27, 0x1

    return v27

    :pswitch_1f
    const/4 v3, 0x0

    move-object/from16 v1, p0

    const/16 v27, 0x1

    iget-object v4, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2c
    const-string v5, "a"

    if-ltz v4, :cond_b7

    iget-object v6, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/j;

    if-nez v6, :cond_b5

    goto :goto_2d

    :cond_b5
    invoke-virtual {v6, v5}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b6

    move-object v8, v6

    goto :goto_2e

    :cond_b6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c

    :cond_b7
    :goto_2d
    move-object v8, v3

    :goto_2e
    if-eqz v8, :cond_b8

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v5}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {v2, v5}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v3

    if-eqz v3, :cond_b8

    invoke-virtual {v2, v3}, Lp2/c;->N(Lo2/j;)V

    invoke-virtual {v2, v3}, Lp2/c;->O(Lo2/j;)V

    :cond_b8
    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lp2/c;->b(Lo2/j;)V

    iget-object v2, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v27, 0x1

    return v27

    :pswitch_20
    move-object/from16 v1, p0

    const/16 v27, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lp2/c;->b(Lo2/j;)V

    iget-object v2, v2, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v27

    :pswitch_21
    move-object/from16 v1, p0

    const/16 v27, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    iget-boolean v0, v0, Lp2/O;->f:Z

    if-eqz v0, :cond_b9

    :goto_2f
    return v27

    :cond_b9
    iget-object v0, v2, Lp2/c;->m:Lp2/A;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    sget-object v3, Lp2/A;->n:Lp2/d;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    sget-object v3, Lp2/A;->p:Lp2/f;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    sget-object v3, Lp2/A;->q:Lp2/g;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    sget-object v3, Lp2/A;->r:Lp2/h;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    :cond_ba
    const/4 v10, 0x1

    goto :goto_30

    :cond_bb
    sget-object v0, Lp2/A;->s:Lp2/i;

    iput-object v0, v2, Lp2/c;->m:Lp2/A;

    const/4 v10, 0x1

    return v10

    :goto_30
    sget-object v0, Lp2/A;->t:Lp2/j;

    iput-object v0, v2, Lp2/c;->m:Lp2/A;

    return v10

    :pswitch_22
    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v10, 0x1

    iput-boolean v3, v2, Lp2/c;->w:Z

    invoke-virtual {v2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v3

    invoke-virtual {v3}, Lp2/E;->h()Lp2/l1;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v10

    :pswitch_23
    move-object/from16 v1, p0

    move-object/from16 v3, v24

    const/4 v10, 0x1

    const-string v4, "option"

    invoke-virtual {v2, v4, v3}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    invoke-virtual {v2, v4}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_bc
    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v10

    :pswitch_24
    move-object/from16 v1, p0

    const/4 v10, 0x1

    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v10

    :pswitch_25
    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v10, 0x1

    iput-boolean v3, v2, Lp2/c;->w:Z

    invoke-virtual {v2, v0}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v3

    invoke-virtual {v3}, Lp2/E;->h()Lp2/l1;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lp2/A;->b(Lp2/N;Lp2/c;Lp2/l1;)V

    return v10

    :pswitch_26
    move-object/from16 v1, p0

    const/4 v10, 0x1

    const-string v3, "button"

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lp2/c;->s(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v2, v3}, Lp2/c;->I(Ljava/lang/String;)Z

    invoke-virtual {v2, v0}, Lp2/c;->H(Lp2/Q;)Z

    return v10

    :cond_bd
    invoke-virtual {v2}, Lp2/c;->L()V

    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lp2/c;->w:Z

    return v10

    :pswitch_27
    move-object/from16 v1, p0

    move-object/from16 v9, v20

    const/4 v10, 0x1

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x2

    if-lt v4, v8, :cond_9d

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_be

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/j;

    invoke-virtual {v4, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_be

    goto/16 :goto_25

    :cond_be
    iget-boolean v3, v2, Lp2/c;->w:Z

    if-nez v3, :cond_bf

    goto/16 :goto_25

    :cond_bf
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v4, v3, Lo2/p;->e:Lo2/j;

    if-eqz v4, :cond_c0

    invoke-virtual {v3}, Lo2/p;->z()V

    :cond_c0
    :goto_31
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v10, :cond_c1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_31

    :cond_c1
    invoke-virtual {v2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    sget-object v0, Lp2/A;->w:Lp2/m;

    iput-object v0, v2, Lp2/c;->m:Lp2/A;

    return v10

    :goto_32
    return v17

    :cond_c2
    move-object v1, v0

    const/16 v17, 0x0

    invoke-virtual {v2, v1}, Lp2/c;->m(Lp2/A;)V

    return v17

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_48
        -0x521dd8ce -> :sswitch_47
        -0x47007d5c -> :sswitch_46
        -0x43a19f6f -> :sswitch_45
        -0x3c35778b -> :sswitch_44
        -0x3bcc48c6 -> :sswitch_43
        -0x3600cb04 -> :sswitch_42
        -0x352aa04e -> :sswitch_41
        -0x352a8969 -> :sswitch_40
        -0x4d08054 -> :sswitch_3f
        0x61 -> :sswitch_3e
        0x62 -> :sswitch_3d
        0x69 -> :sswitch_3c
        0x73 -> :sswitch_3b
        0x75 -> :sswitch_3a
        0xc50 -> :sswitch_39
        0xc80 -> :sswitch_38
        0xc90 -> :sswitch_37
        0xca8 -> :sswitch_36
        0xcc9 -> :sswitch_35
        0xcca -> :sswitch_34
        0xccb -> :sswitch_33
        0xccc -> :sswitch_32
        0xccd -> :sswitch_31
        0xcce -> :sswitch_30
        0xd0a -> :sswitch_2f
        0xd7d -> :sswitch_2e
        0xe30 -> :sswitch_2d
        0xe3e -> :sswitch_2c
        0xe42 -> :sswitch_2b
        0xe80 -> :sswitch_2a
        0x17d00 -> :sswitch_29
        0x197c3 -> :sswitch_28
        0x1b2a3 -> :sswitch_27
        0x1ba61 -> :sswitch_26
        0x1be64 -> :sswitch_25
        0x1cb07 -> :sswitch_24
        0x1d01b -> :sswitch_23
        0x2dd08d -> :sswitch_22
        0x2e39a2 -> :sswitch_21
        0x2eaded -> :sswitch_20
        0x300c4f -> :sswitch_1f
        0x300cc4 -> :sswitch_1e
        0x3107ab -> :sswitch_1d
        0x330708 -> :sswitch_1c
        0x33add1 -> :sswitch_1b
        0x35f74a -> :sswitch_1a
        0x5c24ed9 -> :sswitch_19
        0x5faa95b -> :sswitch_18
        0x5fb57ca -> :sswitch_17
        0x6879507 -> :sswitch_16
        0x6903bce -> :sswitch_15
        0xad8ba84 -> :sswitch_14
        0x5c7ac9cc -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_23
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_24
        :pswitch_1e
        :pswitch_1e
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_20
        :pswitch_20
        :pswitch_24
        :pswitch_18
        :pswitch_1a
        :pswitch_17
        :pswitch_24
        :pswitch_16
        :pswitch_24
        :pswitch_15
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_24
        :pswitch_f
        :pswitch_e
        :pswitch_20
        :pswitch_d
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final e(Lp2/Q;Lp2/c;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lp2/M;

    iget-object p1, p1, Lp2/O;->e:Ljava/lang/String;

    iget-object v0, p2, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/j;

    invoke-virtual {v4, p1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, p1}, Lp2/c;->n(Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, p1, v0}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_1
    invoke-virtual {p2, p1}, Lp2/c;->F(Ljava/lang/String;)V

    return v3

    :cond_2
    iget-object v4, v4, Lo2/j;->h:Lp2/E;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lp2/E;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method
