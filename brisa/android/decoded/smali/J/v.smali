.class public final LJ/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/b;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, LJ/v;-><init>(ILjava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, LJ/v;->e:I

    .line 11
    iput-object p2, p0, LJ/v;->i:Ljava/lang/Object;

    .line 12
    iput p3, p0, LJ/v;->f:I

    .line 13
    iput p4, p0, LJ/v;->g:I

    .line 14
    iput p5, p0, LJ/v;->h:I

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LJ/v;->i:Ljava/lang/Object;

    .line 3
    iput p1, p0, LJ/v;->f:I

    .line 4
    iput p1, p0, LJ/v;->g:I

    .line 5
    iput p3, p0, LJ/v;->e:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, LJ/v;->h:I

    .line 7
    invoke-virtual {p0}, LJ/v;->d()V

    return-void
.end method

.method public static e(IIIZ)Ljava/lang/String;
    .locals 3

    const-string v0, "av01."

    const-string v1, "."

    invoke-static {v0, v1, p0}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d"

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "H"

    goto :goto_0

    :cond_0
    const-string p1, "M"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h([B)LJ/v;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "Unsupported obu_type: "

    const-string v2, "Unsupported av1C version: "

    :try_start_0
    new-instance v3, LJ/B;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, LJ/B;-><init>([BI)V

    invoke-virtual {v3}, LJ/B;->n()V

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, LJ/B;->g(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Av1Config"

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, LJ/B;->g(I)I

    move-result v4

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, LJ/B;->g(I)I

    move-result v8

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v10

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v11

    const/16 v12, 0xc

    const/16 v13, 0x8

    if-eqz v10, :cond_2

    if-eqz v11, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    const/16 v10, 0xa

    :goto_0
    move v15, v10

    goto :goto_1

    :cond_2
    move v15, v13

    :goto_1
    const/16 v10, 0xd

    invoke-virtual {v3, v10}, LJ/B;->o(I)V

    invoke-static {v4, v8, v15, v9}, LJ/v;->e(IIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LJ/B;->b()I

    move-result v8

    if-gtz v8, :cond_3

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3
    invoke-virtual {v3}, LJ/B;->n()V

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v9

    if-eq v9, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Unsupported obu_extension_flag"

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v1

    invoke-virtual {v3}, LJ/B;->n()V

    if-eqz v1, :cond_6

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v1

    const/16 v9, 0x7f

    if-le v1, v9, :cond_6

    const-string v0, "Excessive obu_size"

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_6
    invoke-virtual {v3, v2}, LJ/B;->g(I)I

    move-result v1

    invoke-virtual {v3}, LJ/B;->n()V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v0, "Unsupported reduced_still_picture_header"

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_7
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v0, "Unsupported timing_info_present_flag"

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_8
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v0, "Unsupported initial_display_delay_present_flag"

    invoke-static {v5, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_9
    invoke-virtual {v3, v7}, LJ/B;->g(I)I

    move-result v5

    const/4 v9, 0x0

    move v11, v9

    :goto_2
    if-gt v11, v5, :cond_b

    invoke-virtual {v3, v12}, LJ/B;->o(I)V

    invoke-virtual {v3, v7}, LJ/B;->g(I)I

    move-result v14

    if-le v14, v0, :cond_a

    invoke-virtual {v3}, LJ/B;->n()V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v5

    invoke-virtual {v3, v8}, LJ/B;->g(I)I

    move-result v7

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, LJ/B;->o(I)V

    add-int/2addr v7, v6

    invoke-virtual {v3, v7}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3, v0}, LJ/B;->o(I)V

    :cond_c
    invoke-virtual {v3, v0}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_d

    invoke-virtual {v3, v5}, LJ/B;->o(I)V

    :cond_d
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v5

    goto :goto_3

    :cond_e
    invoke-virtual {v3, v6}, LJ/B;->g(I)I

    move-result v7

    :goto_3
    if-lez v7, :cond_f

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v3, v6}, LJ/B;->o(I)V

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v3, v2}, LJ/B;->o(I)V

    :cond_10
    invoke-virtual {v3, v2}, LJ/B;->o(I)V

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v0

    if-ne v1, v5, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v3}, LJ/B;->n()V

    :cond_11
    if-eq v1, v6, :cond_12

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    move v9, v6

    :cond_12
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, LJ/v;

    invoke-direct {v0, v15, v4}, LJ/v;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_13
    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v0

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v1

    invoke-virtual {v3, v13}, LJ/B;->g(I)I

    move-result v2

    if-nez v9, :cond_14

    if-ne v0, v6, :cond_14

    if-ne v1, v10, :cond_14

    if-nez v2, :cond_14

    move v2, v6

    goto :goto_4

    :cond_14
    invoke-virtual {v3, v6}, LJ/B;->g(I)I

    move-result v2

    :goto_4
    invoke-static {v0}, LG/n;->g(I)I

    move-result v17

    if-ne v2, v6, :cond_15

    move/from16 v18, v6

    goto :goto_5

    :cond_15
    move/from16 v18, v5

    :goto_5
    invoke-static {v1}, LG/n;->h(I)I

    move-result v19

    new-instance v14, LJ/v;

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v19}, LJ/v;-><init>(ILjava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v14

    :catch_0
    move-exception v0

    const-string v1, "Error parsing AV1 config"

    invoke-static {v0, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LJ/v;->e:I

    return v0
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v0, LJ/D;

    iget v1, p0, LJ/v;->f:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v0

    return v0

    :cond_0
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v0

    return v0

    :cond_1
    iget v1, p0, LJ/v;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LJ/v;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v0

    iput v0, p0, LJ/v;->h:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, LJ/v;->h:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, LJ/v;->g:I

    if-ltz v0, :cond_1

    iget v1, p0, LJ/v;->e:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, LJ/v;->h:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    return-void
.end method

.method public f(I)Z
    .locals 4

    iget v0, p0, LJ/v;->g:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iget v3, p0, LJ/v;->h:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    iget v1, p0, LJ/v;->e:I

    if-gt v2, v1, :cond_2

    invoke-virtual {p0, v0}, LJ/v;->n(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, LJ/v;->e:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public g()Z
    .locals 7

    iget v0, p0, LJ/v;->g:I

    iget v1, p0, LJ/v;->h:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, LJ/v;->g:I

    iget v5, p0, LJ/v;->e:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, LJ/v;->i()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, LJ/v;->g:I

    iget v5, p0, LJ/v;->e:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput v0, p0, LJ/v;->g:I

    iput v1, p0, LJ/v;->h:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, LJ/v;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v6

    :cond_2
    return v2
.end method

.method public i()Z
    .locals 3

    iget-object v0, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, LJ/v;->g:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, LJ/v;->h:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LJ/v;->o()V

    return v0
.end method

.method public j(I)I
    .locals 9

    iget v0, p0, LJ/v;->h:I

    add-int/2addr v0, p1

    iput v0, p0, LJ/v;->h:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LJ/v;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, LJ/v;->h:I

    iget-object v5, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v5, [B

    iget v6, p0, LJ/v;->g:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v2}, LJ/v;->n(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    add-int/2addr v6, v3

    iput v6, p0, LJ/v;->g:I

    goto :goto_0

    :cond_1
    iget-object v6, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v6, [B

    iget v7, p0, LJ/v;->g:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    rsub-int/lit8 p1, p1, 0x20

    const/4 v6, -0x1

    ushr-int p1, v6, p1

    and-int/2addr p1, v1

    if-ne v2, v5, :cond_3

    iput v0, p0, LJ/v;->h:I

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, LJ/v;->n(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v7, v3

    iput v7, p0, LJ/v;->g:I

    :cond_3
    invoke-virtual {p0}, LJ/v;->d()V

    return p1
.end method

.method public k()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, LJ/v;->i()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, LJ/v;->j(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public l()I
    .locals 3

    invoke-virtual {p0}, LJ/v;->k()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public m()J
    .locals 5

    iget v0, p0, LJ/v;->g:I

    if-eqz v0, :cond_0

    iget-object v1, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, LJ/v;->e:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, LJ/v;->h:I

    and-int/2addr v1, v2

    iput v1, p0, LJ/v;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LJ/v;->g:I

    return-wide v3

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public n(I)Z
    .locals 4

    iget v0, p0, LJ/v;->f:I

    add-int/lit8 v1, p1, -0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, LJ/v;->e:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LJ/v;->i:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v2, v0, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o()V
    .locals 3

    iget v0, p0, LJ/v;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LJ/v;->h:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, LJ/v;->h:I

    iget v0, p0, LJ/v;->g:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, LJ/v;->n(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, LJ/v;->g:I

    :cond_1
    invoke-virtual {p0}, LJ/v;->d()V

    return-void
.end method

.method public p(I)V
    .locals 4

    iget v0, p0, LJ/v;->g:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iput v2, p0, LJ/v;->g:I

    iget v3, p0, LJ/v;->h:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    iput p1, p0, LJ/v;->h:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LJ/v;->g:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LJ/v;->h:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, LJ/v;->g:I

    if-gt v0, p1, :cond_1

    invoke-virtual {p0, v0}, LJ/v;->n(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, LJ/v;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LJ/v;->g:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LJ/v;->d()V

    return-void
.end method
