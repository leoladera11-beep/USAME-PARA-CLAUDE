.class public final LB1/C;
.super LB1/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final h:[Ljava/lang/Object;

.field public static final i:LB1/C;


# instance fields
.field public f:[Ljava/lang/Object;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, LB1/C;->h:[Ljava/lang/Object;

    new-instance v2, LB1/C;

    invoke-direct {v2, v0, v0, v1}, LB1/C;-><init>(IZ[Ljava/lang/Object;)V

    sput-object v2, LB1/C;->i:LB1/C;

    return-void
.end method

.method public constructor <init>(IZ[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-boolean p2, p0, LB1/b;->e:Z

    iput-object p3, p0, LB1/C;->f:[Ljava/lang/Object;

    iput p1, p0, LB1/C;->g:I

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 5

    .line 10
    invoke-virtual {p0}, LB1/b;->a()V

    if-ltz p1, :cond_1

    .line 11
    iget v0, p0, LB1/C;->g:I

    if-gt p1, v0, :cond_1

    .line 12
    iget-object v1, p0, LB1/C;->f:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 13
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 14
    :cond_0
    array-length v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v4, 0x3

    .line 15
    invoke-static {v0, v4, v1, v3, v2}, LB1/e;->d(IIIII)I

    move-result v0

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    iget-object v1, p0, LB1/C;->f:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v1, p0, LB1/C;->f:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v4, p0, LB1/C;->g:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    .line 20
    :goto_0
    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 21
    iget p1, p0, LB1/C;->g:I

    add-int/2addr p1, v3

    iput p1, p0, LB1/C;->g:I

    .line 22
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    const-string v0, "Index:"

    const-string v1, ", Size:"

    .line 25
    invoke-static {v0, v1, p1}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 26
    iget v0, p0, LB1/C;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, LB1/b;->a()V

    .line 2
    iget v0, p0, LB1/C;->g:I

    iget-object v1, p0, LB1/C;->f:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    array-length v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v4, 0x3

    .line 4
    invoke-static {v0, v4, v1, v3, v2}, LB1/e;->d(IIIII)I

    move-result v0

    .line 5
    iget-object v1, p0, LB1/C;->f:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    iget v1, p0, LB1/C;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LB1/C;->g:I

    aput-object p1, v0, v1

    .line 8
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3
.end method

.method public final b(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, LB1/C;->g:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index:"

    const-string v2, ", Size:"

    invoke-static {v1, v2, p1}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, LB1/C;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)LB1/t;
    .locals 3

    iget v0, p0, LB1/C;->g:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, LB1/C;->h:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    new-instance v0, LB1/C;

    iget v1, p0, LB1/C;->g:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, LB1/C;-><init>(IZ[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_2

    invoke-super {p0, p1}, LB1/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iget v3, p0, LB1/C;->g:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    instance-of v4, p1, LB1/C;

    if-eqz v4, :cond_6

    check-cast p1, LB1/C;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_5

    iget-object v4, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object v4, v4, v1

    iget-object v5, p1, LB1/C;->f:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    move p1, v2

    :goto_1
    if-ge p1, v3, :cond_8

    iget-object v4, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LB1/C;->b(I)V

    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, LB1/C;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, LB1/b;->a()V

    invoke-virtual {p0, p1}, LB1/C;->b(I)V

    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, LB1/C;->g:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, LB1/C;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LB1/C;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LB1/b;->a()V

    invoke-virtual {p0, p1}, LB1/C;->b(I)V

    iget-object v0, p0, LB1/C;->f:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LB1/C;->g:I

    return v0
.end method
