.class public final Ld0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld0/d;

.field public final b:Lb0/G;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:[J

.field public o:[I


# direct methods
.method public constructor <init>(ILd0/d;Lb0/G;Z)V
    .locals 10

    iget v0, p2, Ld0/d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld0/e;->a:Ld0/d;

    iput-boolean p4, p0, Ld0/e;->f:Z

    invoke-virtual {p2}, Ld0/d;->a()I

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p4, v2, :cond_1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, LF1/i;->g(Z)V

    if-ne p4, v1, :cond_2

    const/high16 v2, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v2, 0x62770000

    :goto_1
    div-int/lit8 v3, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v3, v3, 0x30

    or-int/2addr p1, v3

    or-int/2addr v2, p1

    iput v2, p0, Ld0/e;->c:I

    int-to-long v3, v0

    iget v2, p2, Ld0/d;->b:I

    int-to-long v5, v2

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    iget p2, p2, Ld0/d;->c:I

    int-to-long v7, p2

    sget-object p2, LJ/W;->a:Ljava/lang/String;

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    iput-wide v2, p0, Ld0/e;->e:J

    iput-object p3, p0, Ld0/e;->b:Lb0/G;

    if-ne p4, v1, :cond_3

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Ld0/e;->d:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ld0/e;->m:J

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Ld0/e;->n:[J

    new-array p1, p1, [I

    iput-object p1, p0, Ld0/e;->o:[I

    iput v0, p0, Ld0/e;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)Lb0/A;
    .locals 7

    new-instance v0, Lb0/A;

    iget-object v1, p0, Ld0/e;->o:[I

    aget v1, v1, p1

    int-to-long v1, v1

    iget-wide v3, p0, Ld0/e;->e:J

    const/4 v5, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Ld0/e;->g:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long/2addr v3, v1

    iget-object v1, p0, Ld0/e;->n:[J

    aget-wide v5, v1, p1

    invoke-direct {v0, v3, v4, v5, v6}, Lb0/A;-><init>(JJ)V

    return-object v0
.end method

.method public final b(J)Lb0/y;
    .locals 5

    iget v0, p0, Ld0/e;->l:I

    if-nez v0, :cond_0

    new-instance p1, Lb0/y;

    new-instance p2, Lb0/A;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ld0/e;->m:J

    invoke-direct {p2, v0, v1, v2, v3}, Lb0/A;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p1

    :cond_0
    iget-wide v0, p0, Ld0/e;->e:J

    const/4 v2, 0x1

    int-to-long v3, v2

    mul-long/2addr v0, v3

    iget v3, p0, Ld0/e;->g:I

    int-to-long v3, v3

    div-long/2addr v0, v3

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Ld0/e;->o:[I

    invoke-static {p2, p1, v2, v2}, LJ/W;->c([IIZZ)I

    move-result p2

    iget-object v0, p0, Ld0/e;->o:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_1

    new-instance p1, Lb0/y;

    invoke-virtual {p0, p2}, Ld0/e;->a(I)Lb0/A;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Ld0/e;->a(I)Lb0/A;

    move-result-object p1

    add-int/2addr p2, v2

    iget-object v0, p0, Ld0/e;->n:[J

    array-length v0, v0

    if-ge p2, v0, :cond_2

    new-instance v0, Lb0/y;

    invoke-virtual {p0, p2}, Ld0/e;->a(I)Lb0/A;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v0

    :cond_2
    new-instance p2, Lb0/y;

    invoke-direct {p2, p1, p1}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p2
.end method
