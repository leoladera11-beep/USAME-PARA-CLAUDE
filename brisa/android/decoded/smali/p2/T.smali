.class public final Lp2/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:[C

.field public static final v:[I


# instance fields
.field public final a:Lp2/a;

.field public final b:Lp2/B;

.field public final c:Lp2/c;

.field public d:Lp2/l1;

.field public e:Lp2/Q;

.field public f:Z

.field public final g:LW0/c;

.field public final h:I

.field public final i:Lp2/N;

.field public final j:Lp2/M;

.field public k:Lp2/O;

.field public final l:Lp2/I;

.field public final m:Lp2/K;

.field public final n:Lp2/J;

.field public final o:Lp2/P;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public final s:[I

.field public final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lp2/T;->u:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lp2/T;->v:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lp2/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp2/l1;->e:Lp2/e0;

    iput-object v0, p0, Lp2/T;->d:Lp2/l1;

    const/4 v0, 0x0

    iput-object v0, p0, Lp2/T;->e:Lp2/Q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp2/T;->f:Z

    new-instance v1, LW0/c;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LW0/c;-><init>(IZ)V

    iput-object v1, p0, Lp2/T;->g:LW0/c;

    new-instance v1, Lp2/I;

    invoke-direct {v1}, Lp2/I;-><init>()V

    iput-object v1, p0, Lp2/T;->l:Lp2/I;

    new-instance v1, Lp2/K;

    invoke-direct {v1}, Lp2/K;-><init>()V

    iput-object v1, p0, Lp2/T;->m:Lp2/K;

    new-instance v1, Lp2/J;

    invoke-direct {v1}, Lp2/J;-><init>()V

    iput-object v1, p0, Lp2/T;->n:Lp2/J;

    iput v0, p0, Lp2/T;->r:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lp2/T;->s:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lp2/T;->t:[I

    iput-object p1, p0, Lp2/T;->c:Lp2/c;

    iput v0, p0, Lp2/T;->h:I

    new-instance v2, Lp2/N;

    invoke-direct {v2, v1, p1}, Lp2/O;-><init>(ILp2/c;)V

    iput-object v2, p0, Lp2/T;->i:Lp2/N;

    iput-object v2, p0, Lp2/T;->k:Lp2/O;

    new-instance v1, Lp2/M;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lp2/O;-><init>(ILp2/c;)V

    iput-object v1, p0, Lp2/T;->j:Lp2/M;

    new-instance v1, Lp2/P;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lp2/O;-><init>(ILp2/c;)V

    iput-boolean v0, v1, Lp2/P;->m:Z

    iput-object v1, p0, Lp2/T;->o:Lp2/P;

    iget-object v0, p1, Lp2/c;->b:Lp2/a;

    iput-object v0, p0, Lp2/T;->a:Lp2/a;

    iget-object p1, p1, Lp2/c;->a:Lp2/D;

    iget-object p1, p1, Lp2/D;->f:Lp2/B;

    iput-object p1, p0, Lp2/T;->b:Lp2/B;

    return-void
.end method


# virtual methods
.method public final a(Lp2/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lp2/T;->m(Lp2/l1;)V

    iget-object p1, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {p1}, Lp2/a;->c()V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lp2/T;->b:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LW0/c;

    const-string v2, "Invalid character reference: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lp2/T;->a:Lp2/a;

    invoke-direct {v1, p2, p1}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 12

    iget-object v0, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_c

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v0}, Lp2/a;->x()C

    move-result v1

    if-ne p1, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v0}, Lp2/a;->e()V

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lp2/a;->g:[C

    iget v1, v0, Lp2/a;->h:I

    aget-char p1, p1, v1

    sget-object v1, Lp2/T;->u:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_2

    goto/16 :goto_c

    :cond_2
    iget p1, v0, Lp2/a;->i:I

    iget v1, v0, Lp2/a;->h:I

    sub-int/2addr p1, v1

    const/16 v1, 0x400

    const/4 v3, 0x0

    if-ge p1, v1, :cond_3

    iput v3, v0, Lp2/a;->j:I

    :cond_3
    invoke-virtual {v0}, Lp2/a;->e()V

    iget p1, v0, Lp2/a;->h:I

    iput p1, v0, Lp2/a;->l:I

    const-string p1, "#"

    invoke-virtual {v0, p1}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ";"

    const-string v4, ""

    const/4 v5, -0x1

    iget-object v6, p0, Lp2/T;->s:[I

    if-eqz p1, :cond_e

    const-string p1, "X"

    invoke-virtual {v0, p1}, Lp2/a;->A(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lp2/a;->e()V

    iget p2, v0, Lp2/a;->h:I

    iget v7, v0, Lp2/a;->i:I

    iget-object v8, v0, Lp2/a;->g:[C

    move v9, p2

    :goto_0
    if-ge v9, v7, :cond_4

    aget-char v10, v8, v9

    invoke-static {v10}, Ln2/e;->h(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    iput v9, v0, Lp2/a;->h:I

    if-le v9, p2, :cond_7

    iget-object v4, v0, Lp2/a;->g:[C

    iget-object v7, v0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v9, p2

    invoke-static {v4, v7, p2, v9}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lp2/a;->e()V

    iget p2, v0, Lp2/a;->h:I

    iget v7, v0, Lp2/a;->i:I

    iget-object v8, v0, Lp2/a;->g:[C

    move v9, p2

    :goto_1
    if-ge v9, v7, :cond_6

    aget-char v10, v8, v9

    const/16 v11, 0x30

    if-lt v10, v11, :cond_6

    const/16 v11, 0x39

    if-gt v10, v11, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    iput v9, v0, Lp2/a;->h:I

    if-le v9, p2, :cond_7

    iget-object v4, v0, Lp2/a;->g:[C

    iget-object v7, v0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v9, p2

    invoke-static {v4, v7, p2, v9}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "numeric reference with no numerals"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp2/a;->H()V

    return-object v2

    :cond_8
    iput v5, v0, Lp2/a;->l:I

    invoke-virtual {v0, v1}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "missing semicolon on [&#%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    if-eqz p1, :cond_a

    const/16 p1, 0x10

    goto :goto_3

    :cond_a
    const/16 p1, 0xa

    :goto_3
    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move p1, v5

    :goto_4
    if-eq p1, v5, :cond_d

    const p2, 0x10ffff

    if-le p1, p2, :cond_b

    goto :goto_5

    :cond_b
    const/16 p2, 0x80

    if-lt p1, p2, :cond_c

    const/16 p2, 0xa0

    if-ge p1, p2, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "character [%s] is not a valid unicode code point"

    invoke-virtual {p0, v0, p2}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x80

    sget-object p2, Lp2/T;->v:[I

    aget p1, p2, p1

    :cond_c
    aput p1, v6, v3

    goto :goto_6

    :cond_d
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "character [%s] outside of valid range"

    invoke-virtual {p0, p2, p1}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0xfffd

    aput p1, v6, v3

    :goto_6
    return-object v6

    :cond_e
    invoke-virtual {v0}, Lp2/a;->e()V

    iget p1, v0, Lp2/a;->h:I

    :goto_7
    iget v7, v0, Lp2/a;->h:I

    iget v8, v0, Lp2/a;->i:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_f

    iget-object v8, v0, Lp2/a;->g:[C

    aget-char v7, v8, v7

    invoke-static {v7}, Ln2/e;->e(C)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, v0, Lp2/a;->h:I

    add-int/2addr v7, v9

    iput v7, v0, Lp2/a;->h:I

    goto :goto_7

    :cond_f
    :goto_8
    iget v7, v0, Lp2/a;->h:I

    iget v8, v0, Lp2/a;->i:I

    if-lt v7, v8, :cond_10

    goto :goto_9

    :cond_10
    iget-object v8, v0, Lp2/a;->g:[C

    aget-char v7, v8, v7

    invoke-static {v7}, Ln2/e;->g(C)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, v0, Lp2/a;->h:I

    add-int/2addr v7, v9

    iput v7, v0, Lp2/a;->h:I

    goto :goto_8

    :cond_11
    :goto_9
    iget-object v7, v0, Lp2/a;->g:[C

    iget-object v8, v0, Lp2/a;->e:[Ljava/lang/String;

    iget v10, v0, Lp2/a;->h:I

    sub-int/2addr v10, p1

    invoke-static {v7, v8, p1, v10}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/16 v7, 0x3b

    invoke-virtual {v0, v7}, Lp2/a;->B(C)Z

    move-result v7

    sget-object v8, Lo2/l;->a:[C

    sget-object v8, Lo2/k;->j:Lo2/k;

    iget-object v10, v8, Lo2/k;->e:[Ljava/lang/String;

    invoke-static {v10, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_12

    iget-object v8, v8, Lo2/k;->f:[I

    aget v8, v8, v10

    goto :goto_a

    :cond_12
    move v8, v5

    :goto_a
    if-eq v8, v5, :cond_13

    goto :goto_d

    :cond_13
    sget-object v8, Lo2/k;->k:Lo2/k;

    iget-object v10, v8, Lo2/k;->e:[Ljava/lang/String;

    invoke-static {v10, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_14

    iget-object v8, v8, Lo2/k;->f:[I

    aget v8, v8, v10

    goto :goto_b

    :cond_14
    move v8, v5

    :goto_b
    if-eq v8, v5, :cond_15

    if-eqz v7, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Lp2/a;->H()V

    if-eqz v7, :cond_16

    const-string v7, "invalid named reference [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    if-eqz p2, :cond_17

    goto :goto_c

    :cond_17
    sget-object v7, Lo2/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    move-object v4, v8

    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    :goto_c
    return-object v2

    :cond_1a
    invoke-virtual {v0, v4}, Lp2/a;->z(Ljava/lang/String;)Z

    move-object p1, v4

    :goto_d
    if-eqz p2, :cond_1d

    invoke-virtual {v0}, Lp2/a;->D()Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-virtual {v0}, Lp2/a;->y()Z

    move-result p2

    if-eqz p2, :cond_1b

    move p2, v3

    goto :goto_e

    :cond_1b
    iget-object p2, v0, Lp2/a;->g:[C

    iget v4, v0, Lp2/a;->h:I

    aget-char p2, p2, v4

    invoke-static {p2}, Ln2/e;->g(C)Z

    move-result p2

    :goto_e
    if-nez p2, :cond_1c

    const/4 p2, 0x3

    new-array p2, p2, [C

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Lp2/a;->C([C)Z

    move-result p2

    if-eqz p2, :cond_1d

    :cond_1c
    invoke-virtual {v0}, Lp2/a;->H()V

    return-object v2

    :cond_1d
    iput v5, v0, Lp2/a;->l:I

    invoke-virtual {v0, v1}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1e

    const-string p2, "missing semicolon on [&%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lp2/T;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    sget-object p2, Lo2/l;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x2

    iget-object v1, p0, Lp2/T;->t:[I

    if-eqz p2, :cond_1f

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {p2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    aput p2, v1, v9

    move p2, v0

    goto :goto_10

    :cond_1f
    sget-object p2, Lo2/k;->k:Lo2/k;

    iget-object v2, p2, Lo2/k;->e:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_20

    iget-object p2, p2, Lo2/k;->f:[I

    aget p2, p2, v2

    goto :goto_f

    :cond_20
    move p2, v5

    :goto_f
    if-eq p2, v5, :cond_21

    aput p2, v1, v3

    move p2, v9

    goto :goto_10

    :cond_21
    move p2, v3

    :goto_10
    if-ne p2, v9, :cond_22

    aget p1, v1, v3

    aput p1, v6, v3

    return-object v6

    :cond_22
    if-ne p2, v0, :cond_23

    return-object v1

    :cond_23
    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lm2/g;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp2/T;->i:Lp2/N;

    invoke-virtual {p1}, Lp2/N;->n()Lp2/O;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp2/T;->j:Lp2/M;

    invoke-virtual {p1}, Lp2/O;->n()Lp2/O;

    :goto_0
    iput-object p1, p0, Lp2/T;->k:Lp2/O;

    return-void
.end method

.method public final e(C)V
    .locals 2

    iget-object v0, p0, Lp2/T;->l:Lp2/I;

    iget-object v1, v0, Lp2/I;->d:LW0/c;

    invoke-virtual {v1, p1}, LW0/c;->c(C)V

    iget p1, p0, Lp2/T;->r:I

    iput p1, v0, Lp2/Q;->b:I

    iget-object p1, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {p1}, Lp2/a;->F()I

    move-result p1

    iput p1, v0, Lp2/Q;->c:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lp2/T;->l:Lp2/I;

    iget-object v1, v0, Lp2/I;->d:LW0/c;

    invoke-virtual {v1, p1}, LW0/c;->d(Ljava/lang/String;)V

    iget p1, p0, Lp2/T;->r:I

    iput p1, v0, Lp2/Q;->b:I

    iget-object p1, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {p1}, Lp2/a;->F()I

    move-result p1

    iput p1, v0, Lp2/Q;->c:I

    return-void
.end method

.method public final g(Lp2/Q;)V
    .locals 4

    iget-boolean v0, p0, Lp2/T;->f:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Lp2/T;->e:Lp2/Q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/T;->f:Z

    iget v0, p0, Lp2/T;->q:I

    iput v0, p1, Lp2/Q;->b:I

    iget-object v0, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->F()I

    move-result v1

    iput v1, p1, Lp2/Q;->c:I

    invoke-virtual {v0}, Lp2/a;->F()I

    move-result v1

    iput v1, p0, Lp2/T;->r:I

    iget v1, p1, Lp2/Q;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    check-cast p1, Lp2/N;

    iget-object p1, p1, Lp2/O;->d:LW0/c;

    invoke-virtual {p1}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp2/T;->p:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    check-cast p1, Lp2/M;

    iget-object v1, p1, Lp2/O;->g:Lo2/b;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lp2/T;->b:Lp2/B;

    invoke-virtual {v1}, Lp2/B;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, LW0/c;

    const-string v3, "Attributes incorrectly present on end tag [/%s]"

    invoke-direct {v2, v0, v3, p1}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lm2/g;

    const-string v0, "Must be false"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lp2/T;->n:Lp2/J;

    invoke-virtual {p0, v0}, Lp2/T;->g(Lp2/Q;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lp2/T;->m:Lp2/K;

    invoke-virtual {p0, v0}, Lp2/T;->g(Lp2/Q;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lp2/T;->k:Lp2/O;

    iget-object v1, v0, Lp2/O;->h:LW0/c;

    invoke-virtual {v1}, LW0/c;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp2/O;->l()V

    :cond_0
    iget-object v0, p0, Lp2/T;->k:Lp2/O;

    invoke-virtual {p0, v0}, Lp2/T;->g(Lp2/Q;)V

    return-void
.end method

.method public final k(Lp2/l1;)V
    .locals 4

    iget-object v0, p0, Lp2/T;->b:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LW0/c;

    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Lp2/T;->a:Lp2/a;

    invoke-direct {v1, v3, v2, p1}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final l(Lp2/l1;)V
    .locals 4

    iget-object v0, p0, Lp2/T;->b:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LW0/c;

    iget-object v2, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {v2}, Lp2/a;->x()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, v3, p1}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m(Lp2/l1;)V
    .locals 1

    sget-object v0, Lp2/l1;->l:Lp2/j1;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lp2/T;->a:Lp2/a;

    invoke-virtual {v0}, Lp2/a;->F()I

    move-result v0

    iput v0, p0, Lp2/T;->q:I

    :cond_0
    iput-object p1, p0, Lp2/T;->d:Lp2/l1;

    return-void
.end method
