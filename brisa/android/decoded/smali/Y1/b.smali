.class public final LY1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lb2/g;)LW1/v;
    .locals 32

    move-object/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v1, v0, Lb2/g;->e:LM0/r0;

    new-instance v2, LW0/c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v5, v1, LM0/r0;->g:Ljava/lang/Object;

    check-cast v5, LW1/c;

    if-nez v5, :cond_1a

    sget v5, LW1/c;->n:I

    iget-object v5, v1, LM0/r0;->e:Ljava/lang/Object;

    check-cast v5, LW1/k;

    invoke-virtual {v5}, LW1/k;->size()I

    move-result v7

    move-object v11, v3

    move v10, v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_0
    if-ge v9, v7, :cond_18

    invoke-virtual {v5, v9}, LW1/k;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9}, LW1/k;->f(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v26, v4

    const-string v4, "Cache-Control"

    invoke-static {v6, v4}, LS1/l;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v11, :cond_0

    :goto_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_0
    move-object v11, v3

    goto :goto_2

    :cond_1
    const-string v4, "Pragma"

    invoke-static {v6, v4}, LS1/l;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move v8, v4

    :goto_4
    if-ge v8, v6, :cond_3

    move-object/from16 v27, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v28, v5

    const-string v5, "=,;"

    invoke-static {v5, v2}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v27

    move-object/from16 v5, v28

    goto :goto_4

    :cond_3
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    :goto_5
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v8, v5, :cond_a

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_a

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_4

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v8, v8, 0x1

    sget-object v5, LX1/b;->a:[B

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_6
    if-ge v8, v5, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v29, v5

    const/16 v5, 0x20

    if-eq v6, v5, :cond_5

    const/16 v5, 0x9

    if-eq v6, v5, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v29

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v8, v5, :cond_7

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x4

    invoke-static {v3, v6, v8, v5}, LS1/d;->F(Ljava/lang/CharSequence;CII)I

    move-result v5

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_b

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v8

    :goto_8
    if-ge v6, v5, :cond_9

    move/from16 v29, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v30, v6

    const-string v6, ",;"

    invoke-static {v6, v5}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-eqz v5, :cond_8

    move/from16 v6, v30

    goto :goto_9

    :cond_8
    add-int/lit8 v6, v30, 0x1

    move/from16 v5, v29

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    :goto_9
    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v31, v6

    move-object v6, v4

    move/from16 v4, v31

    goto :goto_b

    :cond_a
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move v4, v8

    const/4 v6, 0x0

    :goto_b
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v12, v26

    :cond_b
    :goto_c
    move-object/from16 v2, v27

    move-object/from16 v5, v28

    goto/16 :goto_3

    :cond_c
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    move/from16 v13, v26

    goto :goto_c

    :cond_d
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    invoke-static {v5, v6}, LX1/b;->x(ILjava/lang/String;)I

    move-result v14

    goto :goto_c

    :cond_e
    const/4 v5, -0x1

    const-string v8, "s-maxage"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v5, v6}, LX1/b;->x(ILjava/lang/String;)I

    move-result v15

    goto :goto_c

    :cond_f
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move/from16 v16, v26

    goto :goto_c

    :cond_10
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move/from16 v17, v26

    goto :goto_c

    :cond_11
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v18, v26

    goto :goto_c

    :cond_12
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v2, 0x7fffffff

    invoke-static {v2, v6}, LX1/b;->x(ILjava/lang/String;)I

    move-result v19

    goto :goto_c

    :cond_13
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, -0x1

    invoke-static {v5, v6}, LX1/b;->x(ILjava/lang/String;)I

    move-result v20

    goto :goto_c

    :cond_14
    const/4 v5, -0x1

    const-string v6, "only-if-cached"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    move/from16 v21, v26

    goto :goto_c

    :cond_15
    const-string v6, "no-transform"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    move/from16 v22, v26

    goto/16 :goto_c

    :cond_16
    const-string v6, "immutable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move/from16 v23, v26

    goto/16 :goto_c

    :cond_17
    move-object/from16 v27, v2

    move-object/from16 v28, v5

    const/4 v5, -0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v26

    move-object/from16 v2, v27

    move-object/from16 v5, v28

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v27, v2

    move/from16 v26, v4

    if-nez v10, :cond_19

    const/16 v24, 0x0

    goto :goto_d

    :cond_19
    move-object/from16 v24, v11

    :goto_d
    new-instance v11, LW1/c;

    invoke-direct/range {v11 .. v24}, LW1/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    iput-object v11, v1, LM0/r0;->g:Ljava/lang/Object;

    move-object v5, v11

    goto :goto_e

    :cond_1a
    move-object/from16 v27, v2

    move/from16 v26, v4

    :goto_e
    iget-boolean v2, v5, LW1/c;->j:Z

    if-eqz v2, :cond_1b

    new-instance v2, LW0/c;

    move/from16 v4, v26

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v4}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_f

    :cond_1b
    move-object/from16 v2, v27

    :goto_f
    iget-object v3, v2, LW0/c;->f:Ljava/lang/Object;

    check-cast v3, LM0/r0;

    iget-object v2, v2, LW0/c;->g:Ljava/lang/Object;

    check-cast v2, LW1/v;

    const/16 v4, 0x14

    if-nez v3, :cond_1c

    if-nez v2, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v7, LX1/b;->c:LW1/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-instance v6, LW1/k;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v6, v0}, LW1/k;-><init>([Ljava/lang/String;)V

    new-instance v0, LW1/v;

    sget-object v2, LW1/r;->g:LW1/r;

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    const/16 v4, 0x1f8

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v15}, LW1/v;-><init>(LM0/r0;LW1/r;Ljava/lang/String;ILW1/j;LW1/k;LW1/x;LW1/v;LW1/v;LW1/v;JJLa2/d;)V

    return-object v0

    :cond_1c
    const-string v1, "cacheResponse"

    if-nez v3, :cond_1d

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, LW1/v;->e()LW1/u;

    move-result-object v0

    invoke-static {v2}, LY1/a;->a(LW1/v;)LW1/v;

    move-result-object v2

    invoke-static {v1, v2}, LW1/u;->b(Ljava/lang/String;LW1/v;)V

    iput-object v2, v0, LW1/u;->i:LW1/v;

    invoke-virtual {v0}, LW1/u;->a()LW1/v;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {v0, v3}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object v0

    const-string v3, "networkResponse"

    if-eqz v2, :cond_28

    iget v5, v0, LW1/v;->h:I

    const/16 v6, 0x130

    if-ne v5, v6, :cond_27

    invoke-virtual {v2}, LW1/v;->e()LW1/u;

    move-result-object v5

    iget-object v6, v2, LW1/v;->j:LW1/k;

    iget-object v7, v0, LW1/v;->j:LW1/k;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, LW1/k;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_10
    const-string v10, "value"

    const-string v11, "name"

    const-string v12, "Content-Type"

    const-string v13, "Content-Encoding"

    const-string v14, "Content-Length"

    if-ge v9, v4, :cond_23

    invoke-virtual {v6, v9}, LW1/k;->b(I)Ljava/lang/String;

    move-result-object v15

    move/from16 p1, v4

    invoke-virtual {v6, v9}, LW1/k;->f(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v6

    const-string v6, "Warning"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v6, "1"

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-static {v4, v6, v9}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_12

    :cond_1e
    move/from16 v17, v9

    :cond_1f
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_11

    :cond_20
    invoke-static {v15}, LY1/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v7, v15}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_22

    :cond_21
    :goto_11
    invoke-static {v15, v11}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_12
    add-int/lit8 v9, v17, 0x1

    move/from16 v4, p1

    move-object/from16 v6, v16

    goto :goto_10

    :cond_23
    invoke-virtual {v7}, LW1/k;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v4, :cond_26

    invoke-virtual {v7, v6}, LW1/k;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_25

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_25

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_24

    goto :goto_14

    :cond_24
    invoke-static {v9}, LY1/a;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-virtual {v7, v6}, LW1/k;->f(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v11}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v10}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_26
    new-instance v4, LW1/k;

    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v4, v6}, LW1/k;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, LW1/k;->d()LZ0/i;

    move-result-object v4

    iput-object v4, v5, LW1/u;->f:LZ0/i;

    iget-wide v6, v0, LW1/v;->o:J

    iput-wide v6, v5, LW1/u;->k:J

    iget-wide v6, v0, LW1/v;->p:J

    iput-wide v6, v5, LW1/u;->l:J

    invoke-static {v2}, LY1/a;->a(LW1/v;)LW1/v;

    move-result-object v2

    invoke-static {v1, v2}, LW1/u;->b(Ljava/lang/String;LW1/v;)V

    iput-object v2, v5, LW1/u;->i:LW1/v;

    invoke-static {v0}, LY1/a;->a(LW1/v;)LW1/v;

    move-result-object v1

    invoke-static {v3, v1}, LW1/u;->b(Ljava/lang/String;LW1/v;)V

    iput-object v1, v5, LW1/u;->h:LW1/v;

    invoke-virtual {v5}, LW1/u;->a()LW1/v;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, LW1/x;->close()V

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, LO1/d;->b(Ljava/lang/Object;)V

    throw v25

    :cond_27
    iget-object v4, v2, LW1/v;->k:LW1/x;

    if-eqz v4, :cond_28

    invoke-static {v4}, LX1/b;->d(Ljava/io/Closeable;)V

    :cond_28
    invoke-virtual {v0}, LW1/v;->e()LW1/u;

    move-result-object v4

    invoke-static {v2}, LY1/a;->a(LW1/v;)LW1/v;

    move-result-object v2

    invoke-static {v1, v2}, LW1/u;->b(Ljava/lang/String;LW1/v;)V

    iput-object v2, v4, LW1/u;->i:LW1/v;

    invoke-static {v0}, LY1/a;->a(LW1/v;)LW1/v;

    move-result-object v0

    invoke-static {v3, v0}, LW1/u;->b(Ljava/lang/String;LW1/v;)V

    iput-object v0, v4, LW1/u;->h:LW1/v;

    invoke-virtual {v4}, LW1/u;->a()LW1/v;

    move-result-object v0

    return-object v0
.end method
