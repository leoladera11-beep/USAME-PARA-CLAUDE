.class public final Lp2/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final f:[C


# instance fields
.field public final e:Lp2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lp2/S;->f:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x7cs
        0x5fs
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp2/a;

    invoke-direct {v0, p1}, Lp2/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lp2/S;->e:Lp2/a;

    return-void
.end method

.method public static s(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ln2/e;->g(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ln2/e;->e(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    aget-char v6, p0, v4

    if-ne v6, v0, :cond_1

    if-ne v5, v0, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    move v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lp2/a;->c()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->close()V

    return-void
.end method

.method public final e(CC)Ljava/lang/String;
    .locals 11

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp2/S;->e:Lp2/a;

    iget v2, v1, Lp2/a;->i:I

    iget v3, v1, Lp2/a;->h:I

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    iput v4, v1, Lp2/a;->j:I

    :cond_0
    invoke-virtual {v1}, Lp2/a;->e()V

    iget v2, v1, Lp2/a;->h:I

    iput v2, v1, Lp2/a;->l:I

    move v2, v4

    move v3, v2

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_0
    invoke-virtual {v1}, Lp2/a;->y()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v1}, Lp2/a;->r()C

    move-result v8

    const/16 v9, 0x5c

    const/4 v10, 0x1

    if-ne v2, v9, :cond_4

    const/16 v2, 0x51

    if-ne v8, v2, :cond_2

    move v7, v10

    goto :goto_1

    :cond_2
    const/16 v2, 0x45

    if-ne v8, v2, :cond_3

    move v7, v4

    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const/16 v2, 0x27

    if-ne v8, v2, :cond_5

    if-eq v8, p1, :cond_5

    if-nez v3, :cond_5

    xor-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0x22

    if-ne v8, v2, :cond_6

    if-eq v8, p1, :cond_6

    if-nez v5, :cond_6

    xor-int/lit8 v3, v3, 0x1

    :cond_6
    :goto_2
    if-nez v5, :cond_a

    if-nez v3, :cond_a

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    if-ne v8, p1, :cond_8

    add-int/lit8 v6, v6, 0x1

    if-le v6, v10, :cond_b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    if-ne v8, p2, :cond_9

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    if-gtz v6, :cond_d

    :goto_5
    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    if-gtz v6, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {v1}, Lp2/a;->H()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Did not find balanced marker at \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lm2/g;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    move v2, v8

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lp2/a;->e()V

    iget v1, v0, Lp2/a;->h:I

    iget v2, v0, Lp2/a;->i:I

    iget-object v3, v0, Lp2/a;->g:[C

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, v3, v4

    invoke-static {v5}, Lp2/S;->s(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v4, v0, Lp2/a;->h:I

    const-string v2, ""

    if-le v4, v1, :cond_1

    iget-object v3, v0, Lp2/a;->g:[C

    iget-object v5, v0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-static {v3, v5, v1, v4}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v1

    invoke-static {v1}, Lp2/S;->s(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lp2/a;->r()C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const v5, 0xfffd

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lp2/S;->c()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_f

    invoke-virtual {p0}, Lp2/S;->c()V

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v1

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_7

    :cond_6
    invoke-virtual {v0}, Lp2/a;->I()V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lp2/a;->r()C

    move-result v1

    invoke-static {v1}, Ln2/e;->h(C)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lp2/a;->I()V

    invoke-virtual {v0}, Lp2/a;->e()V

    iget v1, v0, Lp2/a;->h:I

    iget v9, v0, Lp2/a;->i:I

    iget-object v10, v0, Lp2/a;->g:[C

    move v11, v1

    :goto_3
    if-ge v11, v9, :cond_a

    sub-int v12, v11, v1

    const/4 v13, 0x6

    if-ge v12, v13, :cond_a

    aget-char v12, v10, v11

    invoke-static {v12}, Ln2/e;->h(C)Z

    move-result v12

    if-eqz v12, :cond_a

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    iput v11, v0, Lp2/a;->h:I

    if-le v11, v1, :cond_b

    iget-object v9, v0, Lp2/a;->g:[C

    iget-object v10, v0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v11, v1

    invoke-static {v9, v10, v1, v11}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v1, v2

    :goto_4
    const/16 v9, 0x10

    :try_start_0
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_c

    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v9

    if-eqz v9, :cond_c

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v1

    if-ne v1, v7, :cond_d

    invoke-virtual {p0}, Lp2/S;->c()V

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v1

    if-ne v1, v8, :cond_3

    invoke-virtual {p0}, Lp2/S;->c()V

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x20

    if-eq v1, v5, :cond_e

    const/16 v5, 0x9

    if-eq v1, v5, :cond_e

    if-eq v1, v8, :cond_e

    if-eq v1, v7, :cond_e

    if-ne v1, v6, :cond_3

    :cond_e
    invoke-virtual {p0}, Lp2/S;->c()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid escape sequence: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    :goto_6
    invoke-static {v3}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CSS identifier expected, but end of input found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v1}, Lp2/a;->x()C

    move-result v1

    invoke-static {v1}, Ln2/e;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lp2/S;->c()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final t(C)Z
    .locals 1

    iget-object v0, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v0, p1}, Lp2/a;->B(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lp2/a;->r()C

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/S;->e:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
