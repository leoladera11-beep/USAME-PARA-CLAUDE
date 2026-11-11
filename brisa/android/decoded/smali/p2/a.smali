.class public final Lp2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final o:LW0/c;

.field public static final p:LW0/c;


# instance fields
.field public e:[Ljava/lang/String;

.field public f:Ljava/io/StringReader;

.field public g:[C

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Ln2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW0/c;

    new-instance v1, LD2/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LD2/c;-><init>(I)V

    invoke-direct {v0, v1}, LW0/c;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lp2/a;->o:LW0/c;

    new-instance v0, LW0/c;

    new-instance v1, LD2/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LD2/c;-><init>(I)V

    invoke-direct {v0, v1}, LW0/c;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lp2/a;->p:LW0/c;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp2/a;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lp2/a;->l:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lp2/a;->n:Ln2/a;

    .line 5
    iput-object p1, p0, Lp2/a;->f:Ljava/io/StringReader;

    .line 6
    sget-object p1, Lp2/a;->p:LW0/c;

    invoke-virtual {p1}, LW0/c;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lp2/a;->g:[C

    .line 7
    sget-object p1, Lp2/a;->o:LW0/c;

    invoke-virtual {p1}, LW0/c;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lp2/a;->e:[Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lp2/a;->e()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lp2/a;-><init>(Ljava/io/StringReader;)V

    return-void
.end method

.method public static q([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    add-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v3, 0x1ff

    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_5

    move v4, p2

    move v3, p3

    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_4

    add-int/lit8 v3, v4, 0x1

    aget-char v4, p0, v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v4, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    move v3, v5

    move v1, v6

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, p1, v0

    return-object v1
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lp2/a;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lp2/a;->h:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lp2/a;->h:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final B(C)Z
    .locals 2

    invoke-virtual {p0}, Lp2/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp2/a;->g:[C

    iget v1, p0, Lp2/a;->h:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs C([C)Z
    .locals 5

    invoke-virtual {p0}, Lp2/a;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lp2/a;->e()V

    iget-object v0, p0, Lp2/a;->g:[C

    iget v2, p0, Lp2/a;->h:I

    aget-char v0, v0, v2

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final D()Z
    .locals 2

    invoke-virtual {p0}, Lp2/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lp2/a;->g:[C

    iget v1, p0, Lp2/a;->h:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ln2/e;->e(C)Z

    move-result v0

    return v0
.end method

.method public final E(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lp2/a;->e()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lp2/a;->i:I

    iget v2, p0, Lp2/a;->h:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    return v3

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v4, p0, Lp2/a;->g:[C

    add-int v5, v2, v0

    aget-char v4, v4, v5

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v1, v4, :cond_2

    return v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final F()I
    .locals 3

    iget v0, p0, Lp2/a;->k:I

    iget v1, p0, Lp2/a;->h:I

    iget v2, p0, Lp2/a;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final G()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp2/a;->F()I

    move-result v1

    iget-object v2, p0, Lp2/a;->n:Ln2/a;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-gez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v4

    goto :goto_1

    :cond_0
    iget-object v6, v2, Ln2/a;->a:[I

    iget v2, v2, Ln2/a;->b:I

    invoke-static {v6, v3, v2, v1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp2/a;->F()I

    move-result v1

    iget-object v2, p0, Lp2/a;->n:Ln2/a;

    if-eqz v2, :cond_6

    if-gez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_3
    iget-object v6, v2, Ln2/a;->a:[I

    iget v7, v2, Ln2/a;->b:I

    invoke-static {v6, v3, v7, v1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    if-ltz v3, :cond_4

    goto :goto_2

    :cond_4
    neg-int v3, v3

    add-int/lit8 v3, v3, -0x2

    :goto_2
    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v2, Ln2/a;->a:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    :cond_6
    :goto_3
    add-int/lit8 v4, v1, 0x1

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H()V
    .locals 3

    iget v0, p0, Lp2/a;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lp2/a;->h:I

    iput v1, p0, Lp2/a;->l:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final I()V
    .locals 3

    iget v0, p0, Lp2/a;->h:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lp2/a;->h:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lp2/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp2/a;->h:I

    return-void
.end method

.method public final close()V
    .locals 6

    sget-object v0, Lp2/a;->o:LW0/c;

    sget-object v1, Lp2/a;->p:LW0/c;

    iget-object v2, p0, Lp2/a;->f:Ljava/io/StringReader;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lp2/a;->f:Ljava/io/StringReader;

    iget-object v2, p0, Lp2/a;->g:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v2, p0, Lp2/a;->g:[C

    invoke-virtual {v1, v2}, LW0/c;->x(Ljava/lang/Object;)V

    iput-object v4, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, LW0/c;->x(Ljava/lang/Object;)V

    :goto_0
    iput-object v4, p0, Lp2/a;->e:[Ljava/lang/String;

    iput-object v4, p0, Lp2/a;->n:Ln2/a;

    return-void

    :catchall_0
    move-exception v2

    iput-object v4, p0, Lp2/a;->f:Ljava/io/StringReader;

    iget-object v5, p0, Lp2/a;->g:[C

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v3, p0, Lp2/a;->g:[C

    invoke-virtual {v1, v3}, LW0/c;->x(Ljava/lang/Object;)V

    iput-object v4, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, LW0/c;->x(Ljava/lang/Object;)V

    iput-object v4, p0, Lp2/a;->e:[Ljava/lang/String;

    iput-object v4, p0, Lp2/a;->n:Ln2/a;

    throw v2

    :catch_0
    iput-object v4, p0, Lp2/a;->f:Ljava/io/StringReader;

    iget-object v2, p0, Lp2/a;->g:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v2, p0, Lp2/a;->g:[C

    invoke-virtual {v1, v2}, LW0/c;->x(Ljava/lang/Object;)V

    iput-object v4, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, LW0/c;->x(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    iget-boolean v0, p0, Lp2/a;->m:Z

    if-nez v0, :cond_a

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->j:I

    if-lt v0, v1, :cond_a

    iget v1, p0, Lp2/a;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v1, p0, Lp2/a;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lp2/a;->k:I

    iget v1, p0, Lp2/a;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lp2/a;->i:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Lp2/a;->g:[C

    invoke-static {v4, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput v3, p0, Lp2/a;->h:I

    :goto_0
    iget v0, p0, Lp2/a;->i:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lp2/a;->f:Ljava/io/StringReader;

    iget-object v3, p0, Lp2/a;->g:[C

    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/a;->m:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p0, Lp2/a;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lp2/a;->i:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_4
    :goto_2
    iget v0, p0, Lp2/a;->i:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lp2/a;->j:I

    iget-object v0, p0, Lp2/a;->n:Ln2/a;

    if-eqz v0, :cond_a

    iget v0, p0, Lp2/a;->h:I

    :goto_3
    iget v1, p0, Lp2/a;->i:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lp2/a;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    iget v1, p0, Lp2/a;->k:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget-object v2, p0, Lp2/a;->n:Ln2/a;

    iget v3, v2, Ln2/a;->b:I

    if-eqz v3, :cond_5

    iget-object v4, v2, Ln2/a;->a:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-le v1, v4, :cond_9

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-object v4, v2, Ln2/a;->a:[I

    array-length v5, v4

    if-lt v5, v3, :cond_6

    goto :goto_6

    :cond_6
    array-length v5, v4

    if-nez v5, :cond_7

    const/16 v5, 0x10

    goto :goto_4

    :cond_7
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    :goto_4
    if-ge v5, v3, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    :goto_5
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v2, Ln2/a;->a:[I

    :goto_6
    iget-object v3, v2, Ln2/a;->a:[I

    iget v4, v2, Ln2/a;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Ln2/a;->b:I

    aput v1, v3, v4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_7
    return-void
.end method

.method public final r()C
    .locals 2

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->i:I

    if-lt v0, v1, :cond_0

    const v1, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lp2/a;->g:[C

    aget-char v1, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp2/a;->h:I

    return v1
.end method

.method public final s()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->i:I

    iget-object v2, p0, Lp2/a;->g:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    invoke-static {v4}, Ln2/e;->e(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lp2/a;->h:I

    if-le v3, v0, :cond_1

    iget-object v1, p0, Lp2/a;->g:[C

    iget-object v2, p0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final t(II)Ljava/lang/String;
    .locals 2

    iput p2, p0, Lp2/a;->h:I

    if-le p2, p1, :cond_0

    iget-object v0, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p1, p2}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lp2/a;->i:I

    iget v1, p0, Lp2/a;->h:I

    sub-int v2, v0, v1

    if-gez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lp2/a;->g:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public final u(C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    :goto_0
    iget v1, p0, Lp2/a;->i:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lp2/a;->g:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget p1, p0, Lp2/a;->h:I

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    iget v2, p0, Lp2/a;->h:I

    invoke-static {p1, v1, v2, v0}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lp2/a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lp2/a;->h:I

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lp2/a;->w()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final v(CCC)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->i:I

    iget-object v2, p0, Lp2/a;->g:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    if-eq v4, p1, :cond_1

    if-eq v4, p2, :cond_1

    if-ne v4, p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v3}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lp2/a;->e()V

    iget-object v0, p0, Lp2/a;->g:[C

    iget-object v1, p0, Lp2/a;->e:[Ljava/lang/String;

    iget v2, p0, Lp2/a;->h:I

    iget v3, p0, Lp2/a;->i:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lp2/a;->i:I

    iput v1, p0, Lp2/a;->h:I

    return-object v0
.end method

.method public final x()C
    .locals 2

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->i:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v1, p0, Lp2/a;->g:[C

    aget-char v0, v1, v0

    return v0
.end method

.method public final y()Z
    .locals 2

    invoke-virtual {p0}, Lp2/a;->e()V

    iget v0, p0, Lp2/a;->h:I

    iget v1, p0, Lp2/a;->i:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lp2/a;->e()V

    invoke-virtual {p0}, Lp2/a;->e()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lp2/a;->i:I

    iget v2, p0, Lp2/a;->h:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lp2/a;->g:[C

    iget v5, p0, Lp2/a;->h:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lp2/a;->h:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lp2/a;->h:I

    const/4 p1, 0x1

    return p1
.end method
