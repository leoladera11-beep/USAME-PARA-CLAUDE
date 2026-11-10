.class public final Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LJ/D;

.field public b:Lb0/p;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lk0/d;

.field public h:Lb0/o;

.field public i:LR0/b;

.field public j:Lv0/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, Lj0/a;->a:LJ/D;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lj0/a;->f:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lj0/a;->j:Lv0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 0

    iput-object p1, p0, Lj0/a;->b:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lj0/a;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lj0/a;->j:Lv0/n;

    return-void

    :cond_0
    iget v0, p0, Lj0/a;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lj0/a;->j:Lv0/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/n;->c(JJ)V

    :cond_1
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 7

    iget-object v0, p0, Lj0/a;->a:LJ/D;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LJ/D;->K(I)V

    iget-object v2, v0, LJ/D;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v2

    const v4, 0xffd8

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, LJ/D;->K(I)V

    iget-object v2, v0, LJ/D;->a:[B

    invoke-interface {p1, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v2

    iput v2, p0, Lj0/a;->d:I

    const v4, 0xffda

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, LJ/D;->K(I)V

    iget-object v2, v0, LJ/D;->a:[B

    invoke-interface {p1, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v2

    sub-int/2addr v2, v1

    if-gez v2, :cond_2

    :goto_1
    return v3

    :cond_2
    iget v4, p0, Lj0/a;->d:I

    const v5, 0xffe1

    if-eq v4, v5, :cond_3

    invoke-interface {p1, v2}, Lb0/o;->z(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, LJ/D;->K(I)V

    iget-object v4, v0, LJ/D;->a:[B

    invoke-interface {p1, v3, v4, v2}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->v()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, LJ/D;->v()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    sget-object v5, Lj0/c;->a:[Ljava/lang/String;

    aget-object v5, v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\"1\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lj0/a;->c:I

    const-wide/16 v4, -0x1

    iget-object v6, v0, Lj0/a;->a:LJ/D;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_19

    if-eq v3, v9, :cond_18

    if-eq v3, v8, :cond_a

    const/4 v4, 0x5

    if-eq v3, v7, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Lj0/a;->i:LR0/b;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lj0/a;->h:Lb0/o;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lj0/a;->h:Lb0/o;

    new-instance v3, LR0/b;

    iget-wide v4, v0, Lj0/a;->f:J

    invoke-direct {v3, v1, v4, v5}, LR0/b;-><init>(Lb0/o;J)V

    iput-object v3, v0, Lj0/a;->i:LR0/b;

    :cond_3
    iget-object v1, v0, Lj0/a;->j:Lv0/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lj0/a;->i:LR0/b;

    invoke-virtual {v1, v3, v2}, Lv0/n;->e(Lb0/o;Lb0/r;)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-wide v3, v2, Lb0/r;->a:J

    iget-wide v5, v0, Lj0/a;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lb0/r;->a:J

    :cond_4
    return v1

    :cond_5
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v11

    iget-wide v13, v0, Lj0/a;->f:J

    cmp-long v3, v11, v13

    if-eqz v3, :cond_6

    iput-wide v13, v2, Lb0/r;->a:J

    return v9

    :cond_6
    iget-object v2, v6, LJ/D;->a:[B

    invoke-interface {v1, v2, v10, v9, v9}, Lb0/o;->w([BIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lj0/a;->g()V

    return v10

    :cond_7
    invoke-interface {v1}, Lb0/o;->o()V

    iget-object v2, v0, Lj0/a;->j:Lv0/n;

    if-nez v2, :cond_8

    new-instance v2, Lv0/n;

    sget-object v3, Ly0/k;->a:Ld1/m;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Lv0/n;-><init>(Ly0/k;I)V

    iput-object v2, v0, Lj0/a;->j:Lv0/n;

    :cond_8
    new-instance v2, LR0/b;

    iget-wide v5, v0, Lj0/a;->f:J

    invoke-direct {v2, v1, v5, v6}, LR0/b;-><init>(Lb0/o;J)V

    iput-object v2, v0, Lj0/a;->i:LR0/b;

    iget-object v1, v0, Lj0/a;->j:Lv0/n;

    invoke-virtual {v1, v2}, Lv0/n;->d(Lb0/o;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lj0/a;->j:Lv0/n;

    new-instance v2, LR0/b;

    iget-wide v5, v0, Lj0/a;->f:J

    iget-object v3, v0, Lj0/a;->b:Lb0/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v8, v5, v6, v3}, LR0/b;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lv0/n;->b(Lb0/p;)V

    iget-object v1, v0, Lj0/a;->g:Lk0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lj0/a;->b:Lb0/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Lb0/p;->v(II)Lb0/G;

    move-result-object v2

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    const-string v5, "image/jpeg"

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LG/w;->n:Ljava/lang/String;

    new-instance v5, LG/V;

    new-array v6, v9, [LG/U;

    aput-object v1, v6, v10

    invoke-direct {v5, v6}, LG/V;-><init>([LG/U;)V

    iput-object v5, v3, LG/w;->l:LG/V;

    new-instance v1, LG/x;

    invoke-direct {v1, v3}, LG/x;-><init>(LG/w;)V

    invoke-interface {v2, v1}, Lb0/G;->b(LG/x;)V

    iput v4, v0, Lj0/a;->c:I

    return v10

    :cond_9
    invoke-virtual {v0}, Lj0/a;->g()V

    return v10

    :cond_a
    iget v2, v0, Lj0/a;->d:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_16

    new-instance v2, LJ/D;

    iget v3, v0, Lj0/a;->e:I

    invoke-direct {v2, v3}, LJ/D;-><init>(I)V

    iget-object v3, v2, LJ/D;->a:[B

    iget v6, v0, Lj0/a;->e:I

    invoke-interface {v1, v3, v10, v6}, Lb0/o;->readFully([BII)V

    iget-object v3, v0, Lj0/a;->g:Lk0/d;

    if-nez v3, :cond_17

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2}, LJ/D;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, LJ/D;->v()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_c

    :cond_b
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_c
    :try_start_0
    invoke-static {v2}, Lj0/c;->a(Ljava/lang/String;)LR0/b;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LG/X; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v2, v1, LR0/b;->g:Ljava/lang/Object;

    check-cast v2, Lu1/C0;

    iget v11, v2, Lu1/C0;->h:I

    if-ge v11, v8, :cond_e

    goto :goto_0

    :cond_e
    sub-int/2addr v11, v9

    move-wide v13, v4

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    :goto_2
    if-ltz v11, :cond_14

    invoke-virtual {v2, v11}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj0/b;

    iget-object v12, v8, Lj0/b;->a:Ljava/lang/String;

    const-string v3, "video/mp4"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "video/quicktime"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    move v3, v10

    goto :goto_4

    :cond_10
    :goto_3
    move v3, v9

    :goto_4
    if-nez v11, :cond_11

    move-wide/from16 v17, v4

    iget-wide v4, v8, Lj0/b;->c:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    :goto_5
    move-wide/from16 v23, v6

    move-wide v6, v4

    move-wide/from16 v4, v23

    goto :goto_6

    :cond_11
    move-wide/from16 v17, v4

    iget-wide v4, v8, Lj0/b;->b:J

    sub-long v4, v6, v4

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_12

    cmp-long v3, v6, v4

    if-eqz v3, :cond_12

    sub-long v21, v4, v6

    move-wide/from16 v19, v6

    :cond_12
    if-nez v11, :cond_13

    move-wide v15, v4

    move-wide v13, v6

    :cond_13
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v4, v17

    goto :goto_2

    :cond_14
    move-wide/from16 v17, v4

    cmp-long v2, v19, v17

    if-eqz v2, :cond_b

    cmp-long v2, v21, v17

    if-eqz v2, :cond_b

    cmp-long v2, v13, v17

    if-eqz v2, :cond_b

    cmp-long v2, v15, v17

    if-nez v2, :cond_15

    goto :goto_0

    :cond_15
    new-instance v12, Lk0/d;

    iget-wide v1, v1, LR0/b;->f:J

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Lk0/d;-><init>(JJJJJ)V

    move-object v3, v12

    :goto_7
    iput-object v3, v0, Lj0/a;->g:Lk0/d;

    if-eqz v3, :cond_17

    iget-wide v1, v3, Lk0/d;->d:J

    iput-wide v1, v0, Lj0/a;->f:J

    goto :goto_8

    :cond_16
    iget v2, v0, Lj0/a;->e:I

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    :cond_17
    :goto_8
    iput v10, v0, Lj0/a;->c:I

    return v10

    :cond_18
    invoke-virtual {v6, v8}, LJ/D;->K(I)V

    iget-object v2, v6, LJ/D;->a:[B

    invoke-interface {v1, v10, v2, v8}, Lb0/o;->l(I[BI)V

    invoke-virtual {v6}, LJ/D;->H()I

    move-result v2

    sub-int/2addr v2, v8

    iput v2, v0, Lj0/a;->e:I

    invoke-interface {v1, v8}, Lb0/o;->p(I)V

    iput v8, v0, Lj0/a;->c:I

    return v10

    :cond_19
    move-wide/from16 v17, v4

    invoke-virtual {v6, v8}, LJ/D;->K(I)V

    iget-object v2, v6, LJ/D;->a:[B

    invoke-interface {v1, v2, v10, v8}, Lb0/o;->readFully([BII)V

    invoke-virtual {v6}, LJ/D;->H()I

    move-result v1

    iput v1, v0, Lj0/a;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b

    iget-wide v1, v0, Lj0/a;->f:J

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1a

    iput v7, v0, Lj0/a;->c:I

    return v10

    :cond_1a
    invoke-virtual {v0}, Lj0/a;->g()V

    return v10

    :cond_1b
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c

    const v2, 0xffd9

    if-le v1, v2, :cond_1d

    :cond_1c
    const v2, 0xff01

    if-eq v1, v2, :cond_1d

    iput v9, v0, Lj0/a;->c:I

    :cond_1d
    return v10
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lj0/a;->b:Lb0/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lb0/p;->e()V

    iget-object v0, p0, Lj0/a;->b:Lb0/p;

    new-instance v1, Lb0/s;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lb0/s;-><init>(J)V

    invoke-interface {v0, v1}, Lb0/p;->c(Lb0/z;)V

    const/4 v0, 0x6

    iput v0, p0, Lj0/a;->c:I

    return-void
.end method
