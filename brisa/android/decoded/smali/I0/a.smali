.class public final LI0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LI0/b;

.field public final b:LJ/D;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI0/b;

    const-string v1, "audio/ac3"

    invoke-direct {v0, v1}, LI0/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LI0/a;->a:LI0/b;

    new-instance v0, LJ/D;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, LI0/a;->b:LJ/D;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 3

    new-instance v0, LI0/J;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LI0/J;-><init>(II)V

    iget-object v1, p0, LI0/a;->a:LI0/b;

    invoke-virtual {v1, p1, v0}, LI0/b;->j(Lb0/p;LI0/J;)V

    invoke-interface {p1}, Lb0/p;->e()V

    new-instance v0, Lb0/s;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lb0/s;-><init>(J)V

    invoke-interface {p1, v0}, Lb0/p;->c(Lb0/z;)V

    return-void
.end method

.method public final c(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LI0/a;->c:Z

    iget-object p1, p0, LI0/a;->a:LI0/b;

    invoke-virtual {p1}, LI0/b;->a()V

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 13

    new-instance v0, LJ/D;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, LJ/D;->a:[B

    invoke-interface {p1, v2, v4, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->D()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_6

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1, v3}, Lb0/o;->z(I)V

    move v4, v2

    move v5, v3

    :goto_1
    iget-object v7, v0, LJ/D;->a:[B

    const/4 v8, 0x6

    invoke-interface {p1, v2, v7, v8}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0, v2}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v7

    const/16 v9, 0xb77

    if-eq v7, v9, :cond_1

    invoke-interface {p1}, Lb0/o;->o()V

    add-int/lit8 v5, v5, 0x1

    sub-int v4, v5, v3

    const/16 v7, 0x2000

    if-lt v4, v7, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v5}, Lb0/o;->z(I)V

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    add-int/2addr v4, v7

    const/4 v9, 0x4

    if-lt v4, v9, :cond_2

    return v7

    :cond_2
    iget-object v10, v0, LJ/D;->a:[B

    array-length v11, v10

    const/4 v12, -0x1

    if-ge v11, v8, :cond_3

    move v9, v12

    goto :goto_2

    :cond_3
    const/4 v11, 0x5

    aget-byte v11, v10, v11

    and-int/lit16 v11, v11, 0xf8

    shr-int/2addr v11, v6

    if-le v11, v1, :cond_4

    const/4 v8, 0x2

    aget-byte v9, v10, v8

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    goto :goto_2

    :cond_4
    aget-byte v7, v10, v9

    and-int/lit16 v9, v7, 0xc0

    shr-int/lit8 v8, v9, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-static {v8, v7}, Lb0/a;->e(II)I

    move-result v9

    :goto_2
    if-ne v9, v12, :cond_5

    return v2

    :cond_5
    add-int/lit8 v9, v9, -0x6

    invoke-interface {p1, v9}, Lb0/o;->z(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v6}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->z()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, Lb0/o;->z(I)V

    goto/16 :goto_0
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 5

    iget-object p2, p0, LI0/a;->b:LJ/D;

    iget-object v0, p2, LJ/D;->a:[B

    const/16 v1, 0xae2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, LG/o;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, v2}, LJ/D;->N(I)V

    invoke-virtual {p2, p1}, LJ/D;->M(I)V

    iget-boolean p1, p0, LI0/a;->c:Z

    iget-object v0, p0, LI0/a;->a:LI0/b;

    if-nez p1, :cond_1

    const-wide/16 v3, 0x0

    iput-wide v3, v0, LI0/b;->o:J

    const/4 p1, 0x1

    iput-boolean p1, p0, LI0/a;->c:Z

    :cond_1
    invoke-virtual {v0, p2}, LI0/b;->f(LJ/D;)V

    return v2
.end method
