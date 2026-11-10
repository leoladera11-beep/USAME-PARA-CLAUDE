.class public final Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LJ/D;

.field public final b:LK/A;

.field public final c:Lb0/v;

.field public final d:LZ0/i;

.field public final e:Lb0/l;

.field public f:Lb0/p;

.field public g:Lb0/G;

.field public h:Lb0/G;

.field public i:I

.field public j:LG/V;

.field public k:LG/V;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:Lu0/h;

.field public r:Z

.field public s:Z

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/D;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, Lu0/d;->a:LJ/D;

    new-instance v0, LK/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu0/d;->b:LK/A;

    new-instance v0, Lb0/v;

    invoke-direct {v0}, Lb0/v;-><init>()V

    iput-object v0, p0, Lu0/d;->c:Lb0/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lu0/d;->l:J

    new-instance v0, LZ0/i;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LZ0/i;-><init>(I)V

    iput-object v0, p0, Lu0/d;->d:LZ0/i;

    new-instance v0, Lb0/l;

    invoke-direct {v0}, Lb0/l;-><init>()V

    iput-object v0, p0, Lu0/d;->e:Lb0/l;

    iput-object v0, p0, Lu0/d;->h:Lb0/G;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu0/d;->o:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    iput-object p1, p0, Lu0/d;->f:Lb0/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    iput-object p1, p0, Lu0/d;->g:Lb0/G;

    iput-object p1, p0, Lu0/d;->h:Lb0/G;

    iget-object p1, p0, Lu0/d;->f:Lb0/p;

    invoke-interface {p1}, Lb0/p;->e()V

    return-void
.end method

