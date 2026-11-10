.class public final Lv0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv0/t;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:[I

.field public final i:J

.field public final j:Z


# direct methods
.method public constructor <init>(Lv0/t;[J[II[J[I[IZJI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, LF1/i;->g(Z)V

    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, LF1/i;->g(Z)V

    iput-object p1, p0, Lv0/w;->a:Lv0/t;

    iput-object p2, p0, Lv0/w;->c:[J

    iput-object p3, p0, Lv0/w;->d:[I

    iput p4, p0, Lv0/w;->e:I

    iput-object p5, p0, Lv0/w;->f:[J

    iput-object p6, p0, Lv0/w;->g:[I

    iput-object p7, p0, Lv0/w;->h:[I

    iput-boolean p8, p0, Lv0/w;->j:Z

    iput-wide p9, p0, Lv0/w;->i:J

    iput p11, p0, Lv0/w;->b:I

    array-length p1, p6

    if-lez p1, :cond_3

    array-length p1, p6

    sub-int/2addr p1, v3

    aget p2, p6, p1

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    aput p2, p6, p1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 9

    iget-object v0, p0, Lv0/w;->f:[J

    array-length v1, v0

    const/4 v2, -0x1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lv0/w;->j:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2, v3}, LJ/W;->d([JJZ)I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lv0/w;->h:[I

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    move v5, v2

    :goto_0
    if-gt v3, v4, :cond_2

    sub-int v6, v4, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    aget v7, v1, v6

    aget-wide v7, v0, v7

    cmp-long v7, v7, p1

    if-gtz v7, :cond_1

    add-int/lit8 v3, v6, 0x1

    move v5, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, -0x1

    move v4, v6

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    return v2

    :cond_3
    aget v2, v1, v5

    aget-wide v2, v0, v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_4

    :goto_1
    if-lez v5, :cond_4

    add-int/lit8 p1, v5, -0x1

    aget p1, v1, p1

    aget-wide p1, v0, p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    aget p1, v1, v5

    return p1

    :cond_5
    return v2
.end method

.method public final b(J)I
    .locals 10

    iget-object v0, p0, Lv0/w;->f:[J

    array-length v1, v0

    const/4 v2, -0x1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lv0/w;->j:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2, v3}, LJ/W;->a([JJZ)I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lv0/w;->h:[I

    array-length v4, v1

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    move v6, v2

    :goto_0
    if-gt v5, v4, :cond_2

    sub-int v7, v4, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    aget v8, v1, v7

    aget-wide v8, v0, v8

    cmp-long v8, v8, p1

    if-ltz v8, :cond_1

    add-int/lit8 v4, v7, -0x1

    move v6, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    if-ne v6, v2, :cond_3

    return v2

    :cond_3
    aget v2, v1, v6

    aget-wide v4, v0, v2

    cmp-long p1, v4, p1

    if-nez p1, :cond_4

    :goto_1
    array-length p1, v1

    sub-int/2addr p1, v3

    if-ge v6, p1, :cond_4

    add-int/lit8 p1, v6, 0x1

    aget p2, v1, p1

    aget-wide v7, v0, p2

    cmp-long p2, v7, v4

    if-nez p2, :cond_4

    move v6, p1

    goto :goto_1

    :cond_4
    aget p1, v1, v6

    return p1

    :cond_5
    return v2
.end method
