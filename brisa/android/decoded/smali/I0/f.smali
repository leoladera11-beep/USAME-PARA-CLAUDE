.class public final LI0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/h;


# instance fields
.field public final a:LJ/D;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lb0/G;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:LG/x;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/D;

    new-array p3, p3, [B

    invoke-direct {v0, p3}, LJ/D;-><init>([B)V

    iput-object v0, p0, LI0/f;->a:LJ/D;

    const/4 p3, 0x0

    iput p3, p0, LI0/f;->h:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LI0/f;->t:J

    iput-wide v0, p0, LI0/f;->u:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, LI0/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, LI0/f;->q:I

    iput p3, p0, LI0/f;->r:I

    iput-object p1, p0, LI0/f;->c:Ljava/lang/String;

    iput p2, p0, LI0/f;->d:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, LI0/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LI0/f;->h:I

    iput v0, p0, LI0/f;->i:I

    iput v0, p0, LI0/f;->k:I

    iput v0, p0, LI0/f;->j:I

    iput v0, p0, LI0/f;->o:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LI0/f;->t:J

    iput-wide v1, p0, LI0/f;->u:J

    iget-object v1, p0, LI0/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v0, p0, LI0/f;->s:Z

    iget-boolean v0, p0, LI0/f;->v:Z

    iput-boolean v0, p0, LI0/f;->w:Z

    return-void
.end method

.method public final b(LJ/D;[BI)Z
    .locals 2

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v0

    iget v1, p0, LI0/f;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, LI0/f;->i:I

    invoke-virtual {p1, v1, p2, v0}, LJ/D;->k(I[BI)V

    iget p1, p0, LI0/f;->i:I

    add-int/2addr p1, v0

    iput p1, p0, LI0/f;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)V
    .locals 3

    iget-object v0, p0, LI0/f;->a:LJ/D;

    iget-object v0, v0, LJ/D;->a:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/4 p1, 0x4

    iput p1, p0, LI0/f;->i:I

    return-void
.end method

.method public final d(Lb0/m;)V
    .locals 4

    iget v0, p1, Lb0/m;->b:I

    iget v1, p1, Lb0/m;->c:I

    const v2, -0x7fffffff

    if-eq v0, v2, :cond_5

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lb0/m;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LI0/f;->m:LG/x;

    if-eqz p1, :cond_2

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, LI0/f;->m:LG/x;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, LI0/f;->s:Z

    if-nez v3, :cond_3

    iget v3, v2, LG/x;->J:I

    if-ne v1, v3, :cond_3

    iget v3, v2, LG/x;->L:I

    if-ne v0, v3, :cond_3

    iget-object v2, v2, LG/x;->p:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p0, LI0/f;->m:LG/x;

    if-nez v2, :cond_4

    new-instance v2, LG/w;

    invoke-direct {v2}, LG/w;-><init>()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, LG/x;->a()LG/w;

    move-result-object v2

    :goto_1
    iget-object v3, p0, LI0/f;->f:Ljava/lang/String;

    iput-object v3, v2, LG/w;->a:Ljava/lang/String;

    iget-object v3, p0, LI0/f;->e:Ljava/lang/String;

    invoke-static {v3}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, LG/w;->n:Ljava/lang/String;

    invoke-static {p1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, LG/w;->o:Ljava/lang/String;

    iput v1, v2, LG/w;->I:I

    iput v0, v2, LG/w;->K:I

    iget-object p1, p0, LI0/f;->c:Ljava/lang/String;

    iput-object p1, v2, LG/w;->d:Ljava/lang/String;

    iget p1, p0, LI0/f;->d:I

    iput p1, v2, LG/w;->f:I

    new-instance p1, LG/x;

    invoke-direct {p1, v2}, LG/x;-><init>(LG/w;)V

    iput-object p1, p0, LI0/f;->m:LG/x;

    iget-object v0, p0, LI0/f;->g:Lb0/G;

    invoke-interface {v0, p1}, Lb0/G;->b(LG/x;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LI0/f;->s:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final f(LJ/D;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LI0/f;->g:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v2

    if-lez v2, :cond_30

    iget v2, v0, LI0/f;->h:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x7

    const/4 v8, 0x3

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    iget-object v15, v0, LI0/f;->a:LJ/D;

    const/16 v16, 0x8

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    :pswitch_0
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, v0, LI0/f;->i:I

    if-ge v2, v13, :cond_1

    iget v2, v0, LI0/f;->j:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, LI0/f;->j:I

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, LI0/f;->j:I

    iget v2, v0, LI0/f;->i:I

    add-int/2addr v2, v14

    iput v2, v0, LI0/f;->i:I

    goto :goto_1

    :cond_1
    iget v2, v0, LI0/f;->i:I

    if-ne v2, v13, :cond_0

    iget v2, v0, LI0/f;->j:I

    invoke-static {v2}, Lb0/a;->i(I)I

    move-result v2

    if-ne v2, v12, :cond_2

    iget v2, v0, LI0/f;->j:I

    invoke-virtual {v0, v2}, LI0/f;->c(I)V

    iput v12, v0, LI0/f;->p:I

    iput v7, v0, LI0/f;->j:I

    iput v12, v0, LI0/f;->h:I

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, LI0/f;->s:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, LI0/f;->g:Lb0/G;

    iget-object v3, v0, LI0/f;->m:LG/x;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Lb0/G;->b(LG/x;)V

    iput-boolean v7, v0, LI0/f;->s:Z

    :cond_3
    iget-wide v2, v0, LI0/f;->t:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    move v2, v14

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-wide v2, v0, LI0/f;->t:J

    iget-object v15, v0, LI0/f;->g:Lb0/G;

    iget v4, v0, LI0/f;->o:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x1

    move-wide/from16 v16, v2

    move/from16 v19, v4

    invoke-interface/range {v15 .. v21}, Lb0/G;->f(JIIILb0/F;)V

    iget-wide v2, v0, LI0/f;->t:J

    iget-wide v4, v0, LI0/f;->l:J

    add-long/2addr v2, v4

    iput-wide v2, v0, LI0/f;->t:J

    iget-wide v2, v0, LI0/f;->u:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_6

    cmp-long v4, v2, v16

    if-eqz v4, :cond_5

    iput-wide v2, v0, LI0/f;->t:J

    :cond_5
    iput-wide v10, v0, LI0/f;->u:J

    :cond_6
    iput v7, v0, LI0/f;->o:I

    iget v2, v0, LI0/f;->j:I

    iput v2, v0, LI0/f;->k:I

    iput v7, v0, LI0/f;->j:I

    invoke-static {v2}, Lb0/a;->i(I)I

    move-result v2

    iput v2, v0, LI0/f;->p:I

    if-eq v2, v8, :cond_9

    if-ne v2, v13, :cond_7

    goto :goto_3

    :cond_7
    if-ne v2, v14, :cond_8

    iget v2, v0, LI0/f;->k:I

    invoke-virtual {v0, v2}, LI0/f;->c(I)V

    iput v7, v0, LI0/f;->k:I

    iput v14, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_8
    iput v7, v0, LI0/f;->i:I

    iput v7, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_9
    :goto_3
    iget v2, v0, LI0/f;->k:I

    invoke-virtual {v0, v2}, LI0/f;->c(I)V

    iput v7, v0, LI0/f;->k:I

    iput v13, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v2

    iget v3, v0, LI0/f;->n:I

    iget v4, v0, LI0/f;->i:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, LI0/f;->g:Lb0/G;

    invoke-interface {v3, v2, v1}, Lb0/G;->a(ILJ/D;)V

    iget v3, v0, LI0/f;->i:I

    add-int/2addr v3, v2

    iput v3, v0, LI0/f;->i:I

    iget v2, v0, LI0/f;->n:I

    if-ne v3, v2, :cond_0

    iget v3, v0, LI0/f;->p:I

    if-ne v3, v14, :cond_a

    iput v2, v0, LI0/f;->o:I

    iput v7, v0, LI0/f;->i:I

    iput v7, v0, LI0/f;->j:I

    iput v6, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_a
    iget-wide v2, v0, LI0/f;->t:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_b

    move v2, v14

    goto :goto_4

    :cond_b
    move v2, v7

    :goto_4
    invoke-static {v2}, LF1/i;->o(Z)V

    iget v2, v0, LI0/f;->n:I

    iget v3, v0, LI0/f;->p:I

    if-ne v3, v12, :cond_c

    iget v4, v0, LI0/f;->o:I

    goto :goto_5

    :cond_c
    move v4, v7

    :goto_5
    add-int v19, v2, v4

    iget-wide v4, v0, LI0/f;->t:J

    iget-object v15, v0, LI0/f;->g:Lb0/G;

    if-ne v3, v13, :cond_d

    move/from16 v18, v7

    goto :goto_6

    :cond_d
    move/from16 v18, v14

    :goto_6
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v4

    invoke-interface/range {v15 .. v21}, Lb0/G;->f(JIIILb0/F;)V

    iget-wide v2, v0, LI0/f;->t:J

    iget-wide v4, v0, LI0/f;->l:J

    add-long/2addr v2, v4

    iput-wide v2, v0, LI0/f;->t:J

    iget-wide v2, v0, LI0/f;->u:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_f

    cmp-long v4, v2, v16

    if-eqz v4, :cond_e

    iput-wide v2, v0, LI0/f;->t:J

    :cond_e
    iput-wide v10, v0, LI0/f;->u:J

    :cond_f
    iput v7, v0, LI0/f;->o:I

    iput v7, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, v15, LJ/D;->a:[B

    iget v3, v0, LI0/f;->r:I

    invoke-virtual {v0, v1, v2, v3}, LI0/f;->b(LJ/D;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v15, LJ/D;->a:[B

    invoke-static {v2}, Lb0/a;->k([B)LJ/B;

    move-result-object v3

    invoke-virtual {v3, v5}, LJ/B;->g(I)I

    move-result v5

    const v6, 0x40411bf2

    if-ne v5, v6, :cond_10

    move v5, v14

    goto :goto_7

    :cond_10
    move v5, v7

    :goto_7
    sget-object v6, Lb0/a;->n:[I

    invoke-static {v3, v6}, Lb0/a;->t(LJ/B;[I)I

    move-result v6

    add-int/lit8 v17, v6, 0x1

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v18

    if-eqz v18, :cond_1a

    move-wide/from16 v18, v10

    add-int/lit8 v10, v6, -0x1

    aget-byte v11, v2, v10

    shl-int/lit8 v11, v11, 0x8

    const v16, 0xffff

    and-int v11, v11, v16

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v11

    sget-object v11, LJ/W;->a:Ljava/lang/String;

    move v11, v7

    move/from16 v20, v13

    move/from16 v13, v16

    :goto_8
    if-ge v11, v10, :cond_11

    aget-byte v9, v2, v11

    and-int/lit16 v7, v9, 0xff

    shr-int/lit8 v7, v7, 0x4

    shr-int/lit8 v8, v13, 0xc

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v13, 0x4

    and-int v8, v8, v16

    sget-object v13, LJ/W;->i:[I

    aget v7, v13, v7

    xor-int/2addr v7, v8

    and-int v7, v7, v16

    and-int/lit8 v8, v9, 0xf

    shr-int/lit8 v9, v7, 0xc

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v7, v7, 0x4

    and-int v7, v7, v16

    aget v8, v13, v8

    xor-int/2addr v7, v8

    and-int v13, v7, v16

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    goto :goto_8

    :cond_11
    if-ne v6, v13, :cond_19

    invoke-virtual {v3, v12}, LJ/B;->g(I)I

    move-result v2

    if-eqz v2, :cond_14

    if-eq v2, v14, :cond_13

    if-ne v2, v12, :cond_12

    const/16 v2, 0x180

    :goto_9
    const/4 v6, 0x3

    goto :goto_a

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported base duration index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_13
    const/16 v2, 0x1e0

    goto :goto_9

    :cond_14
    const/16 v2, 0x200

    goto :goto_9

    :goto_a
    invoke-virtual {v3, v6}, LJ/B;->g(I)I

    move-result v7

    add-int/2addr v7, v14

    mul-int/2addr v7, v2

    invoke-virtual {v3, v12}, LJ/B;->g(I)I

    move-result v2

    if-eqz v2, :cond_17

    if-eq v2, v14, :cond_16

    if-ne v2, v12, :cond_15

    const v2, 0xbb80

    goto :goto_b

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported clock rate index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_16
    const v2, 0xac44

    goto :goto_b

    :cond_17
    const/16 v2, 0x7d00

    :goto_b
    invoke-virtual {v3}, LJ/B;->f()Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, LJ/B;->o(I)V

    :cond_18
    invoke-virtual {v3, v12}, LJ/B;->g(I)I

    move-result v4

    shl-int v4, v14, v4

    mul-int/2addr v4, v2

    int-to-long v8, v7

    int-to-long v12, v2

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v10, 0xf4240

    invoke-static/range {v8 .. v14}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move-wide v11, v6

    :goto_c
    move v9, v4

    goto :goto_d

    :cond_19
    const-string v1, "CRC check failed"

    invoke-static {v4, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1a
    const-string v1, "Only supports full channel mask-based audio presentation"

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_1b
    move-wide/from16 v18, v10

    const v4, -0x7fffffff

    move-wide/from16 v11, v18

    goto :goto_c

    :goto_d
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v2, v5, :cond_1c

    sget-object v6, Lb0/a;->o:[I

    invoke-static {v3, v6}, Lb0/a;->t(LJ/B;[I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    iget-object v2, v0, LI0/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v5, :cond_1d

    sget-object v5, Lb0/a;->p:[I

    invoke-static {v3, v5}, Lb0/a;->t(LJ/B;[I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1d
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lb0/a;->q:[I

    invoke-static {v3, v2}, Lb0/a;->t(LJ/B;[I)I

    move-result v2

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v4, v2

    add-int v10, v4, v17

    new-instance v6, Lb0/m;

    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    const/4 v8, 0x2

    invoke-direct/range {v6 .. v12}, Lb0/m;-><init>(Ljava/lang/String;IIIJ)V

    iget v2, v0, LI0/f;->p:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    invoke-virtual {v0, v6}, LI0/f;->d(Lb0/m;)V

    :cond_1f
    iput v10, v0, LI0/f;->n:I

    cmp-long v2, v11, v18

    if-nez v2, :cond_20

    const-wide/16 v11, 0x0

    :cond_20
    iput-wide v11, v0, LI0/f;->l:J

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, LJ/D;->N(I)V

    iget-object v2, v0, LI0/f;->g:Lb0/G;

    iget v3, v0, LI0/f;->r:I

    invoke-interface {v2, v3, v15}, Lb0/G;->a(ILJ/D;)V

    const/4 v2, 0x6

    iput v2, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_3
    const/4 v2, 0x6

    iget-object v4, v15, LJ/D;->a:[B

    invoke-virtual {v0, v1, v4, v2}, LI0/f;->b(LJ/D;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v15, LJ/D;->a:[B

    invoke-static {v2}, Lb0/a;->k([B)LJ/B;

    move-result-object v2

    invoke-virtual {v2, v5}, LJ/B;->o(I)V

    sget-object v4, Lb0/a;->r:[I

    invoke-static {v2, v4}, Lb0/a;->t(LJ/B;[I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, LI0/f;->r:I

    iget v4, v0, LI0/f;->i:I

    if-le v4, v2, :cond_21

    sub-int v2, v4, v2

    sub-int/2addr v4, v2

    iput v4, v0, LI0/f;->i:I

    iget v4, v1, LJ/D;->b:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, LJ/D;->N(I)V

    :cond_21
    iput v3, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_4
    move-wide/from16 v18, v10

    iget-object v2, v15, LJ/D;->a:[B

    iget v3, v0, LI0/f;->q:I

    invoke-virtual {v0, v1, v2, v3}, LI0/f;->b(LJ/D;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v15, LJ/D;->a:[B

    invoke-static {v2}, Lb0/a;->s([B)Lb0/m;

    move-result-object v2

    invoke-virtual {v0, v2}, LI0/f;->d(Lb0/m;)V

    iget v3, v2, Lb0/m;->d:I

    iput v3, v0, LI0/f;->n:I

    iget-wide v2, v2, Lb0/m;->e:J

    cmp-long v4, v2, v18

    if-eqz v4, :cond_22

    iput-wide v2, v0, LI0/f;->l:J

    :cond_22
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, LJ/D;->N(I)V

    iget-object v2, v0, LI0/f;->g:Lb0/G;

    iget v3, v0, LI0/f;->q:I

    invoke-interface {v2, v3, v15}, Lb0/G;->a(ILJ/D;)V

    const/4 v2, 0x6

    iput v2, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, v15, LJ/D;->a:[B

    invoke-virtual {v0, v1, v2, v6}, LI0/f;->b(LJ/D;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v15, LJ/D;->a:[B

    invoke-static {v2}, Lb0/a;->k([B)LJ/B;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, LJ/B;->o(I)V

    invoke-virtual {v2}, LJ/B;->f()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v7, 0xc

    goto :goto_10

    :cond_23
    move/from16 v7, v16

    :goto_10
    invoke-virtual {v2, v7}, LJ/B;->g(I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, LI0/f;->q:I

    const/4 v3, 0x3

    iput v3, v0, LI0/f;->h:I

    goto/16 :goto_0

    :pswitch_6
    move/from16 v20, v13

    iget-object v2, v15, LJ/D;->a:[B

    const/16 v7, 0x12

    invoke-virtual {v0, v1, v2, v7}, LI0/f;->b(LJ/D;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v14, v0, LI0/f;->v:Z

    iget-object v2, v15, LJ/D;->a:[B

    iget-object v8, v0, LI0/f;->m:LG/x;

    const/4 v9, -0x1

    const/16 v10, 0x3c

    if-nez v8, :cond_26

    iget-object v8, v0, LI0/f;->f:Ljava/lang/String;

    invoke-static {v2}, Lb0/a;->k([B)LJ/B;

    move-result-object v11

    invoke-virtual {v11, v10}, LJ/B;->o(I)V

    const/4 v13, 0x6

    invoke-virtual {v11, v13}, LJ/B;->g(I)I

    move-result v16

    sget-object v13, Lb0/a;->j:[I

    aget v13, v13, v16

    move/from16 v17, v5

    move/from16 v5, v20

    invoke-virtual {v11, v5}, LJ/B;->g(I)I

    move-result v16

    sget-object v5, Lb0/a;->k:[I

    aget v5, v5, v16

    move/from16 v18, v6

    invoke-virtual {v11, v3}, LJ/B;->g(I)I

    move-result v6

    sget-object v16, Lb0/a;->l:[I

    move/from16 v19, v3

    const/16 v3, 0x1d

    if-lt v6, v3, :cond_24

    move v3, v9

    goto :goto_11

    :cond_24
    aget v3, v16, v6

    mul-int/lit16 v3, v3, 0x3e8

    div-int/2addr v3, v12

    :goto_11
    const/16 v6, 0xa

    invoke-virtual {v11, v6}, LJ/B;->o(I)V

    invoke-virtual {v11, v12}, LJ/B;->g(I)I

    move-result v6

    if-lez v6, :cond_25

    move v6, v14

    goto :goto_12

    :cond_25
    const/4 v6, 0x0

    :goto_12
    add-int/2addr v13, v6

    new-instance v6, LG/w;

    invoke-direct {v6}, LG/w;-><init>()V

    iput-object v8, v6, LG/w;->a:Ljava/lang/String;

    iget-object v8, v0, LI0/f;->e:Ljava/lang/String;

    invoke-static {v8}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, LG/w;->n:Ljava/lang/String;

    const-string v8, "audio/vnd.dts"

    invoke-static {v8}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, LG/w;->o:Ljava/lang/String;

    iput v3, v6, LG/w;->i:I

    iput v13, v6, LG/w;->I:I

    iput v5, v6, LG/w;->K:I

    iput-object v4, v6, LG/w;->s:LG/s;

    iget-object v3, v0, LI0/f;->c:Ljava/lang/String;

    iput-object v3, v6, LG/w;->d:Ljava/lang/String;

    iget v3, v0, LI0/f;->d:I

    iput v3, v6, LG/w;->f:I

    new-instance v3, LG/x;

    invoke-direct {v3, v6}, LG/x;-><init>(LG/w;)V

    iput-object v3, v0, LI0/f;->m:LG/x;

    iput-boolean v14, v0, LI0/f;->s:Z

    goto :goto_13

    :cond_26
    move/from16 v19, v3

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_13
    invoke-static {v2}, Lb0/a;->g([B)I

    move-result v3

    iput v3, v0, LI0/f;->n:I

    const/16 v22, 0x0

    aget-byte v3, v2, v22

    const/4 v4, -0x2

    if-eq v3, v4, :cond_29

    if-eq v3, v9, :cond_28

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_27

    const/16 v20, 0x4

    aget-byte v3, v2, v20

    and-int/2addr v3, v14

    const/16 v21, 0x6

    shl-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v19

    :goto_14
    and-int/lit16 v2, v2, 0xfc

    :goto_15
    shr-int/2addr v2, v12

    or-int/2addr v2, v3

    goto :goto_17

    :cond_27
    const/16 v20, 0x4

    const/16 v21, 0x6

    aget-byte v3, v2, v19

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v21

    :goto_16
    and-int/2addr v2, v10

    goto :goto_15

    :cond_28
    const/16 v20, 0x4

    aget-byte v3, v2, v20

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v18

    goto :goto_16

    :cond_29
    const/16 v20, 0x4

    aget-byte v3, v2, v19

    and-int/2addr v3, v14

    const/16 v21, 0x6

    shl-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v20

    goto :goto_14

    :goto_17
    add-int/2addr v2, v14

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    iget-object v4, v0, LI0/f;->m:LG/x;

    iget v4, v4, LG/x;->L:I

    invoke-static {v4, v2, v3}, LJ/W;->L(IJ)J

    move-result-wide v2

    invoke-static {v2, v3}, LS1/e;->e(J)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, LI0/f;->l:J

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, LJ/D;->N(I)V

    iget-object v2, v0, LI0/f;->g:Lb0/G;

    invoke-interface {v2, v7, v15}, Lb0/G;->a(ILJ/D;)V

    const/4 v2, 0x6

    iput v2, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_2a
    :pswitch_7
    invoke-virtual {v1}, LJ/D;->a()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, LI0/f;->k:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, LI0/f;->k:I

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, LI0/f;->k:I

    invoke-static {v2}, Lb0/a;->i(I)I

    move-result v2

    iput v2, v0, LI0/f;->p:I

    if-eqz v2, :cond_2a

    iget v2, v0, LI0/f;->k:I

    invoke-virtual {v0, v2}, LI0/f;->c(I)V

    const/4 v2, 0x0

    iput v2, v0, LI0/f;->k:I

    iget-boolean v3, v0, LI0/f;->w:Z

    if-eqz v3, :cond_2b

    iget v3, v0, LI0/f;->p:I

    if-ne v3, v12, :cond_2b

    iput v2, v0, LI0/f;->i:I

    goto/16 :goto_0

    :cond_2b
    iget v3, v0, LI0/f;->p:I

    if-ne v3, v14, :cond_2c

    iput-boolean v2, v0, LI0/f;->w:Z

    :cond_2c
    const/4 v6, 0x3

    const/4 v5, 0x4

    if-eq v3, v6, :cond_2f

    if-ne v3, v5, :cond_2d

    goto :goto_18

    :cond_2d
    if-ne v3, v14, :cond_2e

    iput v14, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_2e
    iput v12, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_2f
    :goto_18
    iput v5, v0, LI0/f;->h:I

    goto/16 :goto_0

    :cond_30
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    iget p1, p0, LI0/f;->h:I

    if-eqz p1, :cond_0

    iput-wide p2, p0, LI0/f;->u:J

    return-void

    :cond_0
    iput-wide p2, p0, LI0/f;->t:J

    iput-wide v0, p0, LI0/f;->u:J

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 10

    iget v0, p0, LI0/f;->h:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LI0/f;->g:Lb0/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, LI0/f;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI0/f;->g:Lb0/G;

    iget-object v2, p0, LI0/f;->m:LG/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Lb0/G;->b(LG/x;)V

    iput-boolean v1, p0, LI0/f;->s:Z

    :cond_0
    iget-wide v4, p0, LI0/f;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-object v3, p0, LI0/f;->g:Lb0/G;

    iget v7, p0, LI0/f;->o:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lb0/G;->f(JIIILb0/F;)V

    iget-wide v2, p0, LI0/f;->t:J

    iget-wide v4, p0, LI0/f;->l:J

    add-long/2addr v2, v4

    iput-wide v2, p0, LI0/f;->t:J

    :cond_1
    iput v1, p0, LI0/f;->o:I

    iput v1, p0, LI0/f;->i:I

    iput v1, p0, LI0/f;->k:I

    iput v1, p0, LI0/f;->j:I

    iput v1, p0, LI0/f;->h:I

    :cond_2
    return-void
.end method

.method public final j(Lb0/p;LI0/J;)V
    .locals 1

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v0, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v0, p0, LI0/f;->f:Ljava/lang/String;

    invoke-virtual {p2}, LI0/J;->b()V

    iget p2, p2, LI0/J;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    iput-object p1, p0, LI0/f;->g:Lb0/G;

    return-void
.end method
