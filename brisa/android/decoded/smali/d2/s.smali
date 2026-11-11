.class public final Ld2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final e:Lj2/i;

.field public final f:Ld2/r;

.field public final g:Ld2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ld2/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ld2/s;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lj2/r;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/s;->e:Lj2/i;

    new-instance v0, Ld2/r;

    invoke-direct {v0, p1}, Ld2/r;-><init>(Lj2/i;)V

    iput-object v0, p0, Ld2/s;->f:Ld2/r;

    new-instance p1, Ld2/c;

    invoke-direct {p1, v0}, Ld2/c;-><init>(Ld2/r;)V

    iput-object p1, p0, Ld2/s;->g:Ld2/c;

    return-void
.end method


# virtual methods
.method public final c(ZLd2/k;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Ld2/s;->e:Lj2/i;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lj2/i;->l(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v1, Ld2/s;->e:Lj2/i;

    invoke-static {v3}, LX1/b;->s(Lj2/i;)I

    move-result v3

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_30

    iget-object v5, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v5}, Lj2/i;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v6}, Lj2/i;->readByte()B

    move-result v6

    and-int/lit16 v7, v6, 0xff

    iget-object v8, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v8}, Lj2/i;->readInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int v13, v8, v9

    sget-object v9, Ld2/s;->h:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    invoke-static {v11, v13, v3, v5, v7}, Ld2/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x4

    if-eqz p1, :cond_3

    if-ne v5, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a SETTINGS frame but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ld2/f;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v5, v4, :cond_2

    aget-object v3, v3, v5

    goto :goto_0

    :cond_2
    const-string v3, "0x%02x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, LX1/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v12, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 p1, 0xe

    const/16 v10, 0x8

    move/from16 v17, v5

    const-wide/16 v4, 0x0

    packed-switch v17, :pswitch_data_0

    iget-object v0, v1, Ld2/s;->e:Lj2/i;

    int-to-long v2, v3

    invoke-interface {v0, v2, v3}, Lj2/i;->skip(J)V

    return v11

    :pswitch_0
    if-ne v3, v9, :cond_8

    iget-object v2, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v2}, Lj2/i;->readInt()I

    move-result v2

    const-wide/32 v6, 0x7fffffff

    int-to-long v2, v2

    and-long/2addr v2, v6

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    if-nez v13, :cond_4

    iget-object v4, v0, Ld2/k;->f:Ld2/o;

    monitor-enter v4

    :try_start_1
    iget-wide v5, v4, Ld2/o;->y:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Ld2/o;->y:J

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v11

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    iget-object v0, v0, Ld2/k;->f:Ld2/o;

    invoke-virtual {v0, v13}, Ld2/o;->e(I)Ld2/w;

    move-result-object v5

    if-eqz v5, :cond_6

    monitor-enter v5

    :try_start_2
    iget-wide v6, v5, Ld2/w;->f:J

    add-long/2addr v6, v2

    iput-wide v6, v5, Ld2/w;->f:J

    if-lez v4, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit v5

    return v11

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_6
    :goto_2
    move v2, v11

    goto/16 :goto_c

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "windowSizeIncrement was 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-lt v3, v10, :cond_f

    if-nez v13, :cond_e

    iget-object v4, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v4}, Lj2/i;->readInt()I

    move-result v4

    iget-object v5, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v5}, Lj2/i;->readInt()I

    move-result v5

    sub-int/2addr v3, v10

    invoke-static/range {p1 .. p1}, Lz/K;->c(I)[I

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_a

    aget v9, v6, v8

    invoke-static {v9}, Lz/K;->b(I)I

    move-result v12

    if-ne v12, v5, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move v9, v2

    :goto_4
    if-eqz v9, :cond_d

    sget-object v5, Lj2/j;->h:Lj2/j;

    if-lez v3, :cond_b

    iget-object v5, v1, Ld2/s;->e:Lj2/i;

    int-to-long v6, v3

    invoke-interface {v5, v6, v7}, Lj2/i;->d(J)Lj2/j;

    move-result-object v5

    :cond_b
    const-string v3, "debugData"

    invoke-static {v5, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lj2/j;->a()I

    iget-object v3, v0, Ld2/k;->f:Ld2/o;

    monitor-enter v3

    :try_start_3
    iget-object v5, v3, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    new-array v6, v2, [Ld2/w;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    iput-boolean v11, v3, Ld2/o;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v3

    check-cast v5, [Ld2/w;

    array-length v3, v5

    :goto_5
    if-ge v2, v3, :cond_6

    aget-object v6, v5, v2

    iget v7, v6, Ld2/w;->a:I

    if-le v7, v4, :cond_c

    invoke-virtual {v6}, Ld2/w;->g()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6, v10}, Ld2/w;->j(I)V

    iget-object v7, v0, Ld2/k;->f:Ld2/o;

    iget v6, v6, Ld2/w;->a:I

    invoke-virtual {v7, v6}, Ld2/o;->q(I)Ld2/w;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v5, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_GOAWAY length < 8: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-ne v3, v10, :cond_16

    if-nez v13, :cond_15

    iget-object v3, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v3}, Lj2/i;->readInt()I

    move-result v3

    iget-object v7, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v7}, Lj2/i;->readInt()I

    move-result v20

    and-int/2addr v6, v11

    if-eqz v6, :cond_10

    move v2, v11

    :cond_10
    if-eqz v2, :cond_14

    iget-object v2, v0, Ld2/k;->f:Ld2/o;

    monitor-enter v2

    const-wide/16 v4, 0x1

    if-eq v3, v11, :cond_13

    if-eq v3, v15, :cond_12

    if-eq v3, v14, :cond_11

    goto :goto_6

    :cond_11
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_12
    iget-wide v6, v2, Ld2/o;->r:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Ld2/o;->r:J

    goto :goto_6

    :cond_13
    iget-wide v6, v2, Ld2/o;->p:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Ld2/o;->p:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_6
    monitor-exit v2

    return v11

    :goto_7
    monitor-exit v2

    throw v0

    :cond_14
    iget-object v2, v0, Ld2/k;->f:Ld2/o;

    iget-object v2, v2, Ld2/o;->l:LZ1/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Ld2/k;->f:Ld2/o;

    iget-object v7, v7, Ld2/o;->g:Ljava/lang/String;

    const-string v8, " ping"

    invoke-static {v6, v7, v8}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v0, Ld2/k;->f:Ld2/o;

    new-instance v16, Ld2/j;

    const/16 v21, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v3

    invoke-direct/range {v16 .. v21}, Ld2/j;-><init>(Ljava/lang/String;Ld2/o;III)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, LZ1/c;->c(LZ1/a;J)V

    return v11

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PING streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PING length != 8: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {v1, v0, v3, v7, v13}, Ld2/s;->s(Ld2/k;III)V

    return v11

    :pswitch_4
    iget-object v7, v1, Ld2/s;->e:Lj2/i;

    if-nez v13, :cond_25

    and-int/2addr v6, v11

    if-eqz v6, :cond_18

    if-nez v3, :cond_17

    goto/16 :goto_2

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    rem-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_24

    new-instance v6, LJ/u;

    invoke-direct {v6, v2, v12}, LJ/u;-><init>(CI)V

    invoke-static {v2, v3}, Lcom/brisa/local/u;->z(II)LP1/c;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/brisa/local/u;->y(LP1/c;I)LP1/a;

    move-result-object v2

    iget v3, v2, LP1/a;->e:I

    iget v8, v2, LP1/a;->f:I

    iget v2, v2, LP1/a;->g:I

    if-lez v2, :cond_19

    if-le v3, v8, :cond_1a

    :cond_19
    if-gez v2, :cond_23

    if-gt v8, v3, :cond_23

    :cond_1a
    :goto_8
    invoke-interface {v7}, Lj2/i;->readShort()S

    move-result v10

    sget-object v13, LX1/b;->a:[B

    const v13, 0xffff

    and-int/2addr v10, v13

    invoke-interface {v7}, Lj2/i;->readInt()I

    move-result v13

    if-eq v10, v15, :cond_20

    if-eq v10, v14, :cond_1f

    if-eq v10, v9, :cond_1d

    if-eq v10, v12, :cond_1b

    goto :goto_9

    :cond_1b
    const/16 v14, 0x4000

    if-lt v13, v14, :cond_1c

    const v14, 0xffffff

    if-gt v13, v14, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v13, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-ltz v13, :cond_1e

    const/4 v10, 0x7

    goto :goto_9

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move v10, v9

    goto :goto_9

    :cond_20
    if-eqz v13, :cond_22

    if-ne v13, v11, :cond_21

    goto :goto_9

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_9
    invoke-virtual {v6, v10, v13}, LJ/u;->j(II)V

    if-eq v3, v8, :cond_23

    add-int/2addr v3, v2

    const/4 v14, 0x3

    goto :goto_8

    :cond_23
    iget-object v2, v0, Ld2/k;->f:Ld2/o;

    iget-object v3, v2, Ld2/o;->l:LZ1/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Ld2/o;->g:Ljava/lang/String;

    const-string v8, " applyAndAckSettings"

    invoke-static {v7, v2, v8}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ld2/i;

    invoke-direct {v7, v2, v0, v6, v15}, Ld2/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v7, v4, v5}, LZ1/c;->c(LZ1/a;J)V

    return v11

    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v3, v9, :cond_2d

    if-eqz v13, :cond_2c

    iget-object v3, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v3}, Lj2/i;->readInt()I

    move-result v3

    invoke-static/range {p1 .. p1}, Lz/K;->c(I)[I

    move-result-object v6

    array-length v7, v6

    move v9, v2

    :goto_a
    if-ge v9, v7, :cond_27

    aget v10, v6, v9

    invoke-static {v10}, Lz/K;->b(I)I

    move-result v12

    if-ne v12, v3, :cond_26

    move v14, v10

    goto :goto_b

    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_27
    move v14, v2

    :goto_b
    if-eqz v14, :cond_2b

    iget-object v12, v0, Ld2/k;->f:Ld2/o;

    if-eqz v13, :cond_28

    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_28

    move v2, v11

    :cond_28
    if-eqz v2, :cond_29

    iget-object v0, v12, Ld2/o;->m:LZ1/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onReset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ld2/j;

    const/4 v15, 0x1

    move/from16 v22, v11

    move-object v11, v2

    move/from16 v2, v22

    invoke-direct/range {v10 .. v15}, Ld2/j;-><init>(Ljava/lang/String;Ld2/o;III)V

    invoke-virtual {v0, v10, v4, v5}, LZ1/c;->c(LZ1/a;J)V

    return v2

    :cond_29
    move v2, v11

    invoke-virtual {v12, v13}, Ld2/o;->q(I)Ld2/w;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v14}, Ld2/w;->j(I)V

    :cond_2a
    :goto_c
    return v2

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM length: "

    const-string v4, " != 4"

    invoke-static {v2, v4, v3}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move v2, v11

    if-ne v3, v12, :cond_2f

    if-eqz v13, :cond_2e

    iget-object v0, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v0}, Lj2/i;->readInt()I

    invoke-interface {v0}, Lj2/i;->readByte()B

    return v2

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TYPE_PRIORITY length: "

    const-string v4, " != 5"

    invoke-static {v2, v4, v3}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move v2, v11

    invoke-virtual {v1, v0, v3, v7, v13}, Ld2/s;->r(Ld2/k;III)V

    return v2

    :pswitch_8
    move v2, v11

    invoke-virtual {v1, v0, v3, v7, v13}, Ld2/s;->e(Ld2/k;III)V

    return v2

    :cond_30
    new-instance v0, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v3, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public final close()V
    .locals 1

    iget-object v0, p0, Ld2/s;->e:Lj2/i;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final e(Ld2/k;III)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v5, p4

    if-eqz v5, :cond_e

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_d

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_1

    iget-object v3, v1, Ld2/s;->e:Lj2/i;

    invoke-interface {v3}, Lj2/i;->readByte()B

    move-result v3

    sget-object v7, LX1/b;->a:[B

    and-int/lit16 v3, v3, 0xff

    move v9, v3

    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_1
    move v9, v4

    goto :goto_1

    :goto_2
    invoke-static {v3, v2, v9}, Ld2/q;->a(III)I

    move-result v7

    iget-object v2, v1, Ld2/s;->e:Lj2/i;

    const-string v3, "source"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v4

    iget-object v4, v0, Ld2/k;->f:Ld2/o;

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    and-int/lit8 v12, v5, 0x1

    if-nez v12, :cond_2

    new-instance v6, Lj2/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    int-to-long v12, v7

    invoke-interface {v2, v12, v13}, Lj2/i;->l(J)V

    invoke-interface {v2, v12, v13, v6}, Lj2/x;->h(JLj2/g;)J

    iget-object v0, v4, Ld2/o;->m:LZ1/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] onData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ld2/l;

    invoke-direct/range {v2 .. v8}, Ld2/l;-><init>(Ljava/lang/String;Ld2/o;ILj2/g;IZ)V

    invoke-virtual {v0, v2, v10, v11}, LZ1/c;->c(LZ1/a;J)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v4, v5}, Ld2/o;->e(I)Ld2/w;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, v0, Ld2/k;->f:Ld2/o;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, Ld2/o;->u(II)V

    iget-object v0, v0, Ld2/k;->f:Ld2/o;

    int-to-long v3, v7

    invoke-virtual {v0, v3, v4}, Ld2/o;->s(J)V

    invoke-interface {v2, v3, v4}, Lj2/i;->skip(J)V

    goto/16 :goto_9

    :cond_3
    sget-object v0, LX1/b;->a:[B

    iget-object v0, v4, Ld2/w;->i:Ld2/u;

    int-to-long v12, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v14, v12

    :goto_3
    cmp-long v5, v14, v10

    if-lez v5, :cond_b

    iget-object v5, v0, Ld2/u;->j:Ld2/w;

    monitor-enter v5

    :try_start_0
    iget-boolean v7, v0, Ld2/u;->f:Z

    iget-object v3, v0, Ld2/u;->h:Lj2/g;

    move-wide/from16 v16, v10

    iget-wide v10, v3, Lj2/g;->f:J

    add-long/2addr v10, v14

    move/from16 p1, v7

    iget-wide v6, v0, Ld2/u;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v6, v10, v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    monitor-exit v5

    if-eqz v6, :cond_5

    invoke-interface {v2, v14, v15}, Lj2/i;->skip(J)V

    iget-object v0, v0, Ld2/u;->j:Ld2/w;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ld2/w;->e(I)V

    goto :goto_8

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {v2, v14, v15}, Lj2/i;->skip(J)V

    goto :goto_8

    :cond_6
    iget-object v5, v0, Ld2/u;->g:Lj2/g;

    invoke-interface {v2, v14, v15, v5}, Lj2/x;->h(JLj2/g;)J

    move-result-wide v5

    const-wide/16 v10, -0x1

    cmp-long v7, v5, v10

    if-eqz v7, :cond_a

    sub-long/2addr v14, v5

    iget-object v5, v0, Ld2/u;->j:Ld2/w;

    monitor-enter v5

    :try_start_1
    iget-boolean v6, v0, Ld2/u;->i:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Ld2/u;->g:Lj2/g;

    iget-wide v10, v6, Lj2/g;->f:J

    invoke-virtual {v6, v10, v11}, Lj2/g;->skip(J)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v6, v0, Ld2/u;->h:Lj2/g;

    iget-wide v10, v6, Lj2/g;->f:J

    cmp-long v7, v10, v16

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    iget-object v10, v0, Ld2/u;->g:Lj2/g;

    invoke-virtual {v6, v10}, Lj2/g;->y(Lj2/x;)V

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_6
    monitor-exit v5

    move-wide/from16 v10, v16

    const/4 v3, 0x0

    goto :goto_3

    :goto_7
    monitor-exit v5

    throw v0

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_b
    iget-object v0, v0, Ld2/u;->j:Ld2/w;

    sget-object v2, LX1/b;->a:[B

    iget-object v0, v0, Ld2/w;->b:Ld2/o;

    invoke-virtual {v0, v12, v13}, Ld2/o;->s(J)V

    :goto_8
    if-eqz v8, :cond_c

    sget-object v0, LX1/b;->b:LW1/k;

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Ld2/w;->i(LW1/k;Z)V

    :cond_c
    :goto_9
    iget-object v0, v1, Ld2/s;->e:Lj2/i;

    int-to-long v2, v9

    invoke-interface {v0, v2, v3}, Lj2/i;->skip(J)V

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(IIII)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Ld2/s;->f:Ld2/r;

    iput p1, v0, Ld2/r;->i:I

    iput p1, v0, Ld2/r;->f:I

    iput p2, v0, Ld2/r;->j:I

    iput p3, v0, Ld2/r;->g:I

    iput p4, v0, Ld2/r;->h:I

    iget-object p1, p0, Ld2/s;->g:Ld2/c;

    iget-object p2, p1, Ld2/c;->c:Lj2/r;

    iget-object p3, p1, Ld2/c;->b:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lj2/r;->c()Z

    move-result p4

    if-nez p4, :cond_c

    invoke-virtual {p2}, Lj2/r;->readByte()B

    move-result p4

    sget-object v0, LX1/b;->a:[B

    and-int/lit16 v0, p4, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_b

    and-int/lit16 v2, p4, 0x80

    if-ne v2, v1, :cond_3

    const/16 p4, 0x7f

    invoke-virtual {p1, v0, p4}, Ld2/c;->e(II)I

    move-result p4

    add-int/lit8 v0, p4, -0x1

    if-ltz v0, :cond_1

    sget-object v1, Ld2/e;->a:[Ld2/b;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    aget-object p4, v1, v0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Ld2/e;->a:[Ld2/b;

    array-length v1, v1

    sub-int/2addr v0, v1

    iget v1, p1, Ld2/c;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    iget-object v0, p1, Ld2/c;->d:[Ld2/b;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object p4, v0, v1

    invoke-static {p4}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Header index too large "

    invoke-static {p4, p2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    sget-object p4, Ld2/e;->a:[Ld2/b;

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object p4

    invoke-static {p4}, Ld2/e;->a(Lj2/j;)V

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object v0

    new-instance v1, Ld2/b;

    invoke-direct {v1, p4, v0}, Ld2/b;-><init>(Lj2/j;Lj2/j;)V

    invoke-virtual {p1, v1}, Ld2/c;->c(Ld2/b;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p4, 0x40

    if-ne v2, v1, :cond_5

    const/16 p4, 0x3f

    invoke-virtual {p1, v0, p4}, Ld2/c;->e(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Ld2/c;->b(I)Lj2/j;

    move-result-object p4

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object v0

    new-instance v1, Ld2/b;

    invoke-direct {v1, p4, v0}, Ld2/b;-><init>(Lj2/j;Lj2/j;)V

    invoke-virtual {p1, v1}, Ld2/c;->c(Ld2/b;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p4, p4, 0x20

    const/16 v1, 0x20

    if-ne p4, v1, :cond_8

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p4}, Ld2/c;->e(II)I

    move-result p4

    iput p4, p1, Ld2/c;->a:I

    if-ltz p4, :cond_7

    const/16 v0, 0x1000

    if-gt p4, v0, :cond_7

    iget v0, p1, Ld2/c;->g:I

    if-ge p4, v0, :cond_0

    if-nez p4, :cond_6

    iget-object p4, p1, Ld2/c;->d:[Ld2/b;

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p4, v1, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p4, p1, Ld2/c;->d:[Ld2/b;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    iput p4, p1, Ld2/c;->e:I

    iput v1, p1, Ld2/c;->f:I

    iput v1, p1, Ld2/c;->g:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ld2/c;->a(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Ld2/c;->a:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const/16 p4, 0x10

    if-eq v0, p4, :cond_a

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/16 p4, 0xf

    invoke-virtual {p1, v0, p4}, Ld2/c;->e(II)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p1, p4}, Ld2/c;->b(I)Lj2/j;

    move-result-object p4

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object v0

    new-instance v1, Ld2/b;

    invoke-direct {v1, p4, v0}, Ld2/b;-><init>(Lj2/j;Lj2/j;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p4, Ld2/e;->a:[Ld2/b;

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object p4

    invoke-static {p4}, Ld2/e;->a(Lj2/j;)V

    invoke-virtual {p1}, Ld2/c;->d()Lj2/j;

    move-result-object v0

    new-instance v1, Ld2/b;

    invoke-direct {v1, p4, v0}, Ld2/b;-><init>(Lj2/j;Lj2/j;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-static {p3}, LF1/h;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    return-object p1
.end method

.method public final r(Ld2/k;III)V
    .locals 9

    if-eqz p4, :cond_8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/s;->e:Lj2/i;

    invoke-interface {v0}, Lj2/i;->readByte()B

    move-result v0

    sget-object v1, LX1/b;->a:[B

    and-int/lit16 v1, v0, 0xff

    :cond_1
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/s;->e:Lj2/i;

    invoke-interface {v0}, Lj2/i;->readInt()I

    invoke-interface {v0}, Lj2/i;->readByte()B

    sget-object v0, LX1/b;->a:[B

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v1}, Ld2/q;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v1, p3, p4}, Ld2/s;->q(IIII)Ljava/util/List;

    move-result-object p2

    iget-object v5, p1, Ld2/k;->f:Ld2/o;

    const-wide/16 v0, 0x0

    const/16 p1, 0x5b

    if-eqz p4, :cond_3

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, v5, Ld2/o;->m:LZ1/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onHeaders"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ld2/m;

    move v6, p4

    move v8, v7

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Ld2/m;-><init>(Ljava/lang/String;Ld2/o;ILjava/util/List;Z)V

    invoke-virtual {p3, v3, v0, v1}, LZ1/c;->c(LZ1/a;J)V

    return-void

    :cond_3
    move v4, p4

    monitor-enter v5

    :try_start_0
    invoke-virtual {v5, v4}, Ld2/o;->e(I)Ld2/w;

    move-result-object p3

    if-nez p3, :cond_7

    iget-boolean p3, v5, Ld2/o;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    monitor-exit v5

    return-void

    :cond_4
    :try_start_1
    iget p3, v5, Ld2/o;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v4, p3, :cond_5

    monitor-exit v5

    return-void

    :cond_5
    :try_start_2
    rem-int/lit8 p4, v4, 0x2

    iget p3, v5, Ld2/o;->i:I

    rem-int/lit8 p3, p3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p4, p3, :cond_6

    monitor-exit v5

    return-void

    :cond_6
    :try_start_3
    invoke-static {p2}, LX1/b;->u(Ljava/util/List;)LW1/k;

    move-result-object v8

    new-instance v3, Ld2/w;

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ld2/w;-><init>(ILd2/o;ZZLW1/k;)V

    iput v4, v5, Ld2/o;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, v5, Ld2/o;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v5, Ld2/o;->k:LZ1/d;

    invoke-virtual {p2}, LZ1/d;->e()LZ1/c;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, v5, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] onStream"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ld2/i;

    invoke-direct {p3, p1, v5, v3, v2}, Ld2/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3, v0, v1}, LZ1/c;->c(LZ1/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_7
    monitor-exit v5

    invoke-static {p2}, LX1/b;->u(Ljava/util/List;)LW1/k;

    move-result-object p1

    invoke-virtual {p3, p1, v7}, Ld2/w;->i(LW1/k;Z)V

    return-void

    :goto_1
    monitor-exit v5

    throw p1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Ld2/k;III)V
    .locals 3

    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/s;->e:Lj2/i;

    invoke-interface {v0}, Lj2/i;->readByte()B

    move-result v0

    sget-object v1, LX1/b;->a:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld2/s;->e:Lj2/i;

    invoke-interface {v1}, Lj2/i;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Ld2/q;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Ld2/s;->q(IIII)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Ld2/k;->f:Ld2/o;

    monitor-enter p1

    :try_start_0
    iget-object p3, p1, Ld2/o;->C:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, Ld2/o;->u(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p3, p1, Ld2/o;->C:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p3, p1, Ld2/o;->m:LZ1/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Ld2/o;->g:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] onRequest"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ld2/m;

    invoke-direct {v0, p4, p1, v1, p2}, Ld2/m;-><init>(Ljava/lang/String;Ld2/o;ILjava/util/List;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p3, v0, p1, p2}, LZ1/c;->c(LZ1/a;J)V

    return-void

    :goto_1
    monitor-exit p1

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
