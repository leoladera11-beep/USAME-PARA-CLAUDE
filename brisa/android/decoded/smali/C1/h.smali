.class public final LC1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:[C

.field public static final n:[C

.field public static final o:[C


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public final h:Ljava/io/StringReader;

.field public final i:[C

.field public j:I

.field public final k:Ljava/lang/StringBuilder;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, LC1/h;->m:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, LC1/h;->n:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, LC1/h;->o:[C

    return-void

    :array_0
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LC1/h;->a:I

    const v1, 0x8000

    new-array v1, v1, [C

    iput-object v1, p0, LC1/h;->i:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, LC1/h;->k:Ljava/lang/StringBuilder;

    iput-object p1, p0, LC1/h;->h:Ljava/io/StringReader;

    invoke-virtual {p0}, LC1/h;->i()Z

    move-result p1

    iput-boolean p1, p0, LC1/h;->f:Z

    :cond_0
    const/16 p1, 0x100

    invoke-virtual {p0, p1}, LC1/h;->f(I)I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    iget-object v3, p0, LC1/h;->i:[C

    iget v4, p0, LC1/h;->g:I

    aget-char v3, v3, v4

    invoke-static {v3}, LC1/h;->h(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, LC1/h;->g()V

    return-void

    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    iget v3, p0, LC1/h;->a:I

    add-int/2addr v3, v0

    iput v3, p0, LC1/h;->a:I

    iget v3, p0, LC1/h;->g:I

    add-int/2addr v3, v0

    iget v4, p0, LC1/h;->c:I

    add-int/2addr v3, v4

    iput v3, p0, LC1/h;->b:I

    iput v1, p0, LC1/h;->d:I

    :cond_2
    iget v3, p0, LC1/h;->g:I

    add-int/2addr v3, v0

    iput v3, p0, LC1/h;->g:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-gtz p1, :cond_0

    iput-boolean v0, p0, LC1/h;->f:Z

    return-void
.end method

.method public static h(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-boolean v0, p0, LC1/h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, LC1/h;->g:I

    iget-object v1, p0, LC1/h;->i:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget v2, p0, LC1/h;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LC1/h;->a:I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, LC1/h;->c:I

    add-int/2addr v2, v3

    iput v2, p0, LC1/h;->b:I

    const/4 v2, 0x0

    iput v2, p0, LC1/h;->d:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LC1/h;->g:I

    iget v2, p0, LC1/h;->j:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, LC1/h;->i()Z

    move-result v0

    iput-boolean v0, p0, LC1/h;->f:Z

    :cond_2
    return v1
.end method

.method public final b(C[C)V
    .locals 4

    array-length v0, p2

    invoke-virtual {p0, v0}, LC1/h;->f(I)I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    :goto_0
    array-length v0, p2

    iget-object v1, p0, LC1/h;->i:[C

    if-ge v2, v0, :cond_1

    iget v0, p0, LC1/h;->g:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, LC1/h;->g:I

    aget-char v0, v1, v0

    aget-char v1, p2, v2

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, LC1/h;->d(C[CI)LC1/f;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, LC1/h;->g()V

    iget-boolean v0, p0, LC1/h;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget v0, p0, LC1/h;->g:I

    aget-char v0, v1, v0

    :goto_1
    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, LC1/h;->d(C[CI)LC1/f;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, v2}, LC1/h;->d(C[CI)LC1/f;

    move-result-object p1

    throw p1
.end method

.method public final c()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LC1/h;->k:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v3, 0x100

    invoke-virtual {v0, v3}, LC1/h;->f(I)I

    move-result v4

    const-string v5, "String was not terminated before end of input"

    const/4 v6, 0x0

    if-eqz v4, :cond_18

    move v8, v2

    :goto_1
    iget-object v9, v0, LC1/h;->i:[C

    if-ge v8, v4, :cond_17

    invoke-virtual {v0}, LC1/h;->j()C

    move-result v10

    invoke-static {v10}, LC1/h;->h(I)Z

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_1
    const-string v12, "Invalid character in semi-string: "

    const/16 v13, 0x2c

    const/16 v14, 0x7d

    const/16 v15, 0x7b

    const/16 v16, 0x1

    const/16 v7, 0x5c

    if-eq v10, v7, :cond_3

    const/16 v7, 0x5b

    if-eq v10, v7, :cond_2

    const/16 v7, 0x5d

    if-eq v10, v7, :cond_2

    if-eq v10, v15, :cond_2

    if-eq v10, v14, :cond_2

    if-eq v10, v13, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_3
    iget v4, v0, LC1/h;->g:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v9, v4, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v4, v0, LC1/h;->g:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, LC1/h;->g:I

    :goto_2
    invoke-virtual {v0, v3}, LC1/h;->f(I)I

    move-result v4

    if-eqz v4, :cond_16

    iget v8, v0, LC1/h;->g:I

    add-int/2addr v8, v4

    :goto_3
    iget v4, v0, LC1/h;->g:I

    const-string v10, "EOF encountered in the middle of a string escape"

    if-ge v4, v8, :cond_14

    invoke-virtual {v0}, LC1/h;->j()C

    move-result v4

    const/16 v3, 0x9

    if-eq v4, v3, :cond_13

    const/16 v3, 0xa

    if-eq v4, v3, :cond_13

    const/16 v3, 0xd

    if-eq v4, v3, :cond_13

    const/16 v3, 0x20

    if-eq v4, v3, :cond_13

    if-eq v4, v13, :cond_12

    if-eq v4, v11, :cond_13

    if-eq v4, v15, :cond_12

    if-eq v4, v14, :cond_12

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_0
    iget v3, v0, LC1/h;->g:I

    sub-int v3, v8, v3

    const/16 v4, 0x75

    const/4 v11, 0x5

    if-ge v3, v11, :cond_6

    invoke-virtual {v0, v11}, LC1/h;->f(I)I

    move-result v3

    iget v8, v0, LC1/h;->g:I

    add-int v17, v8, v3

    aget-char v8, v9, v8

    if-ne v8, v4, :cond_5

    if-lt v3, v11, :cond_4

    goto :goto_4

    :cond_4
    iget v1, v0, LC1/h;->j:I

    iput v1, v0, LC1/h;->g:I

    invoke-virtual {v0, v6, v10, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_5
    :goto_4
    move/from16 v8, v17

    :cond_6
    iget v3, v0, LC1/h;->g:I

    add-int/lit8 v10, v3, 0x1

    iput v10, v0, LC1/h;->g:I

    aget-char v3, v9, v3

    const/16 v10, 0x22

    if-eq v3, v10, :cond_11

    const/16 v10, 0x2f

    if-eq v3, v10, :cond_11

    if-eq v3, v7, :cond_11

    const/16 v10, 0x62

    if-eq v3, v10, :cond_10

    const/16 v10, 0x66

    if-eq v3, v10, :cond_f

    const/16 v11, 0x6e

    if-eq v3, v11, :cond_e

    const/16 v11, 0x72

    if-eq v3, v11, :cond_d

    const/16 v11, 0x74

    if-eq v3, v11, :cond_c

    if-ne v3, v4, :cond_b

    move v3, v2

    move v4, v3

    :goto_5
    const/4 v11, 0x4

    if-ge v3, v11, :cond_a

    shl-int/lit8 v4, v4, 0x4

    iget v11, v0, LC1/h;->g:I

    add-int/lit8 v7, v11, 0x1

    iput v7, v0, LC1/h;->g:I

    aget-char v7, v9, v11

    const/16 v11, 0x30

    if-lt v7, v11, :cond_7

    const/16 v11, 0x39

    if-gt v7, v11, :cond_7

    add-int/lit8 v7, v7, -0x30

    :goto_6
    or-int/2addr v4, v7

    goto :goto_7

    :cond_7
    const/16 v11, 0x41

    if-lt v7, v11, :cond_8

    const/16 v11, 0x46

    if-gt v7, v11, :cond_8

    add-int/lit8 v7, v7, -0x37

    goto :goto_6

    :cond_8
    const/16 v11, 0x61

    if-lt v7, v11, :cond_9

    if-gt v7, v10, :cond_9

    add-int/lit8 v7, v7, -0x57

    goto :goto_6

    :goto_7
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x5c

    goto :goto_5

    :cond_9
    int-to-char v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected unicode hex escape character: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_a
    int-to-char v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Invalid escape: \\"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_c
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_10
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v3, 0x100

    const/16 v7, 0x5c

    const/16 v11, 0x3a

    goto/16 :goto_3

    :cond_12
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_13
    invoke-virtual {v0}, LC1/h;->g()V

    return-void

    :cond_14
    iget v3, v0, LC1/h;->j:I

    if-gt v4, v3, :cond_15

    const/16 v3, 0x100

    const/16 v7, 0x5c

    const/16 v11, 0x3a

    goto/16 :goto_2

    :cond_15
    iput v3, v0, LC1/h;->g:I

    invoke-virtual {v0, v6, v10, v2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :cond_16
    move/from16 v3, v16

    invoke-virtual {v0, v6, v5, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    :goto_9
    iget v2, v0, LC1/h;->g:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v3

    invoke-virtual {v1, v9, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LC1/h;->g()V

    return-void

    :cond_17
    iget v3, v0, LC1/h;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x1

    invoke-virtual {v0, v6, v5, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(C[CI)LC1/f;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, p3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-boolean p3, p0, LC1/h;->f:Z

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    goto :goto_2

    :cond_1
    iget-object p3, p0, LC1/h;->i:[C

    iget v2, p0, LC1/h;->g:I

    aget-char p3, p3, v2

    :goto_2
    const/16 v2, 0x41

    if-lt p3, v2, :cond_2

    const/16 v2, 0x5a

    if-le p3, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt p3, v2, :cond_4

    const/16 v2, 0x7a

    if-gt p3, v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v2, 0xf

    if-ge p3, v2, :cond_4

    invoke-virtual {p0}, LC1/h;->a()I

    move-result p3

    int-to-char p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, ". Did you mean \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected token \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;
    .locals 5

    const-string v0, ", char "

    const-string v1, " on line "

    if-eqz p3, :cond_0

    new-instance p3, LC1/f;

    iget v2, p0, LC1/h;->a:I

    iget v3, p0, LC1/h;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    :cond_0
    iget p3, p0, LC1/h;->g:I

    iget v2, p0, LC1/h;->c:I

    add-int/2addr p3, v2

    iget v2, p0, LC1/h;->b:I

    sub-int/2addr p3, v2

    iget v2, p0, LC1/h;->d:I

    sub-int/2addr p3, v2

    const/4 v2, 0x1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    new-instance v2, LC1/f;

    iget v3, p0, LC1/h;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final f(I)I
    .locals 4

    iget v0, p0, LC1/h;->j:I

    sub-int v1, v0, p1

    iget v2, p0, LC1/h;->g:I

    if-lt v1, v2, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, LC1/h;->i:[C

    if-lez v2, :cond_1

    iget v3, p0, LC1/h;->c:I

    add-int/2addr v3, v2

    iput v3, p0, LC1/h;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, LC1/h;->j:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, LC1/h;->g:I

    :cond_1
    :try_start_0
    array-length v0, v1

    iget v2, p0, LC1/h;->j:I

    if-le v0, v2, :cond_3

    iget-object v0, p0, LC1/h;->h:Ljava/io/StringReader;

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    iget p1, p0, LC1/h;->j:I

    iget v0, p0, LC1/h;->g:I

    sub-int/2addr p1, v0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget v2, p0, LC1/h;->j:I

    add-int/2addr v2, v0

    iput v2, p0, LC1/h;->j:I

    if-le v2, p1, :cond_1

    iget p1, p0, LC1/h;->g:I

    sub-int/2addr v2, p1

    return v2

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected internal error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "IOException"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object p1

    throw p1
.end method

.method public final g()V
    .locals 2

    iget v0, p0, LC1/h;->g:I

    iget v1, p0, LC1/h;->j:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, LC1/h;->i()Z

    move-result v0

    iput-boolean v0, p0, LC1/h;->f:Z

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, LC1/h;->h:Ljava/io/StringReader;

    iget-object v2, p0, LC1/h;->i:[C

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, LC1/h;->c:I

    iget v3, p0, LC1/h;->j:I

    add-int/2addr v2, v3

    iput v2, p0, LC1/h;->c:I

    iput v4, p0, LC1/h;->g:I

    iput v1, p0, LC1/h;->j:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    const-string v2, "IOException"

    invoke-virtual {p0, v1, v2, v0}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0
.end method

.method public final j()C
    .locals 4

    iget v0, p0, LC1/h;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LC1/h;->g:I

    iget-object v1, p0, LC1/h;->i:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget v2, p0, LC1/h;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LC1/h;->a:I

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, LC1/h;->c:I

    add-int/2addr v0, v2

    iput v0, p0, LC1/h;->b:I

    iput v3, p0, LC1/h;->d:I

    :cond_0
    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Strings may not contain control characters: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v3}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object v0

    throw v0

    :cond_1
    return v1
.end method
