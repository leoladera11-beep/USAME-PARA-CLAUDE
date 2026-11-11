.class public LC1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/h;
.implements Lz1/u;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, LC1/e;->e:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 46
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, LC1/e;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, LC1/e;->f:I

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, LC1/e;->e:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 1
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lh/e;

    .line 2
    invoke-direct {p1}, Lh/j;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LC1/e;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LC1/e;->f:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(ILJ/S;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/e;->e:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, LC1/e;->f:I

    .line 29
    iput-object p2, p0, LC1/e;->g:Ljava/lang/Object;

    .line 30
    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, LC1/e;->e:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p3, p0, LC1/e;->f:I

    if-nez p4, :cond_0

    .line 33
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LC1/e;->g:Ljava/lang/Object;

    .line 35
    iput-object p5, p0, LC1/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/t1;LM0/N0;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LC1/e;->e:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    iput-object p2, p0, LC1/e;->g:Ljava/lang/Object;

    iput p3, p0, LC1/e;->f:I

    return-void
.end method

.method public constructor <init>(LP/B;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LC1/e;->e:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, LC1/e;->f:I

    return-void
.end method

.method public constructor <init>(LW1/r;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LC1/e;->e:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LC1/e;->g:Ljava/lang/Object;

    .line 21
    iput p2, p0, LC1/e;->f:I

    .line 22
    iput-object p3, p0, LC1/e;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x8

    iput v0, p0, LC1/e;->e:I

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string p2, ""

    goto :goto_1

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 8
    aget-object v5, p2, v4

    .line 9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v2, :cond_1

    const-string v6, ","

    .line 10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "] "

    .line 12
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LC1/e;->h:Ljava/lang/Object;

    iput-object p1, p0, LC1/e;->g:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x17

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    if-gt p2, v0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    const/4 p1, 0x2

    :goto_2
    const/4 p2, 0x7

    if-gt p1, p2, :cond_4

    .line 16
    iget-object p2, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 17
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iput p1, p0, LC1/e;->f:I

    return-void

    .line 18
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LC1/e;->e:I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    .line 43
    iput p2, p0, LC1/e;->f:I

    .line 44
    iput-object p3, p0, LC1/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt1/s;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LC1/e;->e:I

    .line 36
    sget-object v0, Lt1/b;->j:Lt1/b;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 40
    iput p1, p0, LC1/e;->f:I

    return-void
.end method

.method public static i()LZ0/i;
    .locals 2

    new-instance v0, LZ0/i;

    const-class v1, LC1/d;

    invoke-direct {v0, v1}, LZ0/i;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(C)LC1/e;
    .locals 2

    new-instance v0, Lt1/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt1/e;-><init>(CI)V

    new-instance p0, LC1/e;

    new-instance v1, LZ0/i;

    invoke-direct {v1, v0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, LC1/e;-><init>(Lt1/s;)V

    return-object p0
.end method

.method public static l(Ljava/lang/String;)LC1/e;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v3, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, LC1/e;->j(C)LC1/e;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LC1/e;

    new-instance v1, LK/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LK/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, LC1/e;-><init>(Lt1/s;)V

    return-object v0
.end method


# virtual methods
.method public a(ZZ)I
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, LC1/e;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LC1/h;

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    iget v0, v2, LC1/h;->g:I

    sub-int/2addr v0, v3

    iput v0, v2, LC1/h;->g:I

    :cond_0
    iget-object v0, v2, LC1/h;->k:Ljava/lang/StringBuilder;

    iget-object v4, v2, LC1/h;->i:[C

    invoke-virtual {v2}, LC1/h;->a()I

    move-result v5

    :goto_0
    invoke-static {v5}, LC1/h;->h(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, LC1/h;->a()I

    move-result v5

    goto :goto_0

    :cond_1
    iget v6, v2, LC1/h;->g:I

    iget v7, v2, LC1/h;->c:I

    add-int/2addr v7, v6

    iget v8, v2, LC1/h;->b:I

    sub-int/2addr v7, v8

    iget v8, v2, LC1/h;->d:I

    sub-int/2addr v7, v8

    iput v7, v2, LC1/h;->e:I

    const-string v9, "Malformed number: "

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_3e

    const/16 v10, 0x61

    const/16 v13, 0x41

    const/16 v14, 0x74

    const/16 v7, 0x6e

    const/16 v15, 0x66

    const/16 v8, 0x27

    move/from16 v18, v3

    const/16 v3, 0x22

    if-eq v5, v3, :cond_25

    if-eq v5, v8, :cond_25

    const/16 v3, 0x5b

    if-eq v5, v3, :cond_24

    const/16 v3, 0x5d

    if-eq v5, v3, :cond_23

    if-eq v5, v15, :cond_21

    if-eq v5, v7, :cond_1f

    if-eq v5, v14, :cond_1d

    const/16 v3, 0x7b

    if-eq v5, v3, :cond_1c

    const/16 v3, 0x7d

    if-eq v5, v3, :cond_1b

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    if-eqz p1, :cond_2

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, LC1/h;->g:I

    invoke-virtual {v2}, LC1/h;->c()V

    :goto_1
    const/16 v0, 0xc

    goto/16 :goto_1a

    :cond_2
    if-lt v5, v13, :cond_3

    const/16 v0, 0x5a

    if-le v5, v0, :cond_4

    :cond_3
    if-lt v5, v10, :cond_5

    const/16 v0, 0x7a

    if-gt v5, v0, :cond_5

    :cond_4
    int-to-char v0, v5

    invoke-virtual {v2, v0, v12, v11}, LC1/h;->d(C[CI)LC1/f;

    move-result-object v0

    throw v0

    :cond_5
    int-to-char v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected character: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v3, v18

    invoke-virtual {v2, v12, v0, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    goto/16 :goto_1a

    :pswitch_1
    int-to-char v3, v5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iput-boolean v11, v2, LC1/h;->l:Z

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_7

    const/4 v5, 0x1

    :cond_6
    :goto_2
    const/16 v6, 0x100

    goto :goto_3

    :cond_7
    const/16 v5, 0x30

    if-ne v3, v5, :cond_8

    const/4 v5, 0x3

    goto :goto_2

    :cond_8
    const/4 v5, 0x2

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v6}, LC1/h;->f(I)I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    const/4 v4, 0x2

    goto :goto_5

    :cond_a
    move v6, v11

    :goto_4
    if-ge v6, v7, :cond_6

    iget v8, v2, LC1/h;->g:I

    aget-char v8, v4, v8

    const/16 v10, 0x2b

    const/16 v13, 0x2e

    const/16 v14, 0x45

    const/16 v15, 0x65

    const/16 v11, 0x30

    if-lt v8, v11, :cond_b

    const/16 v11, 0x39

    if-le v8, v11, :cond_10

    :cond_b
    if-eq v8, v15, :cond_10

    if-eq v8, v14, :cond_10

    if-eq v8, v13, :cond_10

    if-eq v8, v10, :cond_10

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_9

    goto :goto_8

    :goto_5
    if-eq v5, v4, :cond_e

    const/4 v4, 0x3

    if-eq v5, v4, :cond_c

    const/4 v6, 0x5

    if-eq v5, v6, :cond_c

    const/16 v6, 0x8

    if-ne v5, v6, :cond_d

    :cond_c
    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v2, v12, v0, v6}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_e
    const/4 v4, 0x3

    goto :goto_6

    :goto_7
    if-ne v5, v4, :cond_f

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_f

    iput-boolean v6, v2, LC1/h;->l:Z

    :cond_f
    invoke-virtual {v2}, LC1/h;->g()V

    const/16 v0, 0x9

    goto/16 :goto_1a

    :cond_10
    :goto_8
    packed-switch v5, :pswitch_data_2

    goto/16 :goto_d

    :pswitch_2
    const/16 v11, 0x30

    if-lt v8, v11, :cond_19

    const/16 v13, 0x39

    if-gt v8, v13, :cond_19

    :goto_9
    const/16 v5, 0x8

    goto :goto_e

    :pswitch_3
    const/16 v11, 0x30

    const/16 v13, 0x39

    if-eq v8, v10, :cond_12

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_11

    const/4 v10, 0x6

    if-ne v5, v10, :cond_11

    goto :goto_a

    :cond_11
    if-lt v8, v11, :cond_19

    if-gt v8, v13, :cond_19

    goto :goto_9

    :cond_12
    :goto_a
    const/4 v5, 0x7

    goto :goto_e

    :pswitch_4
    const/16 v11, 0x30

    const/16 v13, 0x39

    if-lt v8, v11, :cond_13

    if-gt v8, v13, :cond_13

    const/4 v5, 0x5

    goto :goto_e

    :cond_13
    if-eq v8, v15, :cond_14

    if-ne v8, v14, :cond_19

    :cond_14
    const/4 v10, 0x5

    if-ne v5, v10, :cond_19

    const/4 v10, 0x1

    iput-boolean v10, v2, LC1/h;->l:Z

    :goto_b
    const/4 v5, 0x6

    goto :goto_e

    :pswitch_5
    const/4 v10, 0x1

    const/16 v11, 0x30

    if-lt v8, v11, :cond_15

    const/16 v11, 0x39

    if-gt v8, v11, :cond_15

    const/4 v11, 0x2

    if-ne v5, v11, :cond_15

    :goto_c
    const/4 v5, 0x2

    goto :goto_e

    :cond_15
    if-ne v8, v13, :cond_16

    iput-boolean v10, v2, LC1/h;->l:Z

    const/4 v5, 0x4

    goto :goto_e

    :cond_16
    if-eq v8, v15, :cond_17

    if-ne v8, v14, :cond_19

    :cond_17
    iput-boolean v10, v2, LC1/h;->l:Z

    goto :goto_b

    :pswitch_6
    const/16 v11, 0x30

    if-ne v8, v11, :cond_18

    const/4 v5, 0x3

    goto :goto_e

    :cond_18
    if-le v8, v11, :cond_19

    const/16 v11, 0x39

    if-gt v8, v11, :cond_19

    goto :goto_c

    :cond_19
    :goto_d
    const/4 v5, -0x1

    :goto_e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v8, v2, LC1/h;->g:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    iput v8, v2, LC1/h;->g:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1a

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :pswitch_7
    const/4 v0, 0x1

    goto/16 :goto_1a

    :pswitch_8
    int-to-char v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Numbers may not start with \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v0, 0x3

    goto/16 :goto_1a

    :cond_1c
    const/16 v0, 0xa

    goto/16 :goto_1a

    :cond_1d
    int-to-char v0, v5

    :try_start_0
    sget-object v3, LC1/h;->m:[C

    invoke-virtual {v2, v0, v3}, LC1/h;->b(C[C)V
    :try_end_0
    .catch LC1/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x6

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1e

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, LC1/h;->g:I

    invoke-virtual {v2}, LC1/h;->c()V

    goto/16 :goto_1

    :cond_1e
    throw v0

    :cond_1f
    int-to-char v0, v5

    :try_start_1
    sget-object v3, LC1/h;->o:[C

    invoke-virtual {v2, v0, v3}, LC1/h;->b(C[C)V
    :try_end_1
    .catch LC1/f; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x5

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    if-eqz p1, :cond_20

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, LC1/h;->g:I

    invoke-virtual {v2}, LC1/h;->c()V

    goto/16 :goto_1

    :cond_20
    throw v0

    :cond_21
    int-to-char v0, v5

    :try_start_2
    sget-object v3, LC1/h;->n:[C

    invoke-virtual {v2, v0, v3}, LC1/h;->b(C[C)V
    :try_end_2
    .catch LC1/f; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x7

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    if-eqz p1, :cond_22

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v2, LC1/h;->g:I

    invoke-virtual {v2}, LC1/h;->c()V

    goto/16 :goto_1

    :cond_22
    throw v0

    :cond_23
    const/4 v0, 0x4

    goto/16 :goto_1a

    :cond_24
    const/16 v0, 0xb

    goto/16 :goto_1a

    :cond_25
    move v6, v11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_f
    const/16 v6, 0x100

    invoke-virtual {v2, v6}, LC1/h;->f(I)I

    move-result v11

    const-string v6, "String was not terminated before end of input"

    if-eqz v11, :cond_3d

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v11, :cond_3c

    invoke-virtual {v2}, LC1/h;->j()C

    move-result v13

    if-ne v13, v5, :cond_26

    iget v3, v2, LC1/h;->g:I

    sub-int/2addr v3, v10

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LC1/h;->g()V

    goto/16 :goto_18

    :cond_26
    const/16 v18, 0x1

    const/16 v14, 0x5c

    if-eq v13, v14, :cond_27

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x41

    const/16 v14, 0x74

    goto :goto_10

    :cond_27
    iget v11, v2, LC1/h;->g:I

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v4, v11, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v10, v2, LC1/h;->g:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v2, LC1/h;->g:I

    :goto_11
    const/16 v10, 0x100

    invoke-virtual {v2, v10}, LC1/h;->f(I)I

    move-result v11

    if-eqz v11, :cond_3b

    iget v13, v2, LC1/h;->g:I

    add-int/2addr v13, v11

    :goto_12
    iget v11, v2, LC1/h;->g:I

    const-string v10, "EOF encountered in the middle of a string escape"

    if-ge v11, v13, :cond_39

    invoke-virtual {v2}, LC1/h;->j()C

    move-result v11

    if-eq v11, v3, :cond_37

    if-eq v11, v8, :cond_37

    if-eq v11, v14, :cond_28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v15

    const/16 v3, 0x9

    const/16 v16, 0x61

    const/16 v19, 0x41

    move v15, v7

    const/16 v7, 0x74

    goto/16 :goto_19

    :cond_28
    iget v11, v2, LC1/h;->g:I

    sub-int v11, v13, v11

    const/16 v7, 0x75

    const/4 v15, 0x5

    if-ge v11, v15, :cond_2b

    invoke-virtual {v2, v15}, LC1/h;->f(I)I

    move-result v11

    iget v13, v2, LC1/h;->g:I

    add-int v20, v13, v11

    aget-char v13, v4, v13

    if-ne v13, v7, :cond_2a

    if-lt v11, v15, :cond_29

    goto :goto_13

    :cond_29
    iget v0, v2, LC1/h;->j:I

    iput v0, v2, LC1/h;->g:I

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v10, v6}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_2a
    :goto_13
    move/from16 v13, v20

    :cond_2b
    iget v10, v2, LC1/h;->g:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v2, LC1/h;->g:I

    aget-char v10, v4, v10

    if-eq v10, v3, :cond_36

    if-eq v10, v8, :cond_36

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_36

    if-eq v10, v14, :cond_36

    const/16 v11, 0x62

    if-eq v10, v11, :cond_35

    const/16 v11, 0x66

    if-eq v10, v11, :cond_34

    const/16 v15, 0x6e

    if-eq v10, v15, :cond_33

    const/16 v11, 0x72

    if-eq v10, v11, :cond_32

    const/16 v11, 0x74

    if-eq v10, v11, :cond_31

    if-ne v10, v7, :cond_30

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_14
    const/4 v3, 0x4

    if-ge v7, v3, :cond_2f

    shl-int/lit8 v3, v10, 0x4

    iget v10, v2, LC1/h;->g:I

    add-int/lit8 v8, v10, 0x1

    iput v8, v2, LC1/h;->g:I

    aget-char v8, v4, v10

    const/16 v10, 0x30

    if-lt v8, v10, :cond_2c

    const/16 v10, 0x39

    if-gt v8, v10, :cond_2c

    add-int/lit8 v8, v8, -0x30

    :goto_15
    or-int/2addr v3, v8

    const/16 v10, 0x61

    const/16 v14, 0x66

    goto :goto_16

    :cond_2c
    const/16 v10, 0x41

    if-lt v8, v10, :cond_2d

    const/16 v10, 0x46

    if-gt v8, v10, :cond_2d

    add-int/lit8 v8, v8, -0x37

    goto :goto_15

    :cond_2d
    const/16 v10, 0x61

    if-lt v8, v10, :cond_2e

    const/16 v14, 0x66

    if-gt v8, v14, :cond_2e

    add-int/lit8 v8, v8, -0x57

    or-int/2addr v3, v8

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move v10, v3

    const/16 v8, 0x27

    const/16 v14, 0x5c

    goto :goto_14

    :cond_2e
    int-to-char v0, v8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected unicode hex escape character: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v0, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_2f
    const/4 v3, 0x0

    const/16 v14, 0x66

    const/16 v16, 0x61

    const/16 v19, 0x41

    int-to-char v7, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    goto/16 :goto_17

    :cond_30
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Invalid escape: \\"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_31
    const/16 v3, 0x9

    const/16 v14, 0x66

    const/16 v16, 0x61

    const/16 v19, 0x41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_32
    const/16 v3, 0x9

    const/16 v11, 0x74

    const/16 v14, 0x66

    const/16 v16, 0x61

    const/16 v19, 0x41

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_33
    const/16 v3, 0x9

    const/16 v7, 0xa

    const/16 v11, 0x74

    const/16 v14, 0x66

    const/16 v16, 0x61

    const/16 v19, 0x41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_34
    move v14, v11

    const/16 v3, 0x9

    const/16 v7, 0xc

    const/16 v11, 0x74

    const/16 v15, 0x6e

    const/16 v16, 0x61

    const/16 v19, 0x41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_35
    const/16 v3, 0x9

    const/16 v7, 0x8

    const/16 v11, 0x74

    const/16 v14, 0x66

    const/16 v15, 0x6e

    const/16 v16, 0x61

    const/16 v19, 0x41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_36
    const/16 v3, 0x9

    const/16 v11, 0x74

    const/16 v14, 0x66

    const/16 v15, 0x6e

    const/16 v16, 0x61

    const/16 v19, 0x41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_17
    move v7, v11

    goto :goto_19

    :cond_37
    move v14, v15

    const/16 v3, 0x9

    const/16 v16, 0x61

    const/16 v19, 0x41

    move v15, v7

    const/16 v7, 0x74

    if-ne v11, v5, :cond_38

    invoke-virtual {v2}, LC1/h;->g()V

    :goto_18
    const/16 v0, 0x8

    goto :goto_1a

    :cond_38
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    move v7, v15

    const/16 v3, 0x22

    const/16 v8, 0x27

    const/16 v10, 0x100

    move v15, v14

    const/16 v14, 0x5c

    goto/16 :goto_12

    :cond_39
    move v14, v15

    const/16 v3, 0x9

    const/16 v16, 0x61

    const/16 v19, 0x41

    move v15, v7

    const/16 v7, 0x74

    iget v8, v2, LC1/h;->j:I

    if-gt v11, v8, :cond_3a

    move v7, v15

    const/16 v3, 0x22

    const/16 v8, 0x27

    move v15, v14

    const/16 v14, 0x5c

    goto/16 :goto_11

    :cond_3a
    iput v8, v2, LC1/h;->g:I

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v10, v6}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_3b
    const/4 v10, 0x1

    invoke-virtual {v2, v12, v6, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_3c
    move v3, v15

    move v15, v7

    move v7, v14

    move v14, v3

    move/from16 v19, v13

    const/16 v3, 0x9

    const/4 v10, 0x1

    const/16 v16, 0x61

    iget v6, v2, LC1/h;->g:I

    sub-int/2addr v6, v11

    invoke-virtual {v0, v4, v6, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v3, v14

    move v14, v7

    move v7, v15

    move v15, v3

    move/from16 v10, v16

    const/16 v3, 0x22

    const/16 v8, 0x27

    goto/16 :goto_f

    :cond_3d
    const/4 v10, 0x1

    invoke-virtual {v2, v12, v6, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v0, 0x0

    :goto_1a
    iput v0, v1, LC1/e;->f:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_28

    :pswitch_9
    new-instance v0, LC1/c;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6}, LC1/e;->a(ZZ)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_43

    :goto_1b
    invoke-virtual {v1}, LC1/e;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget v3, v1, LC1/e;->f:I

    const/16 v7, 0xc

    if-eq v3, v7, :cond_42

    invoke-virtual {v1, v6, v6}, LC1/e;->a(ZZ)I

    move-result v3

    if-ne v3, v4, :cond_3f

    goto :goto_1c

    :cond_3f
    iget v3, v1, LC1/e;->f:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_41

    invoke-virtual {v1, v6, v6}, LC1/e;->a(ZZ)I

    move-result v3

    if-eq v3, v4, :cond_40

    const/4 v6, 0x0

    goto :goto_1b

    :cond_40
    const-string v0, "Trailing comma found in array"

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Expected a comma or end of the array instead of "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_42
    const/4 v10, 0x1

    const-string v0, "Semi-string is not allowed in array"

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_43
    :goto_1c
    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    const/16 v2, 0xb

    iput v2, v1, LC1/e;->f:I

    return v2

    :pswitch_a
    const/4 v10, 0x1

    new-instance v0, LC1/d;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v10, v6}, LC1/e;->a(ZZ)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    :goto_1d
    iget v3, v1, LC1/e;->f:I

    const/4 v15, 0x5

    if-eq v3, v15, :cond_45

    const/4 v10, 0x6

    const/4 v4, 0x7

    const/16 v6, 0x8

    if-eq v3, v10, :cond_46

    if-eq v3, v4, :cond_46

    if-eq v3, v6, :cond_47

    const/16 v7, 0xc

    if-ne v3, v7, :cond_44

    goto :goto_1e

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Expected STRING, got "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v2, v12, v0, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_45
    const/4 v4, 0x7

    const/16 v6, 0x8

    const/4 v10, 0x6

    :cond_46
    iget-object v3, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LC1/e;->g:Ljava/lang/Object;

    :cond_47
    :goto_1e
    iget-object v3, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v3, Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    iget v5, v1, LC1/e;->f:I

    const-string v7, "Expected COLON, got "

    const/16 v8, 0xc

    if-ne v5, v8, :cond_49

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v5}, LC1/e;->a(ZZ)I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_48

    goto :goto_1f

    :cond_48
    iget v0, v1, LC1/e;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v5}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_49
    const/4 v9, 0x0

    const/4 v13, 0x2

    invoke-virtual {v1, v9, v9}, LC1/e;->a(ZZ)I

    move-result v5

    if-ne v5, v13, :cond_4d

    :goto_1f
    invoke-virtual {v1, v9, v9}, LC1/e;->a(ZZ)I

    invoke-virtual {v1}, LC1/e;->e()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v9}, LC1/e;->a(ZZ)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4a

    goto :goto_20

    :cond_4a
    iget v3, v1, LC1/e;->f:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_4c

    invoke-virtual {v1, v11, v9}, LC1/e;->a(ZZ)I

    move-result v3

    if-eq v3, v5, :cond_4b

    goto/16 :goto_1d

    :cond_4b
    const-string v0, "Trailing object found in array"

    invoke-virtual {v2, v12, v0, v11}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Expected a comma or end of the object instead of "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v11}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_4d
    const/4 v11, 0x1

    iget v0, v1, LC1/e;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0, v11}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_4e
    :goto_20
    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    const/16 v7, 0xa

    iput v7, v1, LC1/e;->f:I

    return v7

    :pswitch_b
    iget-object v0, v2, LC1/h;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_3
    iget-boolean v0, v2, LC1/h;->l:Z

    if-eqz v0, :cond_4f

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_26

    :catch_3
    move-exception v0

    goto/16 :goto_27

    :cond_4f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_50

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v17, 0x30

    add-int/lit8 v0, v0, -0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_26

    :cond_50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_51

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_51

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v17, 0x30

    rsub-int/lit8 v15, v0, 0x30

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26

    :cond_51
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_52

    const/4 v11, 0x1

    goto :goto_21

    :cond_52
    move v11, v6

    :goto_21
    if-eqz v11, :cond_53

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_22
    const/16 v7, 0xa

    goto :goto_23

    :cond_53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_22

    :goto_23
    if-lt v0, v7, :cond_57

    if-ne v0, v7, :cond_54

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_54

    goto :goto_25

    :cond_54
    const/16 v4, 0x13

    if-lt v0, v4, :cond_56

    if-ne v0, v4, :cond_55

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x39

    if-ge v0, v11, :cond_55

    goto :goto_24

    :cond_55
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_56
    :goto_24
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_26

    :cond_57
    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_26
    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    goto :goto_28

    :goto_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v2, v0, v3, v10}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :pswitch_c
    iget-object v0, v2, LC1/h;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    goto :goto_28

    :pswitch_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    goto :goto_28

    :pswitch_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    goto :goto_28

    :pswitch_f
    iput-object v12, v1, LC1/e;->g:Ljava/lang/Object;

    :goto_28
    iget v0, v1, LC1/e;->f:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public b(Z)Lu1/H0;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Lu1/S;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/S;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, LC1/e;->f:I

    iget-object v1, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lu1/H0;->f(I[Ljava/lang/Object;LC1/e;)Lu1/H0;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast p1, Lu1/S;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lu1/S;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public c()Lu1/T;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LC1/e;->b(Z)Lu1/H0;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, v0, LM0/t1;->i:LM0/X0;

    iget-object v2, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget v3, p0, LC1/e;->f:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LM0/t1;->i:LM0/X0;

    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1, p1}, LM0/d2;->m0(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1, v3, p1}, LM0/d2;->v(ILjava/util/List;)V

    :goto_0
    new-instance p1, LG/b0;

    invoke-direct {p1}, LG/b0;-><init>()V

    const/16 v1, 0x14

    iget-object v3, p1, LG/b0;->a:LE/b;

    invoke-virtual {v3, v1}, LE/b;->a(I)V

    invoke-virtual {p1}, LG/b0;->c()LG/c0;

    invoke-virtual {v0, v2}, LM0/X0;->r(LM0/N0;)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LC1/e;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    return-object v0

    :cond_0
    iget-object v1, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v1, LC1/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected JSON value, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0
.end method

.method public f(LJ/k;)V
    .locals 5

    iget-object v0, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/F;

    iget-object v2, v1, LU/F;->b:Ljava/lang/Object;

    iget-object v1, v1, LU/F;->a:Landroid/os/Handler;

    new-instance v3, LH/i;

    const/16 v4, 0x1c

    invoke-direct {v3, p1, v2, v4}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p0, LC1/e;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, LC1/e;->f:I

    :cond_0
    :goto_0
    iget v1, p0, LC1/e;->f:I

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ge p1, v1, :cond_1

    iget v1, p0, LC1/e;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LC1/e;->f:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, LC1/e;->f:I

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, LC1/e;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt p1, v1, :cond_2

    iget v1, p0, LC1/e;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LC1/e;->f:I

    goto :goto_1

    :cond_2
    iget p1, p0, LC1/e;->f:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 2

    iget v0, p0, LC1/e;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x200

    return v0

    :cond_1
    const/16 v0, 0x800

    return v0
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;
    .locals 3

    iget v0, p0, LC1/e;->f:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    invoke-static {v2, v0}, Lu1/J;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Lu1/s;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, LC1/e;->f:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LC1/e;->f:I

    return-object p0
.end method

.method public n(Ljava/lang/Iterable;)LC1/e;
    .locals 3

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget v0, p0, LC1/e;->f:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    if-le v1, v2, :cond_0

    array-length v2, v0

    invoke-static {v2, v1}, Lu1/J;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Lt1/s;

    invoke-interface {v0, p0, p1}, Lt1/s;->a(LC1/e;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v1, p1

    check-cast v1, Lt1/r;

    invoke-virtual {v1}, Lt1/r;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lt1/r;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public p(Lc1/k;)V
    .locals 4

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, LC1/e;->f:I

    if-lez v0, :cond_0

    new-instance v0, Ln1/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/d;-><init>(Landroid/os/Looper;I)V

    new-instance v1, Lz1/v;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LifecycleCallback with tag ConnectionlessLifecycleHelper already added to this fragment."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(IILandroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/k;

    iget-object v2, v1, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v1, Lc1/k;->g:Lc1/d;

    iget-object v4, v1, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/B;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_3

    const/4 v7, 0x2

    if-eq p1, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v1, Lc1/k;->e:La1/d;

    invoke-virtual {v1}, Lc1/k;->a()Landroid/app/Activity;

    move-result-object v1

    sget v8, La1/e;->a:I

    invoke-virtual {v7, v8, v1}, La1/e;->c(ILandroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v3, Lc1/d;->r:Ln1/d;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    iget-object v5, v2, Lc1/B;->b:La1/a;

    iget v5, v5, La1/a;->f:I

    const/16 v7, 0x12

    if-ne v5, v7, :cond_6

    if-ne v1, v7, :cond_6

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v3, Lc1/d;->r:Ln1/d;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    if-eqz p3, :cond_5

    const-string v5, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_5
    new-instance v5, La1/a;

    iget-object v8, v2, Lc1/B;->b:La1/a;

    invoke-virtual {v8}, La1/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v1, v6, v8}, La1/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    iget v1, v2, Lc1/B;->a:I

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v1}, Lc1/d;->g(La1/a;I)V

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v2, :cond_0

    iget-object v1, v2, Lc1/B;->b:La1/a;

    iget v2, v2, Lc1/B;->a:I

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2}, Lc1/d;->g(La1/a;I)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public r(Lb0/o;J)Lb0/g;
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lb0/o;->getPosition()J

    move-result-wide v4

    const v1, 0x1b8a0

    int-to-long v1, v1

    invoke-interface/range {p1 .. p1}, Lb0/o;->getLength()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v2, LJ/D;

    invoke-virtual {v2, v1}, LJ/D;->K(I)V

    iget-object v3, v2, LJ/D;->a:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v3, v1}, Lb0/o;->l(I[BI)V

    iget v1, v2, LJ/D;->c:I

    const-wide/16 v6, -0x1

    move-wide v10, v6

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v3

    const/16 v12, 0xbc

    if-lt v3, v12, :cond_7

    iget-object v3, v2, LJ/D;->a:[B

    iget v12, v2, LJ/D;->b:I

    :goto_1
    if-ge v12, v1, :cond_0

    aget-byte v15, v3, v12

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v8, 0x47

    if-eq v15, v8, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    add-int/lit16 v3, v12, 0xbc

    if-le v3, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v6, v0, LC1/e;->f:I

    invoke-static {v2, v12, v6}, Landroid/support/v4/media/session/b;->h(LJ/D;II)J

    move-result-wide v6

    cmp-long v8, v6, v16

    if-eqz v8, :cond_6

    iget-object v8, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v8, LJ/S;

    invoke-virtual {v8, v6, v7}, LJ/S;->b(J)J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-lez v8, :cond_4

    cmp-long v1, v13, v16

    if-nez v1, :cond_3

    new-instance v1, Lb0/g;

    move-wide v2, v6

    const/4 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lb0/g;-><init>(JJI)V

    return-object v1

    :cond_3
    add-long v15, v4, v10

    new-instance v12, Lb0/g;

    const/16 v17, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v12 .. v17}, Lb0/g;-><init>(JJI)V

    return-object v12

    :cond_4
    move-wide v13, v6

    const-wide/32 v6, 0x186a0

    add-long/2addr v6, v13

    cmp-long v6, v6, p2

    if-lez v6, :cond_5

    int-to-long v1, v12

    add-long v9, v4, v1

    new-instance v6, Lb0/g;

    const/4 v11, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Lb0/g;-><init>(JJI)V

    return-object v6

    :cond_5
    int-to-long v6, v12

    move-wide v10, v6

    :cond_6
    invoke-virtual {v2, v3}, LJ/D;->N(I)V

    int-to-long v6, v3

    goto :goto_0

    :cond_7
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    cmp-long v1, v13, v16

    if-eqz v1, :cond_8

    add-long v15, v4, v6

    new-instance v12, Lb0/g;

    const/16 v17, -0x2

    invoke-direct/range {v12 .. v17}, Lb0/g;-><init>(JJI)V

    return-object v12

    :cond_8
    sget-object v1, Lb0/g;->d:Lb0/g;

    return-object v1
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LC1/e;->f:I

    iput-object p1, p0, LC1/e;->h:Ljava/lang/Object;

    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/k;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lc1/k;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/k;

    iget-object v3, v3, Lc1/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc1/B;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lc1/B;->b:La1/a;

    const-string v5, "resolving_error"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "failed_client_id"

    iget v3, v3, Lc1/B;->a:I

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v3, v4, La1/a;->f:I

    const-string v5, "failed_status"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v4, La1/a;->g:Landroid/app/PendingIntent;

    const-string v4, "failed_resolution"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LC1/e;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, LW1/r;

    sget-object v2, LW1/r;->f:LW1/r;

    if-ne v1, v2, :cond_0

    const-string v1, "HTTP/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, LC1/e;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, LJ/D;

    sget-object v1, LJ/W;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, LJ/D;->L([BI)V

    return-void
.end method
