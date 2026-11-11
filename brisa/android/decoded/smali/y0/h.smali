.class public final Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:Ly0/m;

.field public final b:LG/x;

.field public final c:Ljava/util/ArrayList;

.field public final d:LJ/D;

.field public e:[B

.field public f:Lb0/G;

.field public g:Lb0/p;

.field public h:Lb0/x;

.field public i:I

.field public j:I

.field public k:[J

.field public l:J


# direct methods
.method public constructor <init>(Ly0/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/h;->a:Ly0/m;

    sget-object p1, LJ/W;->b:[B

    iput-object p1, p0, Ly0/h;->e:[B

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Ly0/h;->d:LJ/D;

    const/4 p1, 0x0

    iput-object p1, p0, Ly0/h;->b:LG/x;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly0/h;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ly0/h;->j:I

    sget-object p1, LJ/W;->c:[J

    iput-object p1, p0, Ly0/h;->k:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ly0/h;->l:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Ly0/h;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly0/h;->a:Ly0/m;

    invoke-interface {v0}, Ly0/m;->reset()V

    iput v1, p0, Ly0/h;->j:I

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 7

    iget v0, p0, Ly0/h;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iput-object p1, p0, Ly0/h;->g:Lb0/p;

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    iput-object v0, p0, Ly0/h;->f:Lb0/G;

    iget-object v3, p0, Ly0/h;->b:LG/x;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Lb0/G;->b(LG/x;)V

    invoke-interface {p1}, Lb0/p;->e()V

    new-instance v0, Lb0/x;

    new-array v3, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    new-array v6, v2, [J

    aput-wide v4, v6, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v4, v5, v3, v6}, Lb0/x;-><init>(J[J[J)V

    iput-object v0, p0, Ly0/h;->h:Lb0/x;

    invoke-interface {p1, v0}, Lb0/p;->c(Lb0/z;)V

    :cond_1
    iput v2, p0, Ly0/h;->j:I

    return-void
.end method

.method public final c(JJ)V
    .locals 1

    iget p1, p0, Ly0/h;->j:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LF1/i;->o(Z)V

    iput-wide p3, p0, Ly0/h;->l:J

    iget p1, p0, Ly0/h;->j:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Ly0/h;->j:I

    :cond_1
    iget p1, p0, Ly0/h;->j:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Ly0/h;->j:I

    :cond_2
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Ly0/h;->j:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    iget v2, v1, Ly0/h;->j:I

    const/4 v5, 0x2

    const/16 v6, 0x400

    const-wide/16 v7, -0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, LS1/e;->e(J)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    iget-object v9, v1, Ly0/h;->e:[B

    array-length v9, v9

    if-le v2, v9, :cond_2

    new-array v2, v2, [B

    iput-object v2, v1, Ly0/h;->e:[B

    :cond_2
    iput v4, v1, Ly0/h;->i:I

    iput v5, v1, Ly0/h;->j:I

    :cond_3
    iget v2, v1, Ly0/h;->j:I

    iget-object v9, v1, Ly0/h;->c:Ljava/util/ArrayList;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x4

    const/4 v13, -0x1

    if-ne v2, v5, :cond_b

    iget-object v2, v1, Ly0/h;->e:[B

    array-length v5, v2

    iget v14, v1, Ly0/h;->i:I

    if-ne v5, v14, :cond_4

    array-length v5, v2

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Ly0/h;->e:[B

    :cond_4
    iget-object v2, v1, Ly0/h;->e:[B

    iget v5, v1, Ly0/h;->i:I

    array-length v14, v2

    sub-int/2addr v14, v5

    invoke-interface {v0, v2, v5, v14}, LG/o;->read([BII)I

    move-result v2

    if-eq v2, v13, :cond_5

    iget v5, v1, Ly0/h;->i:I

    add-int/2addr v5, v2

    iput v5, v1, Ly0/h;->i:I

    :cond_5
    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v14

    cmp-long v5, v14, v7

    if-eqz v5, :cond_6

    iget v5, v1, Ly0/h;->i:I

    move/from16 p2, v4

    int-to-long v4, v5

    cmp-long v4, v4, v14

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_6
    move/from16 p2, v4

    :goto_2
    if-ne v2, v13, :cond_c

    :cond_7
    :try_start_0
    iget-wide v4, v1, Ly0/h;->l:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_8

    new-instance v2, Ly0/l;

    invoke-direct {v2, v4, v5, v3}, Ly0/l;-><init>(JZ)V

    :goto_3
    move-object/from16 v18, v2

    goto :goto_4

    :cond_8
    sget-object v2, Ly0/l;->c:Ly0/l;

    goto :goto_3

    :goto_4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iget-object v14, v1, Ly0/h;->a:Ly0/m;

    iget-object v15, v1, Ly0/h;->e:[B

    iget v4, v1, Ly0/h;->i:I

    new-instance v5, LM0/K;

    const/16 v6, 0x16

    invoke-direct {v5, v1, v2, v6}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object/from16 v19, v5

    invoke-interface/range {v14 .. v19}, Ly0/m;->l([BIILy0/l;LJ/k;)V

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, v1, Ly0/h;->k:[J

    move/from16 v4, p2

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    iget-object v5, v1, Ly0/h;->k:[J

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly0/g;

    iget-wide v14, v6, Ly0/g;->e:J

    aput-wide v14, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_a

    iget-object v4, v1, Ly0/h;->f:Lb0/G;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lb0/G;->d(J)V

    iget-object v4, v1, Ly0/h;->h:Lb0/x;

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iput-wide v5, v4, Lb0/x;->c:J

    iget-object v2, v1, Ly0/h;->g:Lb0/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Ly0/h;->h:Lb0/x;

    invoke-interface {v2, v4}, Lb0/p;->c(Lb0/z;)V

    :cond_a
    sget-object v2, LJ/W;->b:[B

    iput-object v2, v1, Ly0/h;->e:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput v12, v1, Ly0/h;->j:I

    goto :goto_7

    :goto_6
    const-string v2, "SubtitleParser failed."

    invoke-static {v0, v2}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_b
    move/from16 p2, v4

    :cond_c
    :goto_7
    iget v2, v1, Ly0/h;->j:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_10

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v4

    cmp-long v2, v4, v7

    if-eqz v2, :cond_d

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, LS1/e;->e(J)I

    move-result v6

    goto :goto_8

    :cond_d
    const/16 v6, 0x400

    :goto_8
    invoke-interface {v0, v6}, Lb0/o;->a(I)I

    move-result v0

    if-ne v0, v13, :cond_10

    iget-wide v4, v1, Ly0/h;->l:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_e

    move/from16 v0, p2

    goto :goto_9

    :cond_e
    iget-object v0, v1, Ly0/h;->k:[J

    invoke-static {v0, v4, v5, v3}, LJ/W;->d([JJZ)I

    move-result v0

    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/g;

    invoke-virtual {v1, v2}, Ly0/h;->g(Ly0/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    iput v12, v1, Ly0/h;->j:I

    :cond_10
    iget v0, v1, Ly0/h;->j:I

    if-ne v0, v12, :cond_11

    return v13

    :cond_11
    return p2
.end method

.method public final g(Ly0/g;)V
    .locals 8

    iget-object v0, p0, Ly0/h;->f:Lb0/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Ly0/g;->f:[B

    array-length v5, v0

    iget-object v1, p0, Ly0/h;->d:LJ/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, LJ/D;->L([BI)V

    iget-object v0, p0, Ly0/h;->f:Lb0/G;

    invoke-interface {v0, v5, v1}, Lb0/G;->a(ILJ/D;)V

    iget-object v1, p0, Ly0/h;->f:Lb0/G;

    iget-wide v2, p1, Ly0/g;->e:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lb0/G;->f(JIIILb0/F;)V

    return-void
.end method
