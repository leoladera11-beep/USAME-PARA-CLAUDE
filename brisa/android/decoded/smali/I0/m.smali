.class public final LI0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/h;


# static fields
.field public static final l:[F


# instance fields
.field public final a:LI0/F;

.field public final b:LJ/D;

.field public final c:[Z

.field public final d:LI0/k;

.field public final e:LI0/w;

.field public f:LI0/l;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lb0/G;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, LI0/m;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(LI0/F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/m;->a:LI0/F;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, LI0/m;->c:[Z

    new-instance p1, LI0/k;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p1, LI0/k;->e:[B

    iput-object p1, p0, LI0/m;->d:LI0/k;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/m;->k:J

    new-instance p1, LI0/w;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, LI0/w;-><init>(I)V

    iput-object p1, p0, LI0/m;->e:LI0/w;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LI0/m;->b:LJ/D;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LI0/m;->c:[Z

    invoke-static {v0}, LK/t;->b([Z)V

    iget-object v0, p0, LI0/m;->d:LI0/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, LI0/k;->a:Z

    iput v1, v0, LI0/k;->c:I

    iput v1, v0, LI0/k;->b:I

    iget-object v0, p0, LI0/m;->f:LI0/l;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, LI0/l;->b:Z

    iput-boolean v1, v0, LI0/l;->c:Z

    iput-boolean v1, v0, LI0/l;->d:Z

    const/4 v1, -0x1

    iput v1, v0, LI0/l;->e:I

    :cond_0
    iget-object v0, p0, LI0/m;->e:LI0/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LI0/w;->g()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LI0/m;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/m;->k:J

    return-void
.end method

.method public final f(LJ/D;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LI0/m;->f:LI0/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LI0/m;->i:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, LJ/D;->b:I

    iget v3, v1, LJ/D;->c:I

    iget-object v4, v1, LJ/D;->a:[B

    iget-wide v5, v0, LI0/m;->g:J

    invoke-virtual {v1}, LJ/D;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, LI0/m;->g:J

    iget-object v5, v0, LI0/m;->i:Lb0/G;

    invoke-virtual {v1}, LJ/D;->a()I

    move-result v6

    invoke-interface {v5, v6, v1}, Lb0/G;->a(ILJ/D;)V

    :goto_0
    iget-object v5, v0, LI0/m;->c:[Z

    invoke-static {v4, v2, v3, v5}, LK/t;->c([BII[Z)I

    move-result v5

    iget-object v6, v0, LI0/m;->d:LI0/k;

    iget-object v7, v0, LI0/m;->e:LI0/w;

    if-ne v5, v3, :cond_2

    iget-boolean v1, v0, LI0/m;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v6, v2, v4, v3}, LI0/k;->a(I[BI)V

    :cond_0
    iget-object v1, v0, LI0/m;->f:LI0/l;

    invoke-virtual {v1, v2, v4, v3}, LI0/l;->a(I[BI)V

    if-eqz v7, :cond_1

    invoke-virtual {v7, v2, v4, v3}, LI0/w;->a(I[BI)V

    :cond_1
    return-void

    :cond_2
    iget-object v8, v1, LJ/D;->a:[B

    add-int/lit8 v9, v5, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v10, v8, 0xff

    sub-int v11, v5, v2

    iget-boolean v12, v0, LI0/m;->j:Z

    if-nez v12, :cond_19

    if-lez v11, :cond_3

    invoke-virtual {v6, v2, v4, v5}, LI0/k;->a(I[BI)V

    :cond_3
    if-gez v11, :cond_4

    neg-int v12, v11

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget v15, v6, LI0/k;->b:I

    if-eqz v15, :cond_17

    const-string v13, "H263Reader"

    const-string v14, "Unexpected start code value"

    move/from16 v16, v3

    const/4 v3, 0x1

    if-eq v15, v3, :cond_15

    const/4 v3, 0x2

    if-eq v15, v3, :cond_13

    const/4 v3, 0x4

    move/from16 v17, v9

    const/4 v9, 0x3

    if-eq v15, v9, :cond_11

    if-ne v15, v3, :cond_10

    const/16 v8, 0xb3

    if-eq v10, v8, :cond_6

    const/16 v8, 0xb5

    if-ne v10, v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_6
    :goto_2
    iget v8, v6, LI0/k;->c:I

    sub-int/2addr v8, v12

    iput v8, v6, LI0/k;->c:I

    const/4 v8, 0x0

    iput-boolean v8, v6, LI0/k;->a:Z

    iget-object v8, v0, LI0/m;->i:Lb0/G;

    iget v9, v6, LI0/k;->d:I

    iget-object v12, v0, LI0/m;->h:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v6, LI0/k;->e:[B

    iget v6, v6, LI0/k;->c:I

    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    new-instance v14, LJ/B;

    array-length v15, v6

    invoke-direct {v14, v6, v15}, LJ/B;-><init>([BI)V

    invoke-virtual {v14, v9}, LJ/B;->p(I)V

    invoke-virtual {v14, v3}, LJ/B;->p(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    const/16 v9, 0x8

    invoke-virtual {v14, v9}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->f()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14, v3}, LJ/B;->o(I)V

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, LJ/B;->o(I)V

    :cond_7
    invoke-virtual {v14, v3}, LJ/B;->g(I)I

    move-result v3

    const-string v15, "Invalid aspect ratio"

    move-object/from16 v18, v6

    const/16 v6, 0xf

    if-ne v3, v6, :cond_9

    invoke-virtual {v14, v9}, LJ/B;->g(I)I

    move-result v3

    invoke-virtual {v14, v9}, LJ/B;->g(I)I

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v13, v15}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    int-to-float v3, v3

    int-to-float v9, v9

    div-float v15, v3, v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x7

    if-ge v3, v9, :cond_a

    sget-object v9, LI0/m;->l:[F

    aget v15, v9, v3

    goto :goto_4

    :cond_a
    invoke-static {v13, v15}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v14}, LJ/B;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, LJ/B;->o(I)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14, v6}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14, v6}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14, v6}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    const/4 v9, 0x3

    invoke-virtual {v14, v9}, LJ/B;->o(I)V

    const/16 v3, 0xb

    invoke-virtual {v14, v3}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14, v6}, LJ/B;->o(I)V

    invoke-virtual {v14}, LJ/B;->n()V

    :cond_b
    const/4 v3, 0x2

    invoke-virtual {v14, v3}, LJ/B;->g(I)I

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Unhandled video object layer shape"

    invoke-static {v13, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v14}, LJ/B;->n()V

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, LJ/B;->g(I)I

    move-result v3

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14}, LJ/B;->f()Z

    move-result v6

    if-eqz v6, :cond_f

    if-nez v3, :cond_d

    const-string v3, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_5
    if-lez v3, :cond_e

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v14, v6}, LJ/B;->o(I)V

    :cond_f
    :goto_6
    invoke-virtual {v14}, LJ/B;->n()V

    const/16 v3, 0xd

    invoke-virtual {v14, v3}, LJ/B;->g(I)I

    move-result v6

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14, v3}, LJ/B;->g(I)I

    move-result v3

    invoke-virtual {v14}, LJ/B;->n()V

    invoke-virtual {v14}, LJ/B;->n()V

    new-instance v9, LG/w;

    invoke-direct {v9}, LG/w;-><init>()V

    iput-object v12, v9, LG/w;->a:Ljava/lang/String;

    const-string v12, "video/mp2t"

    invoke-static {v12}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, LG/w;->n:Ljava/lang/String;

    const-string v12, "video/mp4v-es"

    invoke-static {v12}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, LG/w;->o:Ljava/lang/String;

    iput v6, v9, LG/w;->v:I

    iput v3, v9, LG/w;->w:I

    iput v15, v9, LG/w;->D:F

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v9, LG/w;->r:Ljava/util/List;

    new-instance v3, LG/x;

    invoke-direct {v3, v9}, LG/x;-><init>(LG/w;)V

    invoke-interface {v8, v3}, Lb0/G;->b(LG/x;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, LI0/m;->j:Z

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_11
    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0x20

    if-eq v8, v9, :cond_12

    invoke-static {v13, v14}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, v6, LI0/k;->a:Z

    iput v8, v6, LI0/k;->c:I

    iput v8, v6, LI0/k;->b:I

    goto :goto_7

    :cond_12
    const/4 v8, 0x0

    iget v9, v6, LI0/k;->c:I

    iput v9, v6, LI0/k;->d:I

    iput v3, v6, LI0/k;->b:I

    goto :goto_7

    :cond_13
    move/from16 v17, v9

    const/4 v8, 0x0

    const/16 v3, 0x1f

    if-le v10, v3, :cond_14

    invoke-static {v13, v14}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v6, LI0/k;->a:Z

    iput v8, v6, LI0/k;->c:I

    iput v8, v6, LI0/k;->b:I

    goto :goto_7

    :cond_14
    const/4 v9, 0x3

    iput v9, v6, LI0/k;->b:I

    goto :goto_7

    :cond_15
    move/from16 v17, v9

    const/16 v3, 0xb5

    const/4 v8, 0x0

    if-eq v10, v3, :cond_16

    invoke-static {v13, v14}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v6, LI0/k;->a:Z

    iput v8, v6, LI0/k;->c:I

    iput v8, v6, LI0/k;->b:I

    goto :goto_7

    :cond_16
    const/4 v3, 0x2

    iput v3, v6, LI0/k;->b:I

    goto :goto_7

    :cond_17
    move/from16 v16, v3

    move/from16 v17, v9

    const/4 v8, 0x0

    const/16 v3, 0xb0

    if-ne v10, v3, :cond_18

    const/4 v3, 0x1

    iput v3, v6, LI0/k;->b:I

    iput-boolean v3, v6, LI0/k;->a:Z

    :cond_18
    :goto_7
    sget-object v3, LI0/k;->f:[B

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v3, v9}, LI0/k;->a(I[BI)V

    goto :goto_8

    :cond_19
    move/from16 v16, v3

    move/from16 v17, v9

    :goto_8
    iget-object v3, v0, LI0/m;->f:LI0/l;

    invoke-virtual {v3, v2, v4, v5}, LI0/l;->a(I[BI)V

    if-eqz v7, :cond_1c

    if-lez v11, :cond_1a

    invoke-virtual {v7, v2, v4, v5}, LI0/w;->a(I[BI)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v11

    :goto_9
    invoke-virtual {v7, v2}, LI0/w;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, LI0/w;->f:Ljava/lang/Object;

    check-cast v2, [B

    iget v3, v7, LI0/w;->e:I

    invoke-static {v2, v3}, LK/t;->s([BI)I

    move-result v2

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget-object v3, v7, LI0/w;->f:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v6, v0, LI0/m;->b:LJ/D;

    invoke-virtual {v6, v3, v2}, LJ/D;->L([BI)V

    iget-object v2, v0, LI0/m;->a:LI0/F;

    iget-wide v8, v0, LI0/m;->k:J

    invoke-virtual {v2, v8, v9, v6}, LI0/F;->a(JLJ/D;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v10, v2, :cond_1c

    iget-object v2, v1, LJ/D;->a:[B

    add-int/lit8 v3, v5, 0x2

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    invoke-virtual {v7, v10}, LI0/w;->h(I)V

    goto :goto_a

    :cond_1c
    const/4 v3, 0x1

    :cond_1d
    :goto_a
    sub-int v2, v16, v5

    iget-wide v5, v0, LI0/m;->g:J

    int-to-long v7, v2

    sub-long/2addr v5, v7

    iget-object v7, v0, LI0/m;->f:LI0/l;

    iget-boolean v8, v0, LI0/m;->j:Z

    invoke-virtual {v7, v5, v6, v2, v8}, LI0/l;->b(JIZ)V

    iget-object v2, v0, LI0/m;->f:LI0/l;

    iget-wide v5, v0, LI0/m;->k:J

    iput v10, v2, LI0/l;->e:I

    const/4 v8, 0x0

    iput-boolean v8, v2, LI0/l;->d:Z

    const/16 v7, 0xb6

    if-eq v10, v7, :cond_1f

    const/16 v8, 0xb3

    if-ne v10, v8, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    goto :goto_c

    :cond_1f
    :goto_b
    move v8, v3

    :goto_c
    iput-boolean v8, v2, LI0/l;->b:Z

    if-ne v10, v7, :cond_20

    move v14, v3

    goto :goto_d

    :cond_20
    const/4 v14, 0x0

    :goto_d
    iput-boolean v14, v2, LI0/l;->c:Z

    const/4 v8, 0x0

    iput v8, v2, LI0/l;->f:I

    iput-wide v5, v2, LI0/l;->h:J

    move/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method

.method public final g(IJ)V
    .locals 0

    iput-wide p2, p0, LI0/m;->k:J

    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, LI0/m;->f:LI0/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LI0/m;->f:LI0/l;

    iget-wide v1, p0, LI0/m;->g:J

    iget-boolean v3, p0, LI0/m;->j:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, LI0/l;->b(JIZ)V

    iget-object v0, p0, LI0/m;->f:LI0/l;

    iput-boolean v4, v0, LI0/l;->b:Z

    iput-boolean v4, v0, LI0/l;->c:Z

    iput-boolean v4, v0, LI0/l;->d:Z

    const/4 v1, -0x1

    iput v1, v0, LI0/l;->e:I

    return-void
.end method

.method public final j(Lb0/p;LI0/J;)V
    .locals 2

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v0, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v0, p0, LI0/m;->h:Ljava/lang/String;

    invoke-virtual {p2}, LI0/J;->b()V

    iget v0, p2, LI0/J;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, LI0/m;->i:Lb0/G;

    new-instance v1, LI0/l;

    invoke-direct {v1, v0}, LI0/l;-><init>(Lb0/G;)V

    iput-object v1, p0, LI0/m;->f:LI0/l;

    iget-object v0, p0, LI0/m;->a:LI0/F;

    invoke-virtual {v0, p1, p2}, LI0/F;->b(Lb0/p;LI0/J;)V

    return-void
.end method
