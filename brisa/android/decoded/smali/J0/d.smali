.class public final LJ0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public a:Lb0/p;

.field public b:Lb0/G;

.field public c:I

.field public d:J

.field public e:LJ0/b;

.field public f:I

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LJ0/d;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LJ0/d;->d:J

    const/4 v2, -0x1

    iput v2, p0, LJ0/d;->f:I

    iput-wide v0, p0, LJ0/d;->g:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    iput-object p1, p0, LJ0/d;->a:Lb0/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, LJ0/d;->b:Lb0/G;

    invoke-interface {p1}, Lb0/p;->e()V

    return-void
.end method

.method public final c(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, LJ0/d;->c:I

    iget-object p1, p0, LJ0/d;->e:LJ0/b;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3, p4}, LJ0/b;->c(J)V

    :cond_1
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 0

    invoke-static {p1}, LJ0/g;->a(Lb0/o;)Z

    move-result p1

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LJ0/d;->b:Lb0/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget v2, v0, LJ0/d;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_18

    const/16 v7, 0x8

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    if-eq v2, v5, :cond_16

    const/4 v11, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v11, :cond_3

    if-ne v2, v4, :cond_2

    iget-wide v7, v0, LJ0/d;->g:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, LF1/i;->o(Z)V

    iget-wide v4, v0, LJ0/d;->g:J

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, LJ0/d;->e:LJ0/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, v4, v5}, LJ0/b;->a(Lb0/o;J)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    return v6

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_3
    invoke-interface {v1}, Lb0/o;->o()V

    new-instance v2, LJ/D;

    invoke-direct {v2, v7}, LJ/D;-><init>(I)V

    const v3, 0x64617461

    invoke-static {v3, v1, v2}, LJ0/g;->b(ILb0/o;LJ/D;)LJ0/f;

    move-result-object v2

    invoke-interface {v1, v7}, Lb0/o;->p(I)V

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v2, LJ0/f;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, LJ0/d;->f:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v7, v0, LJ0/d;->d:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    const-wide v11, 0xffffffffL

    cmp-long v5, v2, v11

    if-nez v5, :cond_4

    move-wide v2, v7

    :cond_4
    iget v5, v0, LJ0/d;->f:I

    int-to-long v7, v5

    add-long/2addr v7, v2

    iput-wide v7, v0, LJ0/d;->g:J

    invoke-interface {v1}, Lb0/o;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_5

    iget-wide v7, v0, LJ0/d;->g:J

    cmp-long v3, v7, v1

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Data exceeds input length: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, LJ0/d;->g:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, LJ0/d;->g:J

    :cond_5
    iget-object v1, v0, LJ0/d;->e:LJ0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, LJ0/d;->f:I

    iget-wide v7, v0, LJ0/d;->g:J

    invoke-interface {v1, v2, v7, v8}, LJ0/b;->b(IJ)V

    iput v4, v0, LJ0/d;->c:I

    return v6

    :cond_6
    new-instance v2, LJ/D;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LJ/D;-><init>(I)V

    const v4, 0x666d7420

    invoke-static {v4, v1, v2}, LJ0/g;->b(ILb0/o;LJ/D;)LJ0/f;

    move-result-object v4

    iget-wide v7, v4, LJ0/f;->b:J

    const-wide/16 v9, 0x10

    cmp-long v4, v7, v9

    if-ltz v4, :cond_7

    move v4, v5

    goto :goto_1

    :cond_7
    move v4, v6

    :goto_1
    invoke-static {v4}, LF1/i;->o(Z)V

    iget-object v4, v2, LJ/D;->a:[B

    invoke-interface {v1, v6, v4, v3}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v6}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->t()I

    move-result v4

    invoke-virtual {v2}, LJ/D;->t()I

    move-result v14

    invoke-virtual {v2}, LJ/D;->s()I

    move-result v15

    invoke-virtual {v2}, LJ/D;->s()I

    invoke-virtual {v2}, LJ/D;->t()I

    move-result v16

    invoke-virtual {v2}, LJ/D;->t()I

    move-result v2

    long-to-int v7, v7

    sub-int/2addr v7, v3

    const v3, 0xfffe

    if-lez v7, :cond_f

    new-array v8, v7, [B

    invoke-interface {v1, v6, v8, v7}, Lb0/o;->l(I[BI)V

    if-ne v4, v3, :cond_e

    const/16 v9, 0x18

    if-ne v7, v9, :cond_e

    new-instance v4, LJ/D;

    invoke-direct {v4, v8}, LJ/D;-><init>([B)V

    invoke-virtual {v4}, LJ/D;->t()I

    invoke-virtual {v4}, LJ/D;->t()I

    move-result v7

    if-eqz v7, :cond_9

    if-ne v7, v2, :cond_8

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "validBits ( "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")  != bitsPerSample( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") are not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_9
    :goto_2
    invoke-virtual {v4}, LJ/D;->s()I

    move-result v7

    shr-int/lit8 v9, v7, 0x12

    if-nez v9, :cond_d

    if-eqz v7, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v9

    if-ne v9, v14, :cond_d

    :cond_a
    invoke-virtual {v4}, LJ/D;->t()I

    move-result v9

    const/16 v10, 0xe

    new-array v12, v10, [B

    invoke-virtual {v4, v6, v12, v10}, LJ/D;->k(I[BI)V

    sget-object v4, LJ0/g;->a:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, LJ0/g;->b:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, "invalid wav format extension guid"

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_c
    :goto_3
    move/from16 v19, v7

    move-object/from16 v18, v8

    move v13, v9

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Channel mask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid or does not match channel count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_e
    :goto_4
    move v13, v4

    move/from16 v19, v6

    move-object/from16 v18, v8

    goto :goto_5

    :cond_f
    sget-object v8, LJ/W;->b:[B

    goto :goto_4

    :goto_5
    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v7

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v4, v7

    invoke-interface {v1, v4}, Lb0/o;->p(I)V

    new-instance v23, LJ0/e;

    move/from16 v17, v2

    move-object/from16 v12, v23

    invoke-direct/range {v12 .. v19}, LJ0/e;-><init>(IIIII[BI)V

    move/from16 v1, v17

    const/16 v2, 0x11

    if-ne v13, v2, :cond_10

    new-instance v1, LJ0/a;

    iget-object v2, v0, LJ0/d;->a:Lb0/p;

    iget-object v3, v0, LJ0/d;->b:Lb0/G;

    invoke-direct {v1, v2, v3, v12}, LJ0/a;-><init>(Lb0/p;Lb0/G;LJ0/e;)V

    iput-object v1, v0, LJ0/d;->e:LJ0/b;

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x6

    if-ne v13, v2, :cond_11

    new-instance v20, LJ0/c;

    iget-object v1, v0, LJ0/d;->a:Lb0/p;

    iget-object v2, v0, LJ0/d;->b:Lb0/G;

    const-string v24, "audio/g711-alaw"

    const/16 v25, -0x1

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v25}, LJ0/c;-><init>(Lb0/p;Lb0/G;LJ0/e;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, LJ0/d;->e:LJ0/b;

    goto :goto_8

    :cond_11
    move-object/from16 v23, v12

    const/4 v2, 0x7

    if-ne v13, v2, :cond_12

    new-instance v20, LJ0/c;

    iget-object v1, v0, LJ0/d;->a:Lb0/p;

    iget-object v2, v0, LJ0/d;->b:Lb0/G;

    const-string v24, "audio/g711-mlaw"

    const/16 v25, -0x1

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v20 .. v25}, LJ0/c;-><init>(Lb0/p;Lb0/G;LJ0/e;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, LJ0/d;->e:LJ0/b;

    goto :goto_8

    :cond_12
    if-eq v13, v5, :cond_14

    if-eq v13, v11, :cond_13

    if-eq v13, v3, :cond_14

    move/from16 v25, v6

    goto :goto_7

    :cond_13
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, LJ/W;->t(ILjava/nio/ByteOrder;)I

    move-result v1

    :goto_6
    move/from16 v25, v1

    goto :goto_7

    :cond_14
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2}, LJ/W;->v(ILjava/nio/ByteOrder;)I

    move-result v1

    goto :goto_6

    :goto_7
    if-eqz v25, :cond_15

    new-instance v20, LJ0/c;

    iget-object v1, v0, LJ0/d;->a:Lb0/p;

    iget-object v2, v0, LJ0/d;->b:Lb0/G;

    const-string v24, "audio/raw"

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v20 .. v25}, LJ0/c;-><init>(Lb0/p;Lb0/G;LJ0/e;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, LJ0/d;->e:LJ0/b;

    :goto_8
    iput v11, v0, LJ0/d;->c:I

    return v6

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported WAV format type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_16
    new-instance v2, LJ/D;

    invoke-direct {v2, v7}, LJ/D;-><init>(I)V

    invoke-static {v1, v2}, LJ0/f;->a(Lb0/o;LJ/D;)LJ0/f;

    move-result-object v3

    iget v4, v3, LJ0/f;->a:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_17

    invoke-interface {v1}, Lb0/o;->o()V

    goto :goto_9

    :cond_17
    invoke-interface {v1, v7}, Lb0/o;->z(I)V

    invoke-virtual {v2, v6}, LJ/D;->N(I)V

    iget-object v4, v2, LJ/D;->a:[B

    invoke-interface {v1, v6, v4, v7}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2}, LJ/D;->p()J

    move-result-wide v9

    iget-wide v2, v3, LJ0/f;->b:J

    long-to-int v2, v2

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    :goto_9
    iput-wide v9, v0, LJ0/d;->d:J

    iput v8, v0, LJ0/d;->c:I

    return v6

    :cond_18
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_19

    move v2, v5

    goto :goto_a

    :cond_19
    move v2, v6

    :goto_a
    invoke-static {v2}, LF1/i;->o(Z)V

    iget v2, v0, LJ0/d;->f:I

    if-eq v2, v3, :cond_1a

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    iput v4, v0, LJ0/d;->c:I

    return v6

    :cond_1a
    invoke-static {v1}, LJ0/g;->a(Lb0/o;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Lb0/o;->x()J

    move-result-wide v2

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lb0/o;->p(I)V

    iput v5, v0, LJ0/d;->c:I

    return v6

    :cond_1b
    const-string v1, "Unsupported or unrecognized wav file type."

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1
.end method
