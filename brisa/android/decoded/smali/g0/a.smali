.class public final Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/h;


# instance fields
.field public final e:Lb0/t;

.field public final f:I

.field public final g:Lb0/r;


# direct methods
.method public constructor <init>(Lb0/t;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/a;->e:Lb0/t;

    iput p2, p0, Lg0/a;->f:I

    new-instance p1, Lb0/r;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/a;->g:Lb0/r;

    return-void
.end method


# virtual methods
.method public final a(Lb0/o;)J
    .locals 13

    :goto_0
    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v0

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    iget-object v1, p0, Lg0/a;->g:Lb0/r;

    iget-object v2, p0, Lg0/a;->e:Lb0/t;

    if-gez v0, :cond_3

    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v6

    new-instance v0, LJ/D;

    const/16 v3, 0x11

    invoke-direct {v0, v3}, LJ/D;-><init>(I)V

    iget-object v3, v0, LJ/D;->a:[B

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {p1, v8, v3, v9}, Lb0/o;->l(I[BI)V

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v8, v3}, LJ/D;->g(ILjava/nio/ByteOrder;)C

    move-result v3

    iget v10, p0, Lg0/a;->f:I

    if-eq v3, v10, :cond_0

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1}, Lb0/o;->getPosition()J

    move-result-wide v9

    sub-long/2addr v6, v9

    long-to-int v0, v6

    invoke-interface {p1, v0}, Lb0/o;->z(I)V

    goto :goto_3

    :cond_0
    iget-object v3, v0, LJ/D;->a:[B

    :goto_1
    const/16 v11, 0xf

    if-ge v8, v11, :cond_2

    add-int v11, v9, v8

    rsub-int/lit8 v12, v8, 0xf

    invoke-interface {p1, v11, v3, v12}, Lb0/o;->A(I[BI)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v8, v11

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, LJ/D;->M(I)V

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1}, Lb0/o;->getPosition()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-interface {p1, v3}, Lb0/o;->z(I)V

    invoke-static {v0, v2, v10, v1}, Lb0/a;->a(LJ/D;Lb0/t;ILb0/r;)Z

    move-result v8

    :goto_3
    if-nez v8, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb0/o;->z(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v6

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v8

    sub-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lb0/o;->z(I)V

    iget-wide v0, v2, Lb0/t;->j:J

    return-wide v0

    :cond_4
    iget-wide v0, v1, Lb0/r;->a:J

    return-wide v0
.end method

.method public final r(Lb0/o;J)Lb0/g;
    .locals 18

    invoke-interface/range {p1 .. p1}, Lb0/o;->getPosition()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p1}, Lg0/a;->a(Lb0/o;)J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Lb0/o;->x()J

    move-result-wide v8

    move-object/from16 v11, p0

    iget-object v0, v11, Lg0/a;->e:Lb0/t;

    iget v0, v0, Lb0/t;->c:I

    const/4 v5, 0x6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Lb0/o;->z(I)V

    invoke-virtual/range {p0 .. p1}, Lg0/a;->a(Lb0/o;)J

    move-result-wide v13

    invoke-interface {v5}, Lb0/o;->x()J

    move-result-wide v15

    cmp-long v0, v1, p2

    if-gtz v0, :cond_0

    cmp-long v0, v13, p2

    if-lez v0, :cond_0

    new-instance v5, Lb0/g;

    const/4 v10, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v5 .. v10}, Lb0/g;-><init>(JJI)V

    return-object v5

    :cond_0
    cmp-long v0, v13, p2

    if-gtz v0, :cond_1

    new-instance v12, Lb0/g;

    const/16 v17, -0x2

    invoke-direct/range {v12 .. v17}, Lb0/g;-><init>(JJI)V

    return-object v12

    :cond_1
    new-instance v0, Lb0/g;

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lb0/g;-><init>(JJI)V

    return-object v0
.end method
