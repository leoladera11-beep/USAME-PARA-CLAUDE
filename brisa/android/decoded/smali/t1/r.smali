.class public final Lt1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Lt1/i;

.field public i:I

.field public j:I

.field public final synthetic k:I

.field public final synthetic l:Lt1/s;


# direct methods
.method public constructor <init>(Lt1/s;LC1/e;Ljava/lang/CharSequence;I)V
    .locals 0

    iput p4, p0, Lt1/r;->k:I

    iput-object p1, p0, Lt1/r;->l:Lt1/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lt1/r;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lt1/r;->i:I

    iget-object p1, p2, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Lt1/i;

    iput-object p1, p0, Lt1/r;->h:Lt1/i;

    iget p1, p2, LC1/e;->f:I

    iput p1, p0, Lt1/r;->j:I

    iput-object p3, p0, Lt1/r;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 13

    iget v0, p0, Lt1/r;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget v0, p0, Lt1/r;->e:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d

    iput v3, p0, Lt1/r;->e:I

    iget v0, p0, Lt1/r;->i:I

    :cond_1
    :goto_1
    iget v3, p0, Lt1/r;->i:I

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    iget v6, p0, Lt1/r;->k:I

    packed-switch v6, :pswitch_data_0

    iget-object v6, p0, Lt1/r;->l:Lt1/s;

    check-cast v6, LK/a;

    iget-object v7, v6, LK/a;->e:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lt1/r;->g:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_2
    if-gt v3, v9, :cond_3

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_5

    add-int v11, v10, v3

    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    iget-object v12, v6, LK/a;->e:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    goto :goto_5

    :pswitch_0
    iget-object v6, p0, Lt1/r;->l:Lt1/s;

    check-cast v6, LZ0/i;

    iget-object v6, v6, LZ0/i;->e:Ljava/lang/Object;

    check-cast v6, Lt1/e;

    iget-object v7, p0, Lt1/r;->g:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v3, v8}, LF1/i;->l(II)V

    :goto_4
    if-ge v3, v8, :cond_3

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Lt1/e;->c(C)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v6, p0, Lt1/r;->g:Ljava/lang/CharSequence;

    if-ne v3, v5, :cond_6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v5, p0, Lt1/r;->i:I

    goto :goto_7

    :cond_6
    iget v7, p0, Lt1/r;->k:I

    packed-switch v7, :pswitch_data_1

    iget-object v7, p0, Lt1/r;->l:Lt1/s;

    check-cast v7, LK/a;

    iget-object v7, v7, LK/a;->e:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_6

    :pswitch_1
    add-int/lit8 v7, v3, 0x1

    :goto_6
    iput v7, p0, Lt1/r;->i:I

    :goto_7
    iget v7, p0, Lt1/r;->i:I

    if-ne v7, v0, :cond_7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lt1/r;->i:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v7, v3, :cond_1

    iput v5, p0, Lt1/r;->i:I

    goto/16 :goto_1

    :cond_7
    :goto_8
    iget-object v7, p0, Lt1/r;->h:Lt1/i;

    if-ge v0, v3, :cond_8

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lt1/i;->c(C)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    if-le v3, v0, :cond_9

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lt1/i;->c(C)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_9
    iget v8, p0, Lt1/r;->j:I

    if-ne v8, v2, :cond_a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v5, p0, Lt1/r;->i:I

    :goto_a
    if-le v3, v0, :cond_b

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v7, v5}, Lt1/i;->c(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_a
    sub-int/2addr v8, v2

    iput v8, p0, Lt1/r;->j:I

    :cond_b
    invoke-interface {v6, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_c
    iput v4, p0, Lt1/r;->e:I

    const/4 v0, 0x0

    :goto_b
    iput-object v0, p0, Lt1/r;->f:Ljava/lang/String;

    iget v0, p0, Lt1/r;->e:I

    if-eq v0, v4, :cond_d

    iput v2, p0, Lt1/r;->e:I

    return v2

    :cond_d
    return v1

    :cond_e
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lt1/r;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lt1/r;->e:I

    iget-object v0, p0, Lt1/r;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lt1/r;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
