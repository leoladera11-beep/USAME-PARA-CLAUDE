.class public final LZ/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LW0/c;

.field public final b:LZ/y;

.field public final c:LZ/x;

.field public final d:LJ/Q;

.field public final e:LJ/Q;

.field public final f:LJ/v;

.field public final g:LZ/z;

.field public final h:LZ/g;

.field public i:J

.field public j:J

.field public k:J

.field public l:LG/C0;

.field public m:J


# direct methods
.method public constructor <init>(LW0/c;LZ/y;LZ/z;LZ/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/E;->a:LW0/c;

    iput-object p2, p0, LZ/E;->b:LZ/y;

    iput-object p3, p0, LZ/E;->g:LZ/z;

    iput-object p4, p0, LZ/E;->h:LZ/g;

    new-instance p1, LZ/x;

    invoke-direct {p1}, LZ/x;-><init>()V

    iput-object p1, p0, LZ/E;->c:LZ/x;

    new-instance p1, LJ/Q;

    invoke-direct {p1}, LJ/Q;-><init>()V

    iput-object p1, p0, LZ/E;->d:LJ/Q;

    new-instance p1, LJ/Q;

    invoke-direct {p1}, LJ/Q;-><init>()V

    iput-object p1, p0, LZ/E;->e:LJ/Q;

    new-instance p1, LJ/v;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    shl-int/2addr p2, p4

    :cond_0
    const/4 p3, 0x0

    iput p3, p1, LJ/v;->e:I

    const/4 v0, -0x1

    iput v0, p1, LJ/v;->f:I

    iput p3, p1, LJ/v;->g:I

    new-array p3, p2, [J

    iput-object p3, p1, LJ/v;->i:Ljava/lang/Object;

    sub-int/2addr p2, p4

    iput p2, p1, LJ/v;->h:I

    iput-object p1, p0, LZ/E;->f:LJ/v;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LZ/E;->i:J

    sget-object p3, LG/C0;->d:LG/C0;

    iput-object p3, p0, LZ/E;->l:LG/C0;

    iput-wide p1, p0, LZ/E;->j:J

    iput-wide p1, p0, LZ/E;->k:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, LZ/E;->a:LW0/c;

    iget-object v2, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v2, LZ/e;

    :goto_0
    iget-object v3, v0, LZ/E;->f:LJ/v;

    iget v4, v3, LJ/v;->g:I

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v4, :cond_d

    iget-object v4, v3, LJ/v;->i:Ljava/lang/Object;

    check-cast v4, [J

    iget v5, v3, LJ/v;->e:I

    aget-wide v7, v4, v5

    iget-object v4, v0, LZ/E;->e:LJ/Q;

    invoke-virtual {v4, v7, v8}, LJ/Q;->f(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x2

    iget-object v6, v0, LZ/E;->b:LZ/y;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v0, LZ/E;->m:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, LZ/E;->m:J

    invoke-virtual {v6, v5}, LZ/y;->e(I)V

    :cond_1
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v7

    iget-object v4, v0, LZ/E;->h:LZ/g;

    invoke-virtual {v4, v9, v10}, LZ/g;->b(J)V

    iget-wide v13, v0, LZ/E;->m:J

    invoke-virtual {v4}, LZ/g;->a()J

    move-result-wide v17

    iget-wide v9, v4, LZ/g;->h:J

    move-object v4, v6

    iget-object v6, v0, LZ/E;->b:LZ/y;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v11, v0, LZ/E;->c:LZ/x;

    move-wide/from16 v19, v9

    move-object/from16 v21, v11

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-virtual/range {v6 .. v21}, LZ/y;->a(JJJJZZJJLZ/x;)I

    move-result v6

    move-object/from16 v9, v21

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v6, v11, :cond_2

    if-eq v6, v10, :cond_2

    iget-object v12, v0, LZ/E;->g:LZ/z;

    iget-wide v13, v9, LZ/x;->a:J

    invoke-virtual {v12, v7, v8, v13, v14}, LZ/z;->a(JJ)V

    :cond_2
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v6, :cond_6

    if-eq v6, v14, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v6, v10, :cond_4

    if-ne v6, v11, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iput-wide v7, v0, LZ/E;->j:J

    goto/16 :goto_0

    :cond_5
    iput-wide v7, v0, LZ/E;->j:J

    invoke-virtual {v3}, LJ/v;->m()J

    iget-object v3, v2, LZ/e;->j:Ljava/util/concurrent/Executor;

    new-instance v4, LZ/c;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, LZ/c;-><init>(LW0/c;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, v2, LZ/e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ/j;

    iget-object v4, v3, LZ/j;->c:LZ/m;

    iget-object v5, v3, LZ/j;->a:LS/k;

    iget v3, v3, LZ/j;->b:I

    const-string v6, "dropVideoBuffer"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v5, v3}, LS/k;->i(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v4, v13, v14}, LZ/m;->U0(II)V

    goto/16 :goto_0

    :cond_6
    iput-wide v7, v0, LZ/E;->j:J

    if-nez v6, :cond_7

    move v5, v14

    goto :goto_1

    :cond_7
    move v5, v13

    :goto_1
    invoke-virtual {v3}, LJ/v;->m()J

    move-result-wide v6

    iget-object v3, v0, LZ/E;->d:LJ/Q;

    invoke-virtual {v3, v6, v7}, LJ/Q;->f(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/C0;

    if-eqz v3, :cond_8

    sget-object v8, LG/C0;->d:LG/C0;

    invoke-virtual {v3, v8}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, LZ/E;->l:LG/C0;

    invoke-virtual {v3, v8}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    iput-object v3, v0, LZ/E;->l:LG/C0;

    new-instance v8, LG/w;

    invoke-direct {v8}, LG/w;-><init>()V

    iget v10, v3, LG/C0;->a:I

    iput v10, v8, LG/w;->v:I

    iget v10, v3, LG/C0;->b:I

    iput v10, v8, LG/w;->w:I

    const-string v10, "video/raw"

    invoke-static {v10}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, LG/w;->o:Ljava/lang/String;

    new-instance v10, LG/x;

    invoke-direct {v10, v8}, LG/x;-><init>(LG/w;)V

    iput-object v10, v1, LW0/c;->f:Ljava/lang/Object;

    iget-object v8, v2, LZ/e;->j:Ljava/util/concurrent/Executor;

    new-instance v10, LZ/d;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v3, v11}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    :goto_2
    move-wide/from16 v18, v8

    goto :goto_3

    :cond_9
    iget-wide v8, v9, LZ/x;->b:J

    goto :goto_2

    :goto_3
    iget v3, v4, LZ/y;->e:I

    if-eq v3, v12, :cond_a

    move v13, v14

    :cond_a
    iput v12, v4, LZ/y;->e:I

    iget-object v3, v4, LZ/y;->k:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, LJ/W;->G(J)J

    move-result-wide v8

    iput-wide v8, v4, LZ/y;->g:J

    if-eqz v13, :cond_b

    iget-object v3, v2, LZ/e;->f:Landroid/view/Surface;

    if-eqz v3, :cond_b

    iget-object v3, v2, LZ/e;->j:Ljava/util/concurrent/Executor;

    new-instance v4, LZ/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, LZ/c;-><init>(LW0/c;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_b
    iget-object v3, v1, LW0/c;->f:Ljava/lang/Object;

    check-cast v3, LG/x;

    if-nez v3, :cond_c

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    new-instance v4, LG/x;

    invoke-direct {v4, v3}, LG/x;-><init>(LG/w;)V

    move-object/from16 v20, v4

    goto :goto_4

    :cond_c
    move-object/from16 v20, v3

    :goto_4
    iget-object v15, v2, LZ/e;->k:LZ/w;

    const/16 v21, 0x0

    move-wide/from16 v16, v6

    invoke-interface/range {v15 .. v21}, LZ/w;->d(JJLG/x;Landroid/media/MediaFormat;)V

    move-wide/from16 v8, v18

    iget-object v3, v2, LZ/e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZ/j;

    iget-object v4, v3, LZ/j;->c:LZ/m;

    iget-object v5, v3, LZ/j;->a:LS/k;

    iget v3, v3, LZ/j;->b:I

    invoke-virtual {v4, v5, v3, v8, v9}, LZ/m;->P0(LS/k;IJ)V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