.method public final c(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lu0/d;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lu0/d;->l:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu0/d;->m:J

    iput p1, p0, Lu0/d;->p:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lu0/d;->o:J

    iput-wide p3, p0, Lu0/d;->t:J

    iget-object p1, p0, Lu0/d;->q:Lu0/h;

    instance-of p2, p1, Lu0/b;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lu0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Lb0/o;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lu0/d;->i(Lb0/o;Z)Z

    move-result p1

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lu0/d;->g:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget v2, v0, Lu0/d;->i:I

    iget-object v8, v0, Lu0/d;->c:Lb0/v;

    const/4 v14, 0x0

    iget-object v15, v0, Lu0/d;->b:LK/A;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v14}, Lu0/d;->i(Lb0/o;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v9, v8

    const/16 p2, 0x0

    const/4 v10, -0x1

    const/4 v14, -0x1

    const-wide/32 v16, 0xf4240

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2a

    :cond_0
    :goto_0
    iget-object v2, v0, Lu0/d;->q:Lu0/h;

    const/16 p2, 0x0

    iget-object v3, v0, Lu0/d;->a:LJ/D;

    const-wide/32 v16, 0xf4240

    const/4 v4, 0x1

    if-nez v2, :cond_35

    new-instance v2, LJ/D;

    iget v5, v15, LK/A;->b:I

    invoke-direct {v2, v5}, LJ/D;-><init>(I)V

    iget-object v5, v2, LJ/D;->a:[B

    const-wide/16 v18, 0x1

    iget v6, v15, LK/A;->b:I

    invoke-interface {v1, v14, v5, v6}, Lb0/o;->l(I[BI)V

    iget v5, v15, LK/A;->a:I

    and-int/2addr v5, v4

    const/16 v6, 0x15

    const/16 v7, 0x24

    if-eqz v5, :cond_1

    iget v5, v15, LK/A;->d:I

    if-eq v5, v4, :cond_3

    move v6, v7

    goto :goto_1

    :cond_1
    iget v5, v15, LK/A;->d:I

    if-eq v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0xd

    :cond_3
    :goto_1
    iget v5, v2, LJ/D;->c:I

    const-wide/16 v20, 0x0

    add-int/lit8 v11, v6, 0x4

    const v12, 0x496e666f

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const v9, 0x56425249

    const v10, 0x58696e67

    if-lt v5, v11, :cond_4

    invoke-virtual {v2, v6}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    if-eq v5, v10, :cond_6

    if-ne v5, v12, :cond_4

    goto :goto_2

    :cond_4
    iget v5, v2, LJ/D;->c:I

    const/16 v6, 0x28

    if-lt v5, v6, :cond_5

    invoke-virtual {v2, v7}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    if-ne v5, v9, :cond_5

    move v5, v9

    goto :goto_2

    :cond_5
    move v5, v14

    :cond_6
    :goto_2
    const/4 v11, 0x2

    const-wide/16 v24, -0x1

    if-eq v5, v12, :cond_7

    if-eq v5, v9, :cond_8

    if-eq v5, v10, :cond_7

    invoke-interface {v1}, Lb0/o;->o()V

    move-object/from16 v30, p2

    move-object/from16 v27, v3

    move-object v9, v8

    goto/16 :goto_16

    :cond_7
    move-object/from16 v32, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v8

    goto/16 :goto_8

    :cond_8
    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v9

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v26

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    iget v12, v15, LK/A;->b:I

    move-object/from16 v28, v8

    int-to-long v7, v12

    add-long v35, v26, v7

    int-to-long v7, v5

    add-long v7, v35, v7

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    if-gtz v5, :cond_9

    move-object/from16 v30, p2

    move-object/from16 v27, v3

    goto/16 :goto_7

    :cond_9
    iget v12, v15, LK/A;->c:I

    int-to-long v13, v5

    iget v5, v15, LK/A;->f:I

    move-wide/from16 v30, v7

    int-to-long v6, v5

    mul-long/2addr v13, v6

    sub-long v13, v13, v18

    invoke-static {v12, v13, v14}, LJ/W;->L(IJ)J

    move-result-wide v33

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v5

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v6

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v7

    invoke-virtual {v2, v11}, LJ/D;->O(I)V

    iget v8, v15, LK/A;->b:I

    int-to-long v12, v8

    add-long v26, v26, v12

    new-array v8, v5, [J

    new-array v12, v5, [J

    move-wide/from16 v13, v26

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_e

    move-object/from16 v32, v2

    move-object/from16 v27, v3

    int-to-long v2, v11

    mul-long v2, v2, v33

    move-wide/from16 v37, v2

    int-to-long v2, v5

    div-long v2, v37, v2

    aput-wide v2, v8, v11

    aput-wide v13, v12, v11

    if-eq v7, v4, :cond_d

    const/4 v2, 0x2

    if-eq v7, v2, :cond_c

    const/4 v2, 0x3

    if-eq v7, v2, :cond_b

    const/4 v2, 0x4

    if-eq v7, v2, :cond_a

    move-object/from16 v30, p2

    goto/16 :goto_7

    :cond_a
    invoke-virtual/range {v32 .. v32}, LJ/D;->E()I

    move-result v2

    goto :goto_4

    :cond_b
    invoke-virtual/range {v32 .. v32}, LJ/D;->D()I

    move-result v2

    goto :goto_4

    :cond_c
    invoke-virtual/range {v32 .. v32}, LJ/D;->H()I

    move-result v2

    goto :goto_4

    :cond_d
    invoke-virtual/range {v32 .. v32}, LJ/D;->A()I

    move-result v2

    :goto_4
    int-to-long v2, v2

    move/from16 v37, v5

    int-to-long v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v13, v2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v27

    move-object/from16 v2, v32

    move/from16 v5, v37

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    move-object/from16 v27, v3

    cmp-long v2, v9, v24

    const-string v3, ", "

    const-string v4, "VbriSeeker"

    if-eqz v2, :cond_f

    cmp-long v2, v9, v30

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "VBRI data size mismatch: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v30

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-wide/from16 v5, v30

    :goto_5
    cmp-long v2, v5, v13

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "VBRI bytes and ToC mismatch (using max): "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nSeeking will be inaccurate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v37, v2

    goto :goto_6

    :cond_10
    move-wide/from16 v37, v5

    :goto_6
    new-instance v30, Lu0/i;

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    invoke-direct/range {v30 .. v38}, Lu0/i;-><init>([J[JJJJ)V

    :goto_7
    iget v2, v15, LK/A;->b:I

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    move-object/from16 v9, v28

    goto/16 :goto_16

    :goto_8
    invoke-virtual/range {v32 .. v32}, LJ/D;->m()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_11

    invoke-virtual/range {v32 .. v32}, LJ/D;->E()I

    move-result v3

    goto :goto_9

    :cond_11
    const/4 v3, -0x1

    :goto_9
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_12

    invoke-virtual/range {v32 .. v32}, LJ/D;->C()J

    move-result-wide v6

    goto :goto_a

    :cond_12
    move-wide/from16 v6, v24

    :goto_a
    and-int/lit8 v4, v2, 0x4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_14

    const/16 v4, 0x64

    new-array v8, v4, [J

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v4, :cond_13

    invoke-virtual/range {v32 .. v32}, LJ/D;->A()I

    move-result v11

    int-to-long v11, v11

    aput-wide v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_13
    move-object/from16 v48, v8

    goto :goto_c

    :cond_14
    move-object/from16 v48, p2

    :goto_c
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_15

    move-object/from16 v2, v32

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    goto :goto_d

    :cond_15
    move-object/from16 v2, v32

    :goto_d
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v4

    const/16 v8, 0x18

    if-lt v4, v8, :cond_18

    const/16 v4, 0x9

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4, v8}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v9

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v11

    invoke-static {v9}, Lu0/e;->a(I)Lu0/e;

    move-result-object v9

    invoke-static {v11}, Lu0/e;->a(I)Lu0/e;

    move-result-object v11

    const/4 v12, 0x0

    cmpg-float v12, v8, v12

    if-gtz v12, :cond_16

    if-nez v9, :cond_16

    if-nez v11, :cond_16

    move-object/from16 v12, p2

    :goto_e
    const/4 v8, 0x2

    goto :goto_f

    :cond_16
    new-instance v12, Lu0/f;

    invoke-direct {v12, v8, v9, v11}, Lu0/f;-><init>(FLu0/e;Lu0/e;)V

    goto :goto_e

    :goto_f
    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->D()I

    move-result v2

    const v8, 0xfff000

    and-int/2addr v8, v2

    shr-int/lit8 v8, v8, 0xc

    and-int/lit16 v2, v2, 0xfff

    const-string v9, "LAME"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "Lavf"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "Lavc"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_17
    add-int/lit16 v8, v8, 0x211

    add-int/lit16 v2, v2, -0x211

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_10

    :cond_18
    move-object/from16 v12, p2

    const/4 v2, -0x1

    const/4 v8, -0x1

    :cond_19
    :goto_10
    new-instance v4, LB1/d;

    int-to-long v13, v3

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v3, LK/A;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget v9, v15, LK/A;->a:I

    iput v9, v3, LK/A;->a:I

    iget-object v9, v15, LK/A;->g:Ljava/io/Serializable;

    check-cast v9, Ljava/lang/String;

    iput-object v9, v3, LK/A;->g:Ljava/io/Serializable;

    iget v9, v15, LK/A;->b:I

    iput v9, v3, LK/A;->b:I

    iget v9, v15, LK/A;->c:I

    iput v9, v3, LK/A;->c:I

    iget v9, v15, LK/A;->d:I

    iput v9, v3, LK/A;->d:I

    iget v9, v15, LK/A;->e:I

    iput v9, v3, LK/A;->e:I

    iget v9, v15, LK/A;->f:I

    iput v9, v3, LK/A;->f:I

    iput-object v3, v4, LB1/d;->d:Ljava/lang/Object;

    iput-wide v13, v4, LB1/d;->a:J

    iput v8, v4, LB1/d;->b:I

    iput v2, v4, LB1/d;->c:I

    iget-object v3, v4, LB1/d;->d:Ljava/lang/Object;

    check-cast v3, LK/A;

    move-object/from16 v9, v28

    iget v11, v9, Lb0/v;->a:I

    const/4 v10, -0x1

    if-eq v11, v10, :cond_1a

    iget v11, v9, Lb0/v;->b:I

    if-eq v11, v10, :cond_1a

    goto :goto_11

    :cond_1a
    if-eq v8, v10, :cond_1b

    if-eq v2, v10, :cond_1b

    iput v8, v9, Lb0/v;->a:I

    iput v2, v9, Lb0/v;->b:I

    :cond_1b
    :goto_11
    if-eqz v12, :cond_1c

    new-instance v2, LG/V;

    const/4 v8, 0x1

    new-array v10, v8, [LG/U;

    const/16 v39, 0x0

    aput-object v12, v10, v39

    invoke-direct {v2, v10}, LG/V;-><init>([LG/U;)V

    goto :goto_12

    :cond_1c
    move-object/from16 v2, p2

    :goto_12
    iput-object v2, v0, Lu0/d;->k:LG/V;

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v41

    iget v2, v15, LK/A;->b:I

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    const v2, 0x58696e67

    if-ne v5, v2, :cond_20

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v10

    invoke-virtual {v4}, LB1/d;->a()J

    move-result-wide v44

    cmp-long v2, v44, v22

    if-nez v2, :cond_1e

    :cond_1d
    :goto_13
    move-object/from16 v30, p2

    goto/16 :goto_16

    :cond_1e
    cmp-long v2, v6, v24

    if-eqz v2, :cond_1f

    cmp-long v2, v10, v24

    if-eqz v2, :cond_1f

    add-long v4, v41, v6

    cmp-long v2, v4, v10

    if-eqz v2, :cond_1f

    sub-long v10, v10, v41

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Data size mismatch between stream ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") and Xing frame ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), using smaller value."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XingSeeker"

    invoke-static {v4, v2}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_1f
    move-wide/from16 v46, v6

    new-instance v40, Lu0/j;

    iget v2, v3, LK/A;->b:I

    move/from16 v43, v2

    invoke-direct/range {v40 .. v48}, Lu0/j;-><init>(JIJJ[J)V

    move-object/from16 v30, v40

    goto :goto_16

    :cond_20
    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v10

    invoke-virtual {v4}, LB1/d;->a()J

    move-result-wide v4

    cmp-long v2, v4, v22

    if-nez v2, :cond_21

    goto :goto_13

    :cond_21
    cmp-long v2, v6, v24

    if-eqz v2, :cond_22

    add-long v10, v41, v6

    iget v2, v3, LK/A;->b:I

    move-wide/from16 v30, v6

    int-to-long v6, v2

    sub-long v6, v30, v6

    :goto_14
    move-wide/from16 v44, v10

    goto :goto_15

    :cond_22
    cmp-long v2, v10, v24

    if-eqz v2, :cond_1d

    sub-long v6, v10, v41

    iget v2, v3, LK/A;->b:I

    move-wide/from16 v24, v6

    int-to-long v6, v2

    sub-long v6, v24, v6

    goto :goto_14

    :goto_15
    invoke-static {v6, v7, v4, v5}, LV0/a;->b(JJ)I

    move-result v2

    const v8, -0x7fffffff

    if-ne v2, v8, :cond_23

    goto :goto_13

    :cond_23
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v6, v7, v13, v14, v8}, Lcom/brisa/local/d0;->k(JJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-static {v6, v7}, LS1/e;->e(J)I

    move-result v49

    new-instance v43, Lu0/a;

    iget v3, v3, LK/A;->b:I

    int-to-long v6, v3

    add-long v46, v41, v6

    const/16 v50, 0x0

    const/16 v51, 0x1

    move/from16 v48, v2

    move-wide/from16 v52, v4

    invoke-direct/range {v43 .. v53}, Lu0/a;-><init>(JJIIZZJ)V

    move-object/from16 v30, v43

    :goto_16
    iget-object v2, v0, Lu0/d;->j:LG/V;

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    if-nez v2, :cond_24

    :goto_17
    move-object/from16 v2, p2

    goto/16 :goto_20

    :cond_24
    iget-object v5, v2, LG/V;->a:[LG/U;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v6, :cond_27

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lp0/l;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual {v11, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LG/U;

    sget-object v10, Lt1/q;->e:Lt1/m;

    invoke-interface {v10, v8}, Lt1/k;->apply(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_19

    :cond_25
    move-object/from16 v8, p2

    :goto_19
    if-eqz v8, :cond_26

    goto :goto_1a

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_27
    move-object/from16 v8, p2

    :goto_1a
    check-cast v8, Lp0/l;

    if-nez v8, :cond_28

    goto :goto_17

    :cond_28
    iget-object v5, v8, Lp0/l;->e:[I

    iget-object v2, v2, LG/V;->a:[LG/U;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_2b

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lp0/n;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-virtual {v12, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LG/U;

    move-object v11, v10

    check-cast v11, Lp0/n;

    iget-object v11, v11, Lp0/i;->a:Ljava/lang/String;

    const-string v12, "TLEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    goto :goto_1c

    :cond_29
    move-object/from16 v10, p2

    :goto_1c
    if-eqz v10, :cond_2a

    goto :goto_1d

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2b
    move-object/from16 v10, p2

    :goto_1d
    check-cast v10, Lp0/n;

    if-nez v10, :cond_2c

    move-wide/from16 v10, v22

    const/4 v6, 0x0

    goto :goto_1e

    :cond_2c
    iget-object v2, v10, Lp0/n;->c:Lu1/P;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, LJ/W;->G(J)J

    move-result-wide v10

    :goto_1e
    array-length v2, v5

    add-int/lit8 v7, v2, 0x1

    new-array v12, v7, [J

    new-array v7, v7, [J

    aput-wide v3, v12, v6

    aput-wide v20, v7, v6

    move-wide/from16 v13, v20

    const/4 v6, 0x1

    :goto_1f
    if-gt v6, v2, :cond_2d

    move/from16 v24, v2

    iget v2, v8, Lp0/l;->c:I

    add-int/lit8 v25, v6, -0x1

    aget v26, v5, v25

    add-int v2, v2, v26

    move-wide/from16 v31, v3

    int-to-long v2, v2

    add-long v3, v31, v2

    iget v2, v8, Lp0/l;->d:I

    move/from16 v26, v2

    iget-object v2, v8, Lp0/l;->f:[I

    aget v2, v2, v25

    add-int v2, v26, v2

    move-wide/from16 v25, v3

    int-to-long v2, v2

    add-long/2addr v13, v2

    aput-wide v25, v12, v6

    aput-wide v13, v7, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v24

    move-wide/from16 v3, v25

    goto :goto_1f

    :cond_2d
    new-instance v2, Lu0/c;

    invoke-direct {v2, v10, v11, v12, v7}, Lu0/c;-><init>(J[J[J)V

    :goto_20
    iget-boolean v3, v0, Lu0/d;->r:Z

    if-eqz v3, :cond_2e

    new-instance v2, Lu0/g;

    move-wide/from16 v3, v22

    invoke-direct {v2, v3, v4}, Lb0/s;-><init>(J)V

    move-object v3, v2

    move-object/from16 v2, v27

    goto :goto_22

    :cond_2e
    if-eqz v2, :cond_2f

    move-object v3, v2

    move-object/from16 v2, v27

    goto :goto_21

    :cond_2f
    if-eqz v30, :cond_30

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    goto :goto_21

    :cond_30
    move-object/from16 v2, v27

    iget-object v3, v2, LJ/D;->a:[B

    const/4 v4, 0x0

    const/4 v8, 0x4

    invoke-interface {v1, v4, v3, v8}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v4}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v3

    invoke-virtual {v15, v3}, LK/A;->a(I)Z

    new-instance v40, Lu0/a;

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v41

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v43

    iget v3, v15, LK/A;->e:I

    iget v4, v15, LK/A;->b:I

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v48, 0x1

    const/16 v47, 0x0

    move/from16 v45, v3

    move/from16 v46, v4

    invoke-direct/range {v40 .. v50}, Lu0/a;-><init>(JJIIZZJ)V

    move-object/from16 v3, v40

    :goto_21
    instance-of v4, v3, Lu0/a;

    if-eqz v4, :cond_31

    goto :goto_22

    :cond_31
    invoke-interface {v3}, Lb0/z;->c()Z

    :goto_22
    iput-object v3, v0, Lu0/d;->q:Lu0/h;

    iget-object v4, v0, Lu0/d;->g:Lb0/G;

    invoke-interface {v3}, Lb0/z;->g()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lb0/G;->d(J)V

    iget-object v3, v0, Lu0/d;->f:Lb0/p;

    iget-object v4, v0, Lu0/d;->q:Lu0/h;

    invoke-interface {v3, v4}, Lb0/p;->c(Lb0/z;)V

    iget-object v3, v0, Lu0/d;->j:LG/V;

    if-eqz v3, :cond_32

    iget-object v4, v0, Lu0/d;->k:LG/V;

    if-eqz v4, :cond_33

    invoke-virtual {v3, v4}, LG/V;->b(LG/V;)LG/V;

    move-result-object v3

    goto :goto_23

    :cond_32
    iget-object v3, v0, Lu0/d;->k:LG/V;

    :cond_33
    :goto_23
    new-instance v4, LG/w;

    invoke-direct {v4}, LG/w;-><init>()V

    const-string v5, "audio/mpeg"

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LG/w;->n:Ljava/lang/String;

    iget-object v5, v15, LK/A;->g:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LG/w;->o:Ljava/lang/String;

    const/16 v5, 0x1000

    iput v5, v4, LG/w;->p:I

    iget v5, v15, LK/A;->d:I

    iput v5, v4, LG/w;->I:I

    iget v5, v15, LK/A;->c:I

    iput v5, v4, LG/w;->K:I

    iget v5, v9, Lb0/v;->a:I

    iput v5, v4, LG/w;->M:I

    iget v5, v9, Lb0/v;->b:I

    iput v5, v4, LG/w;->N:I

    iput-object v3, v4, LG/w;->l:LG/V;

    iget-object v3, v0, Lu0/d;->q:Lu0/h;

    invoke-interface {v3}, Lu0/h;->f()I

    move-result v3

    const v8, -0x7fffffff

    if-eq v3, v8, :cond_34

    iget-object v3, v0, Lu0/d;->q:Lu0/h;

    invoke-interface {v3}, Lu0/h;->f()I

    move-result v3

    iput v3, v4, LG/w;->i:I

    :cond_34
    iget-object v3, v0, Lu0/d;->h:Lb0/G;

    new-instance v5, LG/x;

    invoke-direct {v5, v4}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, v5}, Lb0/G;->b(LG/x;)V

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Lu0/d;->n:J

    goto :goto_24

    :cond_35
    move-object v2, v3

    move-object v9, v8

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x0

    iget-wide v3, v0, Lu0/d;->n:J

    cmp-long v3, v3, v20

    if-eqz v3, :cond_36

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    iget-wide v5, v0, Lu0/d;->n:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_36

    sub-long/2addr v5, v3

    long-to-int v3, v5

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    :cond_36
    :goto_24
    iget v3, v0, Lu0/d;->p:I

    if-nez v3, :cond_3c

    invoke-interface {v1}, Lb0/o;->o()V

    invoke-virtual/range {p0 .. p1}, Lu0/d;->h(Lb0/o;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_29

    :cond_37
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v2

    iget v3, v0, Lu0/d;->i:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v2

    int-to-long v5, v5

    const-wide/32 v7, -0x1f400

    and-long/2addr v3, v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_3b

    invoke-static {v2}, Lb0/a;->h(I)I

    move-result v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_38

    const/4 v8, 0x1

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_26

    :cond_38
    invoke-virtual {v15, v2}, LK/A;->a(I)Z

    iget-wide v2, v0, Lu0/d;->l:J

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v22

    if-nez v2, :cond_39

    iget-object v2, v0, Lu0/d;->q:Lu0/h;

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lu0/h;->d(J)J

    move-result-wide v2

    iput-wide v2, v0, Lu0/d;->l:J

    :cond_39
    iget v2, v15, LK/A;->b:I

    iput v2, v0, Lu0/d;->p:I

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    iget v4, v15, LK/A;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lu0/d;->o:J

    iget-object v2, v0, Lu0/d;->q:Lu0/h;

    instance-of v3, v2, Lu0/b;

    if-nez v3, :cond_3a

    :goto_25
    const/4 v8, 0x1

    goto :goto_28

    :cond_3a
    check-cast v2, Lu0/b;

    iget-wide v3, v0, Lu0/d;->m:J

    iget v1, v15, LK/A;->f:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    mul-long v3, v3, v16

    iget v1, v15, LK/A;->c:I

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_3b
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    :goto_26
    invoke-interface {v1, v8}, Lb0/o;->p(I)V

    const/4 v4, 0x0

    iput v4, v0, Lu0/d;->i:I

    :goto_27
    const/4 v10, -0x1

    const/4 v14, 0x0

    goto :goto_2a

    :cond_3c
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_25

    :goto_28
    iget-object v2, v0, Lu0/d;->h:Lb0/G;

    iget v3, v0, Lu0/d;->p:I

    invoke-interface {v2, v1, v3, v8}, Lb0/G;->g(LG/o;IZ)I

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_3d

    :goto_29
    const/4 v10, -0x1

    const/4 v14, -0x1

    goto :goto_2a

    :cond_3d
    iget v2, v0, Lu0/d;->p:I

    sub-int/2addr v2, v1

    iput v2, v0, Lu0/d;->p:I

    if-lez v2, :cond_3e

    goto :goto_27

    :cond_3e
    iget-object v1, v0, Lu0/d;->h:Lb0/G;

    iget-wide v2, v0, Lu0/d;->m:J

    iget-wide v4, v0, Lu0/d;->l:J

    mul-long v2, v2, v16

    iget v6, v15, LK/A;->c:I

    int-to-long v6, v6

    div-long/2addr v2, v6

    add-long v25, v2, v4

    iget v2, v15, LK/A;->b:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v27, 0x1

    move-object/from16 v24, v1

    move/from16 v28, v2

    invoke-interface/range {v24 .. v30}, Lb0/G;->f(JIIILb0/F;)V

    iget-wide v1, v0, Lu0/d;->m:J

    iget v3, v15, LK/A;->f:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lu0/d;->m:J

    const/4 v4, 0x0

    iput v4, v0, Lu0/d;->p:I

    move v14, v4

    const/4 v10, -0x1

    :goto_2a
    if-ne v14, v10, :cond_42

    iget-object v1, v0, Lu0/d;->q:Lu0/h;

    instance-of v2, v1, Lu0/b;

    if-eqz v2, :cond_42

    iget-wide v2, v0, Lu0/d;->m:J

    sub-long v2, v2, v18

    cmp-long v4, v2, v20

    if-ltz v4, :cond_40

    iget v4, v9, Lb0/v;->a:I

    if-eq v4, v10, :cond_3f

    iget v5, v9, Lb0/v;->b:I

    if-eq v5, v10, :cond_3f

    int-to-long v6, v4

    sub-long/2addr v2, v6

    int-to-long v4, v5

    sub-long/2addr v2, v4

    :cond_3f
    cmp-long v4, v2, v20

    if-ltz v4, :cond_40

    iget-wide v4, v0, Lu0/d;->l:J

    mul-long v2, v2, v16

    iget v6, v15, LK/A;->c:I

    int-to-long v6, v6

    div-long/2addr v2, v6

    add-long v9, v2, v4

    goto :goto_2b

    :cond_40
    move-wide/from16 v9, v22

    :goto_2b
    invoke-interface {v1}, Lb0/z;->g()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-nez v1, :cond_41

    goto :goto_2c

    :cond_41
    iget-object v1, v0, Lu0/d;->q:Lu0/h;

    check-cast v1, Lu0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_42
    :goto_2c
    return v14
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, Lu0/d;->q:Lu0/h;

    instance-of v1, v0, Lu0/a;

    if-eqz v1, :cond_0

    check-cast v0, Lu0/a;

    invoke-virtual {v0}, Lu0/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lu0/d;->o:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lu0/d;->q:Lu0/h;

    invoke-interface {v2}, Lu0/h;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu0/d;->q:Lu0/h;

    check-cast v0, Lu0/a;

    iget-wide v2, p0, Lu0/d;->o:J

    new-instance v1, Lu0/a;

    iget-wide v4, v0, Lu0/a;->b:J

    iget v6, v0, Lu0/a;->e:I

    iget v7, v0, Lu0/a;->c:I

    iget-boolean v8, v0, Lu0/a;->g:Z

    const/4 v9, 0x0

    iget-wide v10, v0, Lu0/a;->i:J

    invoke-direct/range {v1 .. v11}, Lu0/a;-><init>(JJIIZZJ)V

    iput-object v1, p0, Lu0/d;->q:Lu0/h;

    iget-object v0, p0, Lu0/d;->f:Lb0/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lu0/d;->q:Lu0/h;

    invoke-interface {v0, v1}, Lb0/p;->c(Lb0/z;)V

    iget-object v0, p0, Lu0/d;->g:Lb0/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lu0/d;->q:Lu0/h;

    invoke-interface {v1}, Lb0/z;->g()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lb0/G;->d(J)V

    :cond_0
    return-void
.end method

.method public final h(Lb0/o;)Z
    .locals 8

    iget-object v0, p0, Lu0/d;->q:Lu0/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu0/h;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lu0/d;->a:LJ/D;

    iget-object v0, v0, LJ/D;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lb0/o;->w([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    :goto_0
    return v1
.end method

.method public final i(Lb0/o;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lb0/o;->o()V

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iget-object v5, v0, Lu0/d;->d:LZ0/i;

    invoke-virtual {v5, v1, v2, v3}, LZ0/i;->x(Lb0/o;Lorg/mozilla/javascript/typedarrays/c;I)LG/V;

    move-result-object v2

    iput-object v2, v0, Lu0/d;->j:LG/V;

    if-eqz v2, :cond_0

    iget-object v5, v0, Lu0/d;->c:Lb0/v;

    invoke-virtual {v5, v2}, Lb0/v;->b(LG/V;)V

    :cond_0
    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v5

    long-to-int v2, v5

    if-nez p2, :cond_1

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    :cond_1
    move v5, v4

    :goto_0
    move v6, v5

    move v7, v6

    goto :goto_1

    :cond_2
    move v2, v4

    move v5, v2

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lu0/d;->h(Lb0/o;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    if-lez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lu0/d;->g()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_4
    iget-object v8, v0, Lu0/d;->a:LJ/D;

    invoke-virtual {v8, v4}, LJ/D;->N(I)V

    invoke-virtual {v8}, LJ/D;->m()I

    move-result v8

    if-eqz v5, :cond_5

    int-to-long v10, v5

    const v12, -0x1f400

    and-int/2addr v12, v8

    int-to-long v12, v12

    const-wide/32 v14, -0x1f400

    and-long/2addr v10, v14

    cmp-long v10, v12, v10

    if-nez v10, :cond_6

    :cond_5
    invoke-static {v8}, Lb0/a;->h(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    :cond_6
    add-int/lit8 v5, v7, 0x1

    if-ne v7, v3, :cond_8

    if-eqz p2, :cond_7

    return v4

    :cond_7
    invoke-virtual {v0}, Lu0/d;->g()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_8
    if-eqz p2, :cond_9

    invoke-interface {v1}, Lb0/o;->o()V

    add-int v6, v2, v5

    invoke-interface {v1, v6}, Lb0/o;->z(I)V

    goto :goto_2

    :cond_9
    invoke-interface {v1, v9}, Lb0/o;->p(I)V

    :goto_2
    move v6, v4

    move v7, v5

    move v5, v6

    goto :goto_1

    :cond_a
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_b

    iget-object v5, v0, Lu0/d;->b:LK/A;

    invoke-virtual {v5, v8}, LK/A;->a(I)Z

    move v5, v8

    goto :goto_5

    :cond_b
    const/4 v8, 0x4

    if-ne v6, v8, :cond_d

    :goto_3
    if-eqz p2, :cond_c

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    goto :goto_4

    :cond_c
    invoke-interface {v1}, Lb0/o;->o()V

    :goto_4
    iput v5, v0, Lu0/d;->i:I

    return v9

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, -0x4

    invoke-interface {v1, v10}, Lb0/o;->z(I)V

    goto :goto_1
.end method
