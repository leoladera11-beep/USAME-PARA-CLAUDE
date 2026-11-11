.class public final LL0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LL0/d;

.field public final b:LB0/b;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:LZ0/i;

.field public g:J

.field public h:J

.field public i:Z

.field public j:J

.field public k:J

.field public l:J

.field public m:Lu1/z0;

.field public n:J


# direct methods
.method public constructor <init>(LL0/d;LB0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/f;->a:LL0/d;

    iput-object p2, p0, LL0/f;->b:LB0/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LL0/f;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LL0/f;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LL0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, LL0/f;->i:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p1}, Lu1/z0;->a(Ljava/lang/Long;Ljava/lang/Long;)Lu1/z0;

    move-result-object p1

    iput-object p1, p0, LL0/f;->m:Lu1/z0;

    iput-wide v0, p0, LL0/f;->n:J

    new-instance p1, LZ0/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p1, LZ0/i;->e:Ljava/lang/Object;

    iput-object p1, p0, LL0/f;->f:LZ0/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-boolean v0, p0, LL0/f;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LL0/f;->d()V

    return-void

    :cond_0
    iget-object v0, p0, LL0/f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LL0/f;->b:LB0/b;

    invoke-static {v0, v1}, LL0/b;->l(Ljava/util/ArrayList;LB0/b;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/lit8 v2, v1, 0x8

    iget-wide v3, p0, LL0/f;->k:J

    iget-wide v5, p0, LL0/f;->l:J

    sub-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v2, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    iget-object v2, p0, LL0/f;->m:Lu1/z0;

    iget-object v2, v2, Lu1/z0;->f:Lu1/E;

    invoke-virtual {v2}, Lu1/E;->d()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {p0, v7, v8, v0}, LL0/f;->e(JLjava/nio/ByteBuffer;)V

    iget-wide v7, p0, LL0/f;->k:J

    iget-wide v9, p0, LL0/f;->l:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    :cond_2
    iget-wide v5, p0, LL0/f;->l:J

    iget-object v2, p0, LL0/f;->a:LL0/d;

    invoke-virtual {v2, v5, v6}, LL0/d;->c(J)V

    invoke-virtual {v2, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iget-object v7, p0, LL0/f;->m:Lu1/z0;

    iget-object v7, v7, Lu1/z0;->f:Lu1/E;

    invoke-virtual {v7}, Lu1/E;->d()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v9, v5

    sub-long/2addr v7, v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v1, v7, v11

    if-gez v1, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, LF1/i;->o(Z)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    long-to-int v3, v7

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "free"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iput-wide v5, p0, LL0/f;->k:J

    iget-wide v3, p0, LL0/f;->j:J

    sub-long v3, v5, v3

    invoke-virtual {p0, v3, v4}, LL0/f;->f(J)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lu1/z0;->a(Ljava/lang/Long;Ljava/lang/Long;)Lu1/z0;

    move-result-object v0

    iput-object v0, p0, LL0/f;->m:Lu1/z0;

    iget-object v0, v2, LL0/d;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v9, v10}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public final b()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, LL0/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL0/h;

    invoke-virtual {v0, v3}, LL0/f;->g(LL0/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, v0, LL0/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL0/h;

    invoke-virtual {v0, v3}, LL0/f;->g(LL0/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, LL0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0}, LL0/f;->a()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, LK/b;

    const/16 v4, 0x8

    new-array v5, v4, [B

    const/4 v7, 0x7

    :goto_2
    if-ltz v7, :cond_3

    const-wide/16 v8, 0x0

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    const-string v7, "auxiliary.tracks.offset"

    const/16 v8, 0x4e

    invoke-direct {v2, v7, v5, v1, v8}, LK/b;-><init>(Ljava/lang/String;[BII)V

    iget-object v5, v0, LL0/f;->b:LB0/b;

    invoke-virtual {v5, v2}, LB0/b;->b(LG/U;)V

    invoke-static {}, LL0/b;->g()Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, LB0/b;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, LB0/b;-><init>(I)V

    iget-object v12, v5, LB0/b;->h:Ljava/lang/Object;

    check-cast v12, LK/i;

    invoke-virtual {v10, v12}, LB0/b;->b(LG/U;)V

    new-instance v12, LK/b;

    const/4 v13, 0x1

    new-array v14, v13, [B

    aput-byte v13, v14, v1

    const/16 v15, 0x4b

    const-string v6, "auxiliary.tracks.interleaved"

    invoke-direct {v12, v6, v14, v1, v15}, LK/b;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {v10, v12}, LB0/b;->b(LG/U;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v12, v6, 0x2

    new-array v12, v12, [B

    aput-byte v13, v12, v1

    int-to-byte v14, v6

    aput-byte v14, v12, v13

    move v14, v1

    :goto_3
    if-ge v14, v6, :cond_8

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LL0/h;

    iget-object v8, v15, LL0/h;->b:LG/x;

    iget v8, v8, LG/x;->h:I

    if-eq v8, v13, :cond_7

    if-eq v8, v11, :cond_6

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5

    const/4 v11, 0x4

    if-ne v8, v11, :cond_4

    const/4 v11, 0x3

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported auxiliary track type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, LL0/h;->b:LG/x;

    iget v3, v3, LG/x;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v11, 0x2

    goto :goto_4

    :cond_6
    move v11, v13

    goto :goto_4

    :cond_7
    move v11, v1

    :goto_4
    add-int/lit8 v8, v14, 0x2

    int-to-byte v11, v11

    aput-byte v11, v12, v8

    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x4e

    const/4 v11, 0x2

    goto :goto_3

    :cond_8
    new-instance v6, LK/b;

    const-string v8, "auxiliary.tracks.map"

    invoke-direct {v6, v8, v12, v1, v1}, LK/b;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {v10, v6}, LB0/b;->b(LG/U;)V

    invoke-static {v3, v10}, LL0/b;->l(Ljava/util/ArrayList;LB0/b;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    add-int/2addr v8, v6

    int-to-long v10, v8

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v12, "axte"

    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-wide/16 v14, 0x10

    add-long/2addr v10, v14

    invoke-virtual {v6, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    filled-new-array {v6, v9, v3}, [Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, LF1/i;->p([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v8, v6

    new-instance v6, LK/b;

    new-array v10, v4, [B

    const/4 v11, 0x7

    :goto_5
    const-wide/16 v14, 0xff

    if-ltz v11, :cond_9

    and-long/2addr v14, v8

    long-to-int v12, v14

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    shr-long/2addr v8, v4

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_9
    const-string v8, "auxiliary.tracks.length"

    const/16 v9, 0x4e

    invoke-direct {v6, v8, v10, v1, v9}, LK/b;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {v5, v6}, LB0/b;->b(LG/U;)V

    invoke-virtual {v0}, LL0/f;->a()V

    iget-object v6, v5, LB0/b;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, LL0/f;->a:LL0/d;

    iget-object v6, v2, LL0/d;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    new-instance v10, LK/b;

    new-array v11, v4, [B

    const/16 v16, 0x7

    :goto_6
    if-ltz v16, :cond_a

    move-wide/from16 v17, v14

    and-long v13, v8, v17

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v11, v16

    shr-long/2addr v8, v4

    add-int/lit8 v16, v16, -0x1

    move-wide/from16 v14, v17

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    const/16 v9, 0x4e

    invoke-direct {v10, v7, v11, v1, v9}, LK/b;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {v5, v10}, LB0/b;->b(LG/U;)V

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v0}, LL0/f;->a()V

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-nez v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-static {v1}, LF1/i;->o(Z)V

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, LL0/d;->c(J)V

    invoke-virtual {v2, v3}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    :cond_c
    :goto_7
    return-void
.end method

.method public final c(J)V
    .locals 6

    iget-boolean v0, p0, LL0/f;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LL0/f;->l:J

    add-long v2, v0, p1

    iget-wide v4, p0, LL0/f;->k:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const v2, 0x3e4ccccd    # 0.2f

    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    const-wide/32 v2, 0x7a120

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide p1, p0, LL0/f;->k:J

    add-long/2addr p1, v0

    iget-object v0, p0, LL0/f;->m:Lu1/z0;

    iget-object v0, v0, Lu1/z0;->f:Lu1/E;

    invoke-virtual {v0}, Lu1/E;->d()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v0, p0, LL0/f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LL0/f;->b:LB0/b;

    invoke-static {v0, v1}, LL0/b;->l(Ljava/util/ArrayList;LB0/b;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LL0/f;->e(JLjava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 9

    iget-object v0, p0, LL0/f;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LL0/f;->b:LB0/b;

    invoke-static {v0, v1}, LL0/b;->l(Ljava/util/ArrayList;LB0/b;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget-wide v4, p0, LL0/f;->h:J

    iget-wide v6, p0, LL0/f;->g:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    const-string v3, "free"

    const-wide/16 v4, 0x8

    iget-object v8, p0, LL0/f;->a:LL0/d;

    if-gtz v2, :cond_0

    invoke-virtual {v8, v6, v7}, LL0/d;->c(J)V

    invoke-virtual {v8, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v0, p0, LL0/f;->h:J

    iget-object v2, v8, LL0/d;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, LF1/i;->u(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, LL0/f;->i:Z

    iget-wide v6, p0, LL0/f;->l:J

    iput-wide v6, p0, LL0/f;->k:J

    invoke-virtual {v8, v6, v7}, LL0/d;->c(J)V

    invoke-virtual {v8, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v6, p0, LL0/f;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v6, p0, LL0/f;->k:J

    int-to-long v1, v1

    add-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lu1/z0;->a(Ljava/lang/Long;Ljava/lang/Long;)Lu1/z0;

    move-result-object v0

    iput-object v0, p0, LL0/f;->m:Lu1/z0;

    iget-wide v0, p0, LL0/f;->h:J

    iget-wide v6, p0, LL0/f;->g:J

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3, v0}, LF1/i;->u(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, LL0/f;->g:J

    invoke-virtual {v8, v1, v2}, LL0/d;->c(J)V

    invoke-virtual {v8, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    iget-wide v0, p0, LL0/f;->l:J

    iget-wide v2, p0, LL0/f;->j:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LL0/f;->f(J)V

    return-void
.end method

.method public final e(JLjava/nio/ByteBuffer;)V
    .locals 5

    iget-object v0, p0, LL0/f;->m:Lu1/z0;

    iget-object v0, v0, Lu1/z0;->f:Lu1/E;

    invoke-virtual {v0}, Lu1/E;->d()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-wide v3, p0, LL0/f;->k:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v0, p0, LL0/f;->a:LL0/d;

    invoke-virtual {v0, p1, p2}, LL0/d;->c(J)V

    const-string v1, "free"

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, LF1/i;->u(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    iput-wide v0, p0, LL0/f;->k:J

    iget-wide v2, p0, LL0/f;->j:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LL0/f;->f(J)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    int-to-long v1, p3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lu1/z0;->a(Ljava/lang/Long;Ljava/lang/Long;)Lu1/z0;

    move-result-object p1

    iput-object p1, p0, LL0/f;->m:Lu1/z0;

    return-void
.end method

.method public final f(J)V
    .locals 4

    iget-wide v0, p0, LL0/f;->j:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iget-object v2, p0, LL0/f;->a:LL0/d;

    invoke-virtual {v2, v0, v1}, LL0/d;->c(J)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v0}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public final g(LL0/h;)V
    .locals 14

    iget-object v0, p0, LL0/f;->a:LL0/d;

    iget-object v1, v0, LL0/d;->f:Ljava/nio/channels/FileChannel;

    iget-object v2, p1, LL0/h;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget-object v4, p1, LL0/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, LL0/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    const-wide/16 v8, 0x0

    if-nez v3, :cond_4

    invoke-virtual {v0, v8, v9}, LL0/d;->c(J)V

    invoke-static {}, LL0/b;->g()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iget-boolean v3, p0, LL0/f;->i:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    iput-wide v10, p0, LL0/f;->g:J

    const v3, 0x61a80

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v5, "free"

    invoke-static {v5, v3}, LF1/i;->u(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    iput-wide v10, p0, LL0/f;->h:J

    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    iput-wide v10, p0, LL0/f;->j:J

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v10, "mdat"

    invoke-virtual {v10, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-wide/16 v10, 0x10

    invoke-virtual {v3, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, LL0/d;->write(Ljava/nio/ByteBuffer;)I

    iget-wide v12, p0, LL0/f;->j:J

    add-long/2addr v12, v10

    iput-wide v12, p0, LL0/f;->l:J

    iget-boolean v3, p0, LL0/f;->i:Z

    if-eqz v3, :cond_3

    const-wide v12, 0x7fffffffffffffffL

    :cond_3
    iput-wide v12, p0, LL0/f;->k:J

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v8, v9}, LL0/f;->c(J)V

    iget-object v3, p1, LL0/h;->d:Ljava/util/ArrayList;

    iget-wide v8, p0, LL0/f;->l:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p1, LL0/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL0/c;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    iget-object v8, p1, LL0/h;->b:LG/x;

    iget-object v9, v8, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "video/dolby-vision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, p0, LL0/f;->f:LZ0/i;

    if-eqz v10, :cond_7

    invoke-static {v8}, LL0/b;->h(LG/x;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_e

    goto :goto_2

    :cond_7
    const-string v8, "video/avc"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "video/hevc"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_8
    :goto_2
    sget-object v8, LL0/a;->a:LL0/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-static {v5}, Lcom/brisa/local/d0;->n(Ljava/nio/ByteBuffer;)Lu1/C0;

    move-result-object v8

    move v9, v6

    move v10, v9

    :goto_3
    iget v12, v8, Lu1/C0;->h:I

    if-ge v9, v12, :cond_a

    invoke-virtual {v8, v9}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v10, :cond_b

    move v9, v7

    goto :goto_4

    :cond_b
    move v9, v6

    :goto_4
    invoke-static {v9}, LF1/i;->g(Z)V

    iget-object v9, v11, LZ0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    if-ge v9, v10, :cond_c

    iget-object v9, v11, LZ0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, v11, LZ0/i;->e:Ljava/lang/Object;

    :cond_c
    iget-object v9, v11, LZ0/i;->e:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v12, v11, LZ0/i;->e:Ljava/lang/Object;

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v10, v6

    :goto_5
    iget v12, v8, Lu1/C0;->h:I

    if-ge v10, v12, :cond_d

    invoke-virtual {v8, v10}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v5, v9

    :goto_6
    new-instance v8, LL0/c;

    iget-wide v9, v3, LL0/c;->a:J

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    iget v3, v3, LL0/c;->c:I

    invoke-direct {v8, v12, v3, v9, v10}, LL0/c;-><init>(IIJ)V

    move-object v3, v8

    :cond_e
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v8, v9}, LL0/f;->c(J)V

    iget-wide v8, p0, LL0/f;->l:J

    invoke-virtual {v0, v8, v9}, LL0/d;->c(J)V

    iget-wide v8, p0, LL0/f;->l:J

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v8, v12

    iput-wide v8, p0, LL0/f;->l:J

    iget-object v5, v11, LZ0/i;->e:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p1, LL0/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v0, p0, LL0/f;->l:J

    iget-wide v2, p0, LL0/f;->k:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_f

    move v6, v7

    :cond_f
    invoke-static {v6}, LF1/i;->o(Z)V

    return-void
.end method

.method public final h(LL0/h;Ljava/nio/ByteBuffer;LL0/c;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v1, LL0/h;->b:LG/x;

    iget-object v4, v3, LG/x;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_c

    iget-object v4, v1, LL0/h;->j:[B

    if-nez v4, :cond_c

    iget-object v4, v3, LG/x;->p:Ljava/lang/String;

    const-string v8, "video/av01"

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, LK/t;->r(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v9, 0x0

    move-object v10, v9

    move-object v11, v10

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "No sequence header available."

    if-eqz v12, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LK/w;

    iget v14, v12, LK/w;->a:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_1

    invoke-static {v12}, Le2/d;->j(LK/w;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v14, v6, :cond_0

    if-nez v10, :cond_0

    invoke-static {v12}, Le2/d;->j(LK/w;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v14, -0x7f

    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v14, LK/x;

    invoke-direct {v14, v12}, LK/x;-><init>(LK/w;)V
    :try_end_0
    .catch LK/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v14, v9

    :goto_1
    invoke-static {v14, v13}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v14, LK/x;->g:I

    shl-int/2addr v12, v15

    iget v13, v14, LK/x;->h:I

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v12, v14, LK/x;->i:I

    if-lez v12, :cond_2

    const/16 v12, 0x80

    goto :goto_2

    :cond_2
    move v12, v7

    :goto_2
    iget-boolean v13, v14, LK/x;->l:Z

    if-eqz v13, :cond_3

    const/16 v13, 0x40

    goto :goto_3

    :cond_3
    move v13, v7

    :goto_3
    or-int/2addr v12, v13

    iget-boolean v13, v14, LK/x;->m:Z

    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_4

    :cond_4
    move v13, v7

    :goto_4
    or-int/2addr v12, v13

    iget-boolean v13, v14, LK/x;->n:Z

    const/16 v15, 0x10

    if-eqz v13, :cond_5

    move v13, v15

    goto :goto_5

    :cond_5
    move v13, v7

    :goto_5
    or-int/2addr v12, v13

    iget-boolean v13, v14, LK/x;->o:Z

    if-eqz v13, :cond_6

    const/16 v13, 0x8

    goto :goto_6

    :cond_6
    move v13, v7

    :goto_6
    or-int/2addr v12, v13

    iget-boolean v13, v14, LK/x;->p:Z

    if-eqz v13, :cond_7

    move v13, v5

    goto :goto_7

    :cond_7
    move v13, v7

    :goto_7
    or-int/2addr v12, v13

    iget v13, v14, LK/x;->q:I

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-boolean v12, v14, LK/x;->j:Z

    if-eqz v12, :cond_8

    goto :goto_8

    :cond_8
    move v15, v7

    :goto_8
    if-eqz v12, :cond_9

    iget v12, v14, LK/x;->k:I

    and-int/lit8 v12, v12, 0xf

    goto :goto_9

    :cond_9
    move v12, v7

    :goto_9
    or-int/2addr v12, v15

    int-to-byte v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_a
    invoke-static {v10, v13}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/nio/ByteBuffer;

    invoke-static {v4}, LF1/i;->p([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    filled-new-array {v10, v4}, [Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, LF1/i;->p([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v8, "csdHeader is null."

    invoke-static {v11, v8}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v11, v4}, [Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, LF1/i;->p([Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iput-object v4, v1, LL0/h;->j:[B

    goto :goto_a

    :cond_b
    iget-object v4, v3, LG/x;->p:Ljava/lang/String;

    const-string v8, "video/x-vnd.on2.vp9"

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, LJ/h;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    iput-object v4, v1, LL0/h;->j:[B

    :cond_c
    :goto_a
    iget-wide v8, v1, LL0/h;->k:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v8, v10

    if-nez v4, :cond_d

    move v7, v6

    :cond_d
    const-string v4, "Samples can not be written after writing a sample with MediaCodec.BUFFER_FLAG_END_OF_STREAM flag"

    invoke-static {v4, v7}, LF1/i;->f(Ljava/lang/String;Z)V

    iget v4, v2, LL0/c;->b:I

    iget-wide v7, v2, LL0/c;->a:J

    iget v2, v2, LL0/c;->c:I

    if-eqz v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_b

    :cond_e
    and-int/lit8 v4, v2, 0x1

    if-lez v4, :cond_f

    iput-boolean v6, v1, LL0/h;->i:Z

    :cond_f
    iget-boolean v4, v1, LL0/h;->i:Z

    if-nez v4, :cond_10

    iget-object v3, v3, LG/x;->p:Ljava/lang/String;

    invoke-static {v3}, LG/W;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    new-instance v3, LL0/c;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-direct {v3, v4, v2, v7, v8}, LL0/c;-><init>(IIJ)V

    iget-object v2, v1, LL0/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v2, v1, LL0/h;->g:Ljava/util/ArrayDeque;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_c

    :cond_11
    :goto_b
    and-int/2addr v2, v5

    if-eqz v2, :cond_12

    iput-wide v7, v1, LL0/h;->k:J

    :cond_12
    :goto_c
    invoke-virtual/range {p0 .. p1}, LL0/f;->g(LL0/h;)V

    iget-object v2, v0, LL0/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, LL0/f;->i:Z

    if-eqz v1, :cond_13

    iget-wide v1, v0, LL0/f;->n:J

    sub-long v1, v7, v1

    const-wide/32 v3, 0xf4240

    cmp-long v1, v1, v3

    if-ltz v1, :cond_13

    invoke-virtual {v0}, LL0/f;->d()V

    iput-wide v7, v0, LL0/f;->n:J

    :cond_13
    return-void
.end method
