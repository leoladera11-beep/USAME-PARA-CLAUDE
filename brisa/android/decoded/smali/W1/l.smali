.class public final LW1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LW1/l;->b:Ljava/lang/String;

    iput-object v0, p0, LW1/l;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, LW1/l;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LW1/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LW1/l;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LW1/l;->g:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/16 v3, 0xdb

    invoke-static {p1, v1, v1, v2, v3}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {p1}, LO1/d;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-static {p2, v1, v1, v2, v3}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()LW1/m;
    .locals 13

    iget-object v1, p0, LW1/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, p0, LW1/l;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v2, v3}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, LW1/l;->c:Ljava/lang/String;

    invoke-static {v4, v2, v2, v3}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v3, v4

    iget-object v4, p0, LW1/l;->d:Ljava/lang/String;

    if-eqz v4, :cond_5

    move v6, v5

    invoke-virtual {p0}, LW1/l;->c()I

    move-result v5

    move v7, v6

    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, LW1/l;->f:Ljava/util/ArrayList;

    invoke-static {v8}, LF1/j;->x(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v2, v2, v7}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, LW1/l;->g:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, LF1/j;->x(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    const/4 v12, 0x3

    invoke-static {v11, v2, v2, v12}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    move-object v11, v9

    :goto_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v10, v9

    :cond_3
    iget-object v8, p0, LW1/l;->h:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-static {v8, v2, v2, v7}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    :cond_4
    move-object v8, v9

    invoke-virtual {p0}, LW1/l;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    new-instance v0, LW1/m;

    move-object v7, v10

    invoke-direct/range {v0 .. v9}, LW1/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 3

    iget v0, p0, LW1/l;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, LW1/l;->a:Ljava/lang/String;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1bb

    :cond_2
    :goto_0
    return v1
.end method

.method public final d(LW1/m;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "input"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LX1/b;->a:[B

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, LX1/b;->m(IILjava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v5, v2}, LX1/b;->n(IILjava/lang/String;)I

    move-result v5

    sub-int v6, v5, v3

    const/16 v7, 0x5b

    const/16 v8, 0x3a

    const/4 v9, -0x1

    const/4 v10, 0x2

    if-ge v6, v10, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x61

    invoke-static {v6, v11}, LO1/d;->g(II)I

    move-result v12

    const/16 v13, 0x41

    if-ltz v12, :cond_1

    const/16 v12, 0x7a

    invoke-static {v6, v12}, LO1/d;->g(II)I

    move-result v12

    if-lez v12, :cond_2

    :cond_1
    invoke-static {v6, v13}, LO1/d;->g(II)I

    move-result v12

    if-ltz v12, :cond_9

    const/16 v12, 0x5a

    invoke-static {v6, v12}, LO1/d;->g(II)I

    move-result v6

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v3, 0x1

    :goto_0
    if-ge v6, v5, :cond_9

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v11, v12, :cond_3

    const/16 v14, 0x7b

    if-ge v12, v14, :cond_3

    goto :goto_1

    :cond_3
    if-gt v13, v12, :cond_4

    if-ge v12, v7, :cond_4

    goto :goto_1

    :cond_4
    const/16 v14, 0x30

    if-gt v14, v12, :cond_5

    if-ge v12, v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v14, 0x2b

    if-ne v12, v14, :cond_6

    goto :goto_1

    :cond_6
    const/16 v14, 0x2d

    if-ne v12, v14, :cond_7

    goto :goto_1

    :cond_7
    const/16 v14, 0x2e

    if-ne v12, v14, :cond_8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    if-ne v12, v8, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v6, v9

    :goto_3
    const-string v11, "http"

    const-string v12, "https"

    const-string v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const/4 v14, 0x1

    if-eq v6, v9, :cond_c

    const-string v15, "https:"

    invoke-static {v3, v2, v15, v14}, LS1/l;->z(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_a

    iput-object v12, v0, LW1/l;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x6

    goto :goto_4

    :cond_a
    const-string v15, "http:"

    invoke-static {v3, v2, v15, v14}, LS1/l;->z(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_b

    iput-object v11, v0, LW1/l;->a:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    if-eqz v1, :cond_33

    iget-object v6, v1, LW1/m;->a:Ljava/lang/String;

    iput-object v6, v0, LW1/l;->a:Ljava/lang/String;

    :goto_4
    move v6, v3

    move v15, v4

    move/from16 v16, v14

    :goto_5
    const/16 v14, 0x2f

    const/16 v7, 0x5c

    if-ge v6, v5, :cond_e

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_d

    if-ne v8, v14, :cond_e

    :cond_d
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x5b

    const/16 v8, 0x3a

    goto :goto_5

    :cond_e
    const-string v6, " \"\'<>#"

    const-string v8, ""

    iget-object v7, v0, LW1/l;->f:Ljava/util/ArrayList;

    const/16 v14, 0x23

    if-ge v15, v10, :cond_12

    if-eqz v1, :cond_12

    iget-object v10, v1, LW1/m;->a:Ljava/lang/String;

    iget-object v9, v0, LW1/l;->a:Ljava/lang/String;

    invoke-static {v10, v9}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, LW1/m;->e()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, LW1/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, LW1/m;->a()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, LW1/l;->c:Ljava/lang/String;

    iget-object v9, v1, LW1/m;->d:Ljava/lang/String;

    iput-object v9, v0, LW1/l;->d:Ljava/lang/String;

    iget v9, v1, LW1/m;->e:I

    iput v9, v0, LW1/l;->e:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, LW1/m;->c()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v3, v5, :cond_10

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v14, :cond_23

    :cond_10
    invoke-virtual {v1}, LW1/m;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v9, 0xd3

    invoke-static {v1, v4, v4, v6, v9}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LW1/b;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    iput-object v1, v0, LW1/l;->g:Ljava/util/ArrayList;

    goto/16 :goto_13

    :cond_12
    :goto_7
    add-int/2addr v3, v15

    move v1, v4

    move v9, v1

    :goto_8
    const-string v10, "@/\\?#"

    invoke-static {v3, v5, v2, v10}, LX1/b;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eq v10, v5, :cond_13

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    :goto_9
    const/4 v4, -0x1

    goto :goto_a

    :cond_13
    const/4 v15, -0x1

    goto :goto_9

    :goto_a
    if-eq v15, v4, :cond_18

    if-eq v15, v14, :cond_18

    const/16 v4, 0x2f

    if-eq v15, v4, :cond_18

    const/16 v4, 0x5c

    if-eq v15, v4, :cond_18

    const/16 v4, 0x3f

    if-eq v15, v4, :cond_18

    const/16 v4, 0x40

    if-eq v15, v4, :cond_14

    const/4 v4, 0x0

    goto :goto_8

    :cond_14
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const-string v15, "%40"

    if-nez v1, :cond_17

    move/from16 p1, v1

    const/16 v14, 0x3a

    invoke-static {v2, v14, v3, v10}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v1

    const/16 v14, 0xf0

    invoke-static {v2, v3, v1, v4, v14}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, LW1/l;->b:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_15
    iput-object v3, v0, LW1/l;->b:Ljava/lang/String;

    if-eq v1, v10, :cond_16

    add-int/lit8 v1, v1, 0x1

    const/16 v14, 0xf0

    invoke-static {v2, v1, v10, v4, v14}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LW1/l;->c:Ljava/lang/String;

    move/from16 v1, v16

    goto :goto_b

    :cond_16
    const/16 v14, 0xf0

    move/from16 v1, p1

    :goto_b
    move/from16 v9, v16

    goto :goto_c

    :cond_17
    move/from16 p1, v1

    const/16 v14, 0xf0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, LW1/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0xf0

    invoke-static {v2, v3, v10, v4, v14}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LW1/l;->c:Ljava/lang/String;

    move/from16 v1, p1

    :goto_c
    add-int/lit8 v3, v10, 0x1

    const/4 v4, 0x0

    const/16 v14, 0x23

    goto/16 :goto_8

    :cond_18
    move v1, v3

    :goto_d
    if-ge v1, v10, :cond_1d

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x5b

    if-ne v4, v9, :cond_1b

    :cond_19
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v10, :cond_1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v14, 0x5d

    if-ne v4, v14, :cond_19

    :cond_1a
    const/16 v14, 0x3a

    goto :goto_e

    :cond_1b
    const/16 v14, 0x3a

    if-ne v4, v14, :cond_1c

    goto :goto_f

    :cond_1c
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    move v1, v10

    :goto_f
    add-int/lit8 v4, v1, 0x1

    const/4 v9, 0x4

    const/16 v14, 0x22

    if-ge v4, v10, :cond_20

    invoke-static {v2, v3, v1, v9}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LV0/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, LW1/l;->d:Ljava/lang/String;

    const/16 v9, 0xf8

    :try_start_0
    invoke-static {v2, v4, v10, v8, v9}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v11, v16

    if-gt v11, v9, :cond_1e

    const/high16 v11, 0x10000

    if-ge v9, v11, :cond_1e

    goto :goto_10

    :catch_0
    :cond_1e
    const/4 v9, -0x1

    :goto_10
    iput v9, v0, LW1/l;->e:I

    const/4 v15, -0x1

    if-eq v9, v15, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL port: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    const/4 v15, -0x1

    invoke-static {v2, v3, v1, v9}, LW1/b;->f(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LV0/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, LW1/l;->d:Ljava/lang/String;

    iget-object v4, v0, LW1/l;->a:Ljava/lang/String;

    invoke-static {v4}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const/16 v9, 0x50

    goto :goto_11

    :cond_21
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v9, 0x1bb

    goto :goto_11

    :cond_22
    move v9, v15

    :goto_11
    iput v9, v0, LW1/l;->e:I

    :goto_12
    iget-object v4, v0, LW1/l;->d:Ljava/lang/String;

    if-eqz v4, :cond_32

    move v3, v10

    :cond_23
    :goto_13
    const-string v1, "?#"

    invoke-static {v3, v5, v2, v1}, LX1/b;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_24

    goto/16 :goto_1a

    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x2f

    if-eq v4, v9, :cond_26

    const/16 v9, 0x5c

    if-ne v4, v9, :cond_25

    goto :goto_14

    :cond_25
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_26
    :goto_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :goto_15
    if-ge v3, v1, :cond_2f

    const-string v4, "/\\"

    invoke-static {v3, v1, v2, v4}, LX1/b;->f(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ge v4, v1, :cond_27

    const/4 v11, 0x1

    goto :goto_16

    :cond_27
    const/4 v11, 0x0

    :goto_16
    const-string v9, " \"<>^`{}|/\\?#"

    const/16 v14, 0xf0

    invoke-static {v2, v3, v4, v9, v14}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "%2e"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    goto/16 :goto_19

    :cond_28
    const-string v9, ".."

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, "%2e."

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, ".%2e"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, "%2e%2e"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    goto :goto_18

    :cond_29
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v16, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_2a
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    if-eqz v11, :cond_2d

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2b
    :goto_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2c
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_19
    if-eqz v11, :cond_2e

    add-int/lit8 v3, v4, 0x1

    goto/16 :goto_15

    :cond_2e
    move v3, v4

    goto/16 :goto_15

    :cond_2f
    :goto_1a
    if-ge v1, v5, :cond_30

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_30

    const/16 v3, 0x23

    invoke-static {v2, v3, v1, v5}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xd0

    invoke-static {v2, v1, v4, v6, v3}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LW1/b;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, LW1/l;->g:Ljava/util/ArrayList;

    move v1, v4

    :cond_30
    if-ge v1, v5, :cond_31

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_31

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xb0

    invoke-static {v2, v1, v5, v8, v3}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LW1/l;->h:Ljava/lang/String;

    :cond_31
    return-void

    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL host: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_34

    invoke-static {v3, v2}, LS1/d;->K(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_34
    move-object v1, v2

    :goto_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    invoke-static {v3, v1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, LW1/l;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/16 v1, 0xdb

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/brisa/local/a;->o(III)I

    move-result v2

    if-gt v2, v1, :cond_2

    :goto_0
    iget-object v3, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v3}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, LW1/l;->g:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, LW1/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LW1/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, LW1/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3a

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LW1/l;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, LW1/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/l;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, LW1/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1, v2}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, LW1/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget v1, p0, LW1/l;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, LW1/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    :cond_6
    invoke-virtual {p0}, LW1/l;->c()I

    move-result v1

    iget-object v4, p0, LW1/l;->a:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x50

    goto :goto_3

    :cond_7
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x1bb

    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "<this>"

    iget-object v2, p0, LW1/l;->f:Ljava/util/ArrayList;

    invoke-static {v2, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_b

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, LW1/l;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/l;->g:Ljava/util/ArrayList;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v3, v2}, Lcom/brisa/local/u;->z(II)LP1/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/brisa/local/u;->y(LP1/c;I)LP1/a;

    move-result-object v2

    iget v3, v2, LP1/a;->e:I

    iget v4, v2, LP1/a;->f:I

    iget v2, v2, LP1/a;->g:I

    if-lez v2, :cond_c

    if-le v3, v4, :cond_d

    :cond_c
    if-gez v2, :cond_10

    if-gt v4, v3, :cond_10

    :cond_d
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v3, :cond_e

    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_f

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eq v3, v4, :cond_10

    add-int/2addr v3, v2

    goto :goto_5

    :cond_10
    iget-object v1, p0, LW1/l;->h:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
