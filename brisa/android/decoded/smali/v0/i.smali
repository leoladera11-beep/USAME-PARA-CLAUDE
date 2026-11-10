.class public final Lv0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/G;

.field public final b:Lv0/v;

.field public final c:LJ/D;

.field public d:Lv0/w;

.field public e:Lv0/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:LJ/D;

.field public final k:LJ/D;

.field public l:LG/x;

.field public m:LG/x;

.field public n:Z


# direct methods
.method public constructor <init>(Lb0/G;Lv0/w;Lv0/e;LG/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/i;->a:Lb0/G;

    iput-object p2, p0, Lv0/i;->d:Lv0/w;

    iput-object p3, p0, Lv0/i;->e:Lv0/e;

    iput-object p4, p0, Lv0/i;->m:LG/x;

    new-instance v0, Lv0/v;

    invoke-direct {v0}, Lv0/v;-><init>()V

    iput-object v0, p0, Lv0/i;->b:Lv0/v;

    new-instance v0, LJ/D;

    invoke-direct {v0}, LJ/D;-><init>()V

    iput-object v0, p0, Lv0/i;->c:LJ/D;

    new-instance v0, LJ/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, Lv0/i;->j:LJ/D;

    new-instance v0, LJ/D;

    invoke-direct {v0}, LJ/D;-><init>()V

    iput-object v0, p0, Lv0/i;->k:LJ/D;

    iget-object v0, p4, LG/x;->p:Ljava/lang/String;

    invoke-static {v0}, Lb0/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p4, p0, Lv0/i;->l:LG/x;

    :cond_0
    iput-object p2, p0, Lv0/i;->d:Lv0/w;

    iput-object p3, p0, Lv0/i;->e:Lv0/e;

    iget-object p2, p0, Lv0/i;->l:LG/x;

    if-nez p2, :cond_1

    iget-object p2, p0, Lv0/i;->m:LG/x;

    invoke-interface {p1, p2}, Lb0/G;->b(LG/x;)V

    :cond_1
    invoke-virtual {p0}, Lv0/i;->e()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lv0/i;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv0/i;->d:Lv0/w;

    iget-object v0, v0, Lv0/w;->g:[I

    iget v1, p0, Lv0/i;->f:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv0/i;->b:Lv0/v;

    iget-object v0, v0, Lv0/v;->j:[Z

    iget v1, p0, Lv0/i;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lv0/i;->b()Lv0/u;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final b()Lv0/u;
    .locals 4

    iget-boolean v0, p0, Lv0/i;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv0/i;->b:Lv0/v;

    iget-object v2, v0, Lv0/v;->a:Lv0/e;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget v2, v2, Lv0/e;->a:I

    iget-object v0, v0, Lv0/v;->m:Lv0/u;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv0/i;->d:Lv0/w;

    iget-object v0, v0, Lv0/w;->a:Lv0/t;

    iget-object v0, v0, Lv0/t;->n:[Lv0/u;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lv0/u;->a:Z

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final c()Z
    .locals 5

    iget v0, p0, Lv0/i;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lv0/i;->f:I

    iget-boolean v0, p0, Lv0/i;->n:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lv0/i;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lv0/i;->g:I

    iget-object v3, p0, Lv0/i;->b:Lv0/v;

    iget-object v3, v3, Lv0/v;->g:[I

    iget v4, p0, Lv0/i;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lv0/i;->h:I

    iput v2, p0, Lv0/i;->g:I

    return v2

    :cond_1
    return v1
.end method

.method public final d(II)I
    .locals 11

    invoke-virtual {p0}, Lv0/i;->b()Lv0/u;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lv0/u;->d:I

    iget-object v3, p0, Lv0/i;->b:Lv0/v;

    if-eqz v2, :cond_1

    iget-object v0, v3, Lv0/v;->n:LJ/D;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lv0/u;->e:[B

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    array-length v2, v0

    iget-object v4, p0, Lv0/i;->k:LJ/D;

    invoke-virtual {v4, v0, v2}, LJ/D;->L([BI)V

    array-length v2, v0

    move-object v0, v4

    :goto_0
    iget v4, p0, Lv0/i;->f:I

    iget-boolean v5, v3, Lv0/v;->k:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v3, Lv0/v;->l:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    iget-object v7, p0, Lv0/i;->j:LJ/D;

    iget-object v8, v7, LJ/D;->a:[B

    if-eqz v5, :cond_5

    const/16 v9, 0x80

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v8, v1

    invoke-virtual {v7, v1}, LJ/D;->N(I)V

    iget-object v8, p0, Lv0/i;->a:Lb0/G;

    invoke-interface {v8, v7, v6, v6}, Lb0/G;->c(LJ/D;II)V

    invoke-interface {v8, v0, v2, v6}, Lb0/G;->c(LJ/D;II)V

    if-nez v5, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v7, 0x2

    iget-object v9, p0, Lv0/i;->c:LJ/D;

    const/16 v10, 0x8

    if-nez v4, :cond_7

    invoke-virtual {v9, v10}, LJ/D;->K(I)V

    iget-object v3, v9, LJ/D;->a:[B

    aput-byte v1, v3, v1

    aput-byte v6, v3, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v3, p2

    invoke-interface {v8, v9, v10, v6}, Lb0/G;->c(LJ/D;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_7
    iget-object p1, v3, Lv0/v;->n:LJ/D;

    invoke-virtual {p1}, LJ/D;->H()I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, LJ/D;->O(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v7

    if-eqz p2, :cond_8

    invoke-virtual {v9, v3}, LJ/D;->K(I)V

    iget-object v0, v9, LJ/D;->a:[B

    invoke-virtual {p1, v1, v0, v3}, LJ/D;->k(I[BI)V

    aget-byte p1, v0, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v10

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    goto :goto_5

    :cond_8
    move-object v9, p1

    :goto_5
    invoke-interface {v8, v9, v3, v6}, Lb0/G;->c(LJ/D;II)V

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    return v2
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lv0/i;->b:Lv0/v;

    const/4 v1, 0x0

    iput v1, v0, Lv0/v;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lv0/v;->p:J

    iput-boolean v1, v0, Lv0/v;->q:Z

    iput-boolean v1, v0, Lv0/v;->k:Z

    iput-boolean v1, v0, Lv0/v;->o:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lv0/v;->m:Lv0/u;

    iput v1, p0, Lv0/i;->f:I

    iput v1, p0, Lv0/i;->h:I

    iput v1, p0, Lv0/i;->g:I

    iput v1, p0, Lv0/i;->i:I

    iput-boolean v1, p0, Lv0/i;->n:Z

    return-void
.end method
