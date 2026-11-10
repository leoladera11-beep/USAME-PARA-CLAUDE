.class public final LB1/h;
.super LB1/i;
.source "SourceFile"


# instance fields
.field public final h:[B

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 2

    invoke-direct {p0}, LB1/i;-><init>()V

    add-int v0, p1, p3

    array-length v1, p2

    invoke-static {p1, v0, v1}, LB1/i;->b(III)I

    iput-object p2, p0, LB1/h;->h:[B

    iput p1, p0, LB1/h;->i:I

    iput p3, p0, LB1/h;->j:I

    return-void
.end method


# virtual methods
.method public final e([BI)V
    .locals 3

    iget-object v0, p0, LB1/h;->h:[B

    iget v1, p0, LB1/h;->i:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final f(LB1/i;)Z
    .locals 5

    instance-of v0, p1, LB1/j;

    if-nez v0, :cond_1

    instance-of v0, p1, LB1/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, LB1/i;->f(LB1/i;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, LB1/i;->size()I

    move-result v0

    iget v1, p0, LB1/h;->j:I

    if-gt v1, v0, :cond_5

    invoke-virtual {p1}, LB1/i;->size()I

    move-result v0

    if-gt v1, v0, :cond_4

    instance-of v0, p1, LB1/j;

    const/4 v2, 0x0

    iget-object v3, p0, LB1/h;->h:[B

    iget v4, p0, LB1/h;->i:I

    if-eqz v0, :cond_2

    check-cast p1, LB1/j;

    iget-object p1, p1, LB1/j;->h:[B

    invoke-static {v4, v2, v1, v3, p1}, LB1/i;->a(III[B[B)Z

    move-result p1

    return p1

    :cond_2
    instance-of v0, p1, LB1/h;

    if-eqz v0, :cond_3

    check-cast p1, LB1/h;

    iget-object v0, p1, LB1/h;->h:[B

    iget p1, p1, LB1/h;->i:I

    invoke-static {v4, p1, v1, v3, v0}, LB1/i;->a(III[B[B)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1, v2, v1}, LB1/i;->i(II)LB1/i;

    move-result-object p1

    add-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, LB1/h;->i(II)LB1/i;

    move-result-object v0

    invoke-virtual {p1, v0}, LB1/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ran off end of other: 0, "

    const-string v3, ", "

    invoke-static {v2, v3, v1}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LB1/i;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(I)B
    .locals 1

    iget v0, p0, LB1/h;->i:I

    add-int/2addr v0, p1

    iget-object p1, p0, LB1/h;->h:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final h(II)I
    .locals 2

    iget-object v0, p0, LB1/h;->h:[B

    iget v1, p0, LB1/h;->i:I

    invoke-static {p1, v1, p2, v0}, LB1/u;->b(III[B)I

    move-result p1

    return p1
.end method

.method public final i(II)LB1/i;
    .locals 2

    iget v0, p0, LB1/h;->j:I

    invoke-static {p1, p2, v0}, LB1/i;->b(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, LB1/i;->f:LB1/j;

    return-object p1

    :cond_0
    new-instance v0, LB1/h;

    iget v1, p0, LB1/h;->i:I

    add-int/2addr v1, p1

    iget-object p1, p0, LB1/h;->h:[B

    invoke-direct {v0, v1, p1, p2}, LB1/h;-><init>(I[BI)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LB1/h;->j:I

    return v0
.end method
