.class public final LJ/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ/B;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LJ/W;->b:[B

    iput-object v0, p0, LJ/B;->b:[B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LJ/B;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, LJ/B;->c:I

    .line 11
    iput p2, p0, LJ/B;->d:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 12
    new-array p1, p2, [B

    iput-object p1, p0, LJ/B;->b:[B

    const/4 p1, 0x0

    .line 13
    iput p1, p0, LJ/B;->e:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ/B;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LJ/B;->b:[B

    .line 5
    array-length p1, p1

    iput p1, p0, LJ/B;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ/B;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LJ/B;->b:[B

    .line 8
    iput p2, p0, LJ/B;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, LJ/B;->c:I

    if-ltz v0, :cond_1

    iget v1, p0, LJ/B;->e:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, LJ/B;->d:I

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

.method public b()I
    .locals 2

    iget v0, p0, LJ/B;->e:I

    iget v1, p0, LJ/B;->c:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, LJ/B;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, LJ/B;->d:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LJ/B;->d:I

    iget v0, p0, LJ/B;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJ/B;->c:I

    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, LJ/B;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget v0, p0, LJ/B;->c:I

    return v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, LJ/B;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, LJ/B;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f()Z
    .locals 3

    iget v0, p0, LJ/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/B;->b:[B

    iget v1, p0, LJ/B;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, LJ/B;->e:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1}, LJ/B;->o(I)V

    return v0

    :pswitch_0
    iget-object v0, p0, LJ/B;->b:[B

    iget v1, p0, LJ/B;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, LJ/B;->d:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, LJ/B;->n()V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(I)I
    .locals 7

    iget v0, p0, LJ/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, LJ/B;->d:I

    iget v1, p0, LJ/B;->e:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, LJ/B;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v4, 0xff

    and-int/2addr v0, v4

    iget v5, p0, LJ/B;->e:I

    shr-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0x8

    shr-int v5, v4, v5

    and-int/2addr v0, v5

    :goto_0
    if-ge v1, p1, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, p1}, LJ/B;->o(I)V

    return v0

    :pswitch_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, LJ/B;->d:I

    add-int/2addr v1, p1

    iput v1, p0, LJ/B;->d:I

    move v1, v0

    :goto_1
    iget v2, p0, LJ/B;->d:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, LJ/B;->d:I

    iget-object v3, p0, LJ/B;->b:[B

    iget v4, p0, LJ/B;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, LJ/B;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, LJ/B;->b:[B

    iget v5, p0, LJ/B;->c:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_3

    iput v0, p0, LJ/B;->d:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LJ/B;->c:I

    :cond_3
    invoke-virtual {p0}, LJ/B;->a()V

    move v0, p1

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h([BI)V
    .locals 9

    shr-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, LJ/B;->b:[B

    iget v6, p0, LJ/B;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, LJ/B;->c:I

    aget-byte v6, v5, v6

    iget v8, p0, LJ/B;->d:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    return-void

    :cond_1
    aget-byte v2, p1, v0

    shr-int v5, v3, p2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v5, p0, LJ/B;->d:I

    add-int v6, v5, p2

    if-le v6, v4, :cond_2

    iget-object v6, p0, LJ/B;->b:[B

    iget v7, p0, LJ/B;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, LJ/B;->c:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    sub-int/2addr v5, v4

    iput v5, p0, LJ/B;->d:I

    :cond_2
    iget v2, p0, LJ/B;->d:I

    add-int/2addr v2, p2

    iput v2, p0, LJ/B;->d:I

    iget-object v5, p0, LJ/B;->b:[B

    iget v6, p0, LJ/B;->c:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    aget-byte v5, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v3, p2

    int-to-byte p2, p2

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v2, v4, :cond_3

    iput v1, p0, LJ/B;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LJ/B;->c:I

    :cond_3
    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method

.method public i(I)J
    .locals 6

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, LJ/B;->g(I)I

    move-result p1

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    int-to-long v2, p1

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, LJ/B;->g(I)I

    move-result p1

    invoke-virtual {p0, v2}, LJ/B;->g(I)I

    move-result v3

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    int-to-long v4, p1

    and-long/2addr v4, v0

    shl-long/2addr v4, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public j([BI)V
    .locals 3

    iget v0, p0, LJ/B;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LJ/B;->b:[B

    iget v2, p0, LJ/B;->c:I

    invoke-static {v0, v2, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LJ/B;->c:I

    add-int/2addr p1, p2

    iput p1, p0, LJ/B;->c:I

    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method

.method public k(LJ/D;)V
    .locals 2

    iget-object v0, p1, LJ/D;->a:[B

    iget v1, p1, LJ/D;->c:I

    invoke-virtual {p0, v0, v1}, LJ/B;->l([BI)V

    iget p1, p1, LJ/D;->b:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, LJ/B;->m(I)V

    return-void
.end method

.method public l([BI)V
    .locals 0

    iput-object p1, p0, LJ/B;->b:[B

    const/4 p1, 0x0

    iput p1, p0, LJ/B;->c:I

    iput p1, p0, LJ/B;->d:I

    iput p2, p0, LJ/B;->e:I

    return-void
.end method

.method public m(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, LJ/B;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, LJ/B;->d:I

    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method

.method public n()V
    .locals 2

    iget v0, p0, LJ/B;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJ/B;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LJ/B;->d:I

    iget v0, p0, LJ/B;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJ/B;->c:I

    :cond_0
    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method

.method public o(I)V
    .locals 3

    iget v0, p0, LJ/B;->a:I

    packed-switch v0, :pswitch_data_0

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, LJ/B;->d:I

    add-int/2addr v1, v0

    iput v1, p0, LJ/B;->d:I

    iget v2, p0, LJ/B;->e:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, LJ/B;->e:I

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-le p1, v0, :cond_0

    add-int/2addr v1, v2

    iput v1, p0, LJ/B;->d:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LJ/B;->e:I

    :cond_0
    iget p1, p0, LJ/B;->d:I

    if-ltz p1, :cond_1

    iget v0, p0, LJ/B;->c:I

    if-lt p1, v0, :cond_2

    if-ne p1, v0, :cond_1

    iget p1, p0, LJ/B;->e:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    return-void

    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, LJ/B;->c:I

    add-int/2addr v1, v0

    iput v1, p0, LJ/B;->c:I

    iget v2, p0, LJ/B;->d:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, LJ/B;->d:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LJ/B;->c:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, LJ/B;->d:I

    :cond_3
    invoke-virtual {p0}, LJ/B;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public p(I)V
    .locals 1

    iget v0, p0, LJ/B;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget v0, p0, LJ/B;->c:I

    add-int/2addr v0, p1

    iput v0, p0, LJ/B;->c:I

    invoke-virtual {p0}, LJ/B;->a()V

    return-void
.end method
