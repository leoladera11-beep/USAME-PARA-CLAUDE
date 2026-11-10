.class public final synthetic LM0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LJ/P;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/l0;Ljava/util/List;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/g0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/g0;->h:Ljava/lang/Object;

    iput p3, p0, LM0/g0;->f:I

    iput-wide p4, p0, LM0/g0;->e:J

    return-void
.end method

.method public synthetic constructor <init>(LP/S;Ljava/nio/ByteBuffer;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/g0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/g0;->h:Ljava/lang/Object;

    iput-wide p3, p0, LM0/g0;->e:J

    iput p5, p0, LM0/g0;->f:I

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 9

    iget-object v0, p0, LM0/g0;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/g0;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v0, LM0/l0;->c:LM0/y0;

    new-instance v5, LG/g;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/P;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {v5, v0}, LG/g;-><init>(Ljava/util/List;)V

    iget v6, p0, LM0/g0;->f:I

    iget-wide v7, p0, LM0/g0;->e:J

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v2 .. v8}, LM0/q;->m0(LM0/o;ILandroid/os/IBinder;IJ)V

    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, LM0/g0;->g:Ljava/lang/Object;

    check-cast v0, LP/S;

    iget-object v2, v1, LM0/g0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, v0, LP/S;->R0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, LP/S;->P0:LP/O;

    iget-object v4, v0, LP/O;->k:LP/N;

    iget-object v5, v0, LP/O;->L:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, LF1/i;->g(Z)V

    iget-object v5, v0, LP/O;->o:LM0/s0;

    iget-wide v8, v1, LM0/g0;->e:J

    const/4 v10, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v0}, LP/O;->e()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    move v6, v7

    goto/16 :goto_a

    :cond_3
    iget-object v5, v0, LP/O;->t:LP/E;

    if-eqz v5, :cond_5

    iget-object v5, v0, LP/O;->p:LM0/s0;

    iget-object v5, v5, LM0/s0;->e:Ljava/lang/Object;

    check-cast v5, LP/p;

    iget-object v11, v0, LP/O;->o:LM0/s0;

    iget-object v11, v11, LM0/s0;->d:Ljava/lang/Object;

    check-cast v11, LG/x;

    invoke-virtual {v0, v11}, LP/O;->g(LG/x;)LP/k;

    iget-object v11, v0, LP/O;->o:LM0/s0;

    iget-object v11, v11, LM0/s0;->e:Ljava/lang/Object;

    check-cast v11, LP/p;

    invoke-virtual {v11, v5}, LP/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, LP/O;->o()V

    invoke-virtual {v0}, LP/O;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, LP/O;->f()V

    goto :goto_5

    :cond_5
    iget-object v5, v0, LP/O;->o:LM0/s0;

    iput-object v5, v0, LP/O;->p:LM0/s0;

    iput-object v10, v0, LP/O;->o:LM0/s0;

    iget-object v5, v0, LP/O;->t:LP/E;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, LP/E;->c()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, LP/O;->p:LM0/s0;

    iget-object v5, v5, LM0/s0;->e:Ljava/lang/Object;

    check-cast v5, LP/p;

    iget-boolean v5, v5, LP/p;->k:Z

    if-eqz v5, :cond_9

    iget-object v5, v0, LP/O;->t:LP/E;

    iget-object v11, v5, LP/E;->a:Landroid/media/AudioTrack;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-ge v12, v13, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v11}, LB/r;->p(Landroid/media/AudioTrack;)V

    iget-object v5, v5, LP/E;->f:LP/H;

    iput-boolean v6, v5, LP/H;->A:Z

    iget-object v5, v5, LP/H;->h:LP/A;

    iget-object v5, v5, LP/A;->a:LP/z;

    iput-boolean v6, v5, LP/z;->f:Z

    :goto_3
    iget-object v5, v0, LP/O;->t:LP/E;

    iget-object v11, v0, LP/O;->p:LM0/s0;

    iget-object v11, v11, LM0/s0;->c:Ljava/lang/Object;

    check-cast v11, LG/x;

    iget v14, v11, LG/x;->N:I

    iget v11, v11, LG/x;->O:I

    if-ge v12, v13, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_8
    iget-object v5, v5, LP/E;->a:Landroid/media/AudioTrack;

    invoke-static {v5, v14, v11}, LB/r;->q(Landroid/media/AudioTrack;II)V

    :goto_4
    iput-boolean v6, v0, LP/O;->b0:Z

    :cond_9
    :goto_5
    invoke-virtual {v0, v8, v9}, LP/O;->a(J)V

    :cond_a
    invoke-virtual {v0}, LP/O;->m()Z

    move-result v5

    if-nez v5, :cond_c

    :try_start_0
    invoke-virtual {v0}, LP/O;->l()Z

    move-result v5
    :try_end_0
    .catch LP/w; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_c

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-boolean v2, v0, LP/w;->e:Z

    if-nez v2, :cond_b

    invoke-virtual {v4, v0}, LP/N;->a(Ljava/lang/Exception;)V

    goto/16 :goto_2

    :cond_b
    throw v0

    :cond_c
    iput-object v10, v4, LP/N;->d:Ljava/lang/Object;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v4, LP/N;->b:J

    iput-wide v11, v4, LP/N;->c:J

    iget-boolean v4, v0, LP/O;->H:Z

    const-wide/16 v13, 0x0

    if-eqz v4, :cond_e

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, LP/O;->I:J

    iput-boolean v7, v0, LP/O;->G:Z

    iput-boolean v7, v0, LP/O;->H:Z

    invoke-virtual {v0}, LP/O;->v()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, LP/O;->s()V

    :cond_d
    invoke-virtual {v0, v8, v9}, LP/O;->a(J)V

    iget-boolean v4, v0, LP/O;->R:Z

    if-eqz v4, :cond_e

    invoke-virtual {v0}, LP/O;->n()V

    :cond_e
    iget-object v4, v0, LP/O;->L:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_1a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_f

    move v4, v6

    goto :goto_6

    :cond_f
    move v4, v7

    :goto_6
    invoke-static {v4}, LF1/i;->g(Z)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_a

    :cond_10
    iget-object v4, v0, LP/O;->p:LM0/s0;

    invoke-static {v4}, LM0/s0;->b(LM0/s0;)Z

    move-result v4

    if-nez v4, :cond_11

    iget v4, v0, LP/O;->D:I

    if-nez v4, :cond_11

    iget-object v4, v0, LP/O;->p:LM0/s0;

    iget-object v4, v4, LM0/s0;->e:Ljava/lang/Object;

    check-cast v4, LP/p;

    iget v4, v4, LP/p;->a:I

    invoke-static {v4, v2}, LP/O;->i(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, LP/O;->D:I

    if-nez v4, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object v4, v0, LP/O;->v:LP/M;

    if-eqz v4, :cond_13

    invoke-virtual {v0}, LP/O;->e()Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v0, v8, v9}, LP/O;->a(J)V

    iput-object v10, v0, LP/O;->v:LP/M;

    :cond_13
    iget-wide v4, v0, LP/O;->I:J

    iget-object v15, v0, LP/O;->p:LM0/s0;

    invoke-static {v15}, LM0/s0;->b(LM0/s0;)Z

    move-result v16

    if-eqz v16, :cond_14

    move-wide/from16 v16, v11

    iget-wide v11, v0, LP/O;->z:J

    iget-object v10, v0, LP/O;->p:LM0/s0;

    iget v10, v10, LM0/s0;->a:I

    move-wide/from16 v18, v13

    int-to-long v13, v10

    div-long/2addr v11, v13

    goto :goto_7

    :cond_14
    move-wide/from16 v16, v11

    move-wide/from16 v18, v13

    iget-wide v11, v0, LP/O;->A:J

    :goto_7
    iget-object v10, v0, LP/O;->d:LP/W;

    iget-wide v13, v10, LP/W;->o:J

    sub-long/2addr v11, v13

    iget-object v10, v15, LM0/s0;->c:Ljava/lang/Object;

    check-cast v10, LG/x;

    iget v10, v10, LG/x;->L:I

    invoke-static {v10, v11, v12}, LJ/W;->L(IJ)J

    move-result-wide v10

    add-long/2addr v10, v4

    iget-boolean v4, v0, LP/O;->G:Z

    if-nez v4, :cond_16

    sub-long v4, v10, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v12, 0x30d40

    cmp-long v4, v4, v12

    if-lez v4, :cond_16

    iget-object v4, v0, LP/O;->n:La1/g;

    if-eqz v4, :cond_15

    new-instance v5, LP/x;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unexpected audio track timestamp discontinuity: expected "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, La1/g;->C(Ljava/lang/Exception;)V

    :cond_15
    iput-boolean v6, v0, LP/O;->G:Z

    :cond_16
    iget-boolean v4, v0, LP/O;->G:Z

    if-eqz v4, :cond_18

    invoke-virtual {v0}, LP/O;->e()Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_2

    :cond_17
    sub-long v4, v8, v10

    iget-wide v10, v0, LP/O;->I:J

    add-long/2addr v10, v4

    iput-wide v10, v0, LP/O;->I:J

    iput-boolean v7, v0, LP/O;->G:Z

    invoke-virtual {v0, v8, v9}, LP/O;->a(J)V

    iget-object v10, v0, LP/O;->n:La1/g;

    if-eqz v10, :cond_18

    cmp-long v4, v4, v18

    if-eqz v4, :cond_18

    iget-object v4, v10, La1/g;->e:Ljava/lang/Object;

    check-cast v4, LP/S;

    iput-boolean v6, v4, LP/S;->X0:Z

    :cond_18
    iget-object v4, v0, LP/O;->p:LM0/s0;

    invoke-static {v4}, LM0/s0;->b(LM0/s0;)Z

    move-result v4

    iget v5, v1, LM0/g0;->f:I

    if-eqz v4, :cond_19

    iget-wide v10, v0, LP/O;->z:J

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v0, LP/O;->z:J

    goto :goto_8

    :cond_19
    iget-wide v10, v0, LP/O;->A:J

    iget v4, v0, LP/O;->D:I

    int-to-long v12, v4

    int-to-long v14, v5

    mul-long/2addr v12, v14

    add-long/2addr v12, v10

    iput-wide v12, v0, LP/O;->A:J

    :goto_8
    iput-object v2, v0, LP/O;->L:Ljava/nio/ByteBuffer;

    iput v5, v0, LP/O;->M:I

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iput v2, v0, LP/O;->E:I

    move-wide/from16 v4, v18

    iput-wide v4, v0, LP/O;->F:J

    goto :goto_9

    :cond_1a
    move-wide/from16 v16, v11

    :goto_9
    invoke-virtual {v0, v8, v9}, LP/O;->p(J)V

    iget-object v2, v0, LP/O;->L:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    iput-object v2, v0, LP/O;->L:Ljava/nio/ByteBuffer;

    iput v7, v0, LP/O;->M:I

    goto :goto_a

    :cond_1b
    iget-object v2, v0, LP/O;->t:LP/E;

    iget-object v4, v2, LP/E;->f:LP/H;

    invoke-virtual {v2}, LP/E;->b()J

    move-result-wide v8

    iget-wide v10, v4, LP/H;->v:J

    cmp-long v2, v10, v16

    if-eqz v2, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v2, v8, v18

    if-lez v2, :cond_2

    iget-object v2, v4, LP/H;->b:LJ/M;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v4, v4, LP/H;->v:J

    sub-long/2addr v8, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v8, v4

    if-ltz v2, :cond_2

    const-string v2, "DefaultAudioSink"

    const-string v4, "Resetting stalled audio output"

    invoke-static {v2, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LP/O;->f()V

    :goto_a
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
