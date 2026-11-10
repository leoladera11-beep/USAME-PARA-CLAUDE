.class final Lcom/brisa/local/Mp3Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "brisa_mp3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/brisa/local/p;)V
    .locals 26

    const-string v0, "pcm-encoding"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const-string v9, "mime"

    if-ge v7, v8, :cond_1

    :try_start_2
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "audio/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v10, v2

    const-wide/16 v11, 0x0

    :goto_1
    const-wide/16 v19, 0x0

    :goto_2
    move-object v2, v0

    goto/16 :goto_16

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_3
    if-eqz v8, :cond_16

    const/4 v7, 0x2

    :try_start_3
    invoke-virtual {v8, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    invoke-virtual {v10, v8, v2, v2, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v8, 0x2000

    new-array v9, v8, [S
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move v14, v6

    move/from16 v17, v14

    move/from16 v18, v17

    move v13, v7

    const-wide/16 v11, 0x0

    :goto_4
    if-nez v17, :cond_13

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Lcom/brisa/local/p;->getAsBoolean()Z

    move-result v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v15, :cond_12

    const-wide/16 v19, 0x0

    const-wide/16 v3, 0x2710

    const/4 v15, 0x1

    if-nez v18, :cond_4

    move-wide/from16 v21, v11

    :try_start_6
    invoke-virtual {v10, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {v10, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v1, v12, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-gez v12, :cond_2

    move/from16 v16, v14

    move/from16 v23, v15

    const-wide/16 v14, 0x0

    move/from16 v12, v16

    const/16 v16, 0x4

    move/from16 v18, v12

    const/4 v12, 0x0

    move/from16 v24, v13

    const/4 v13, 0x0

    move-object/from16 p1, v9

    move/from16 v25, v18

    move-wide/from16 v8, v21

    move/from16 v7, v23

    move/from16 v6, v24

    :try_start_7
    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move/from16 v18, v7

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object v2, v0

    move-wide v11, v8

    goto/16 :goto_16

    :cond_2
    move-object/from16 p1, v9

    move v6, v13

    move/from16 v25, v14

    move v7, v15

    move-wide/from16 v8, v21

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    const/16 v16, 0x0

    move v13, v12

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide/from16 v8, v21

    goto :goto_5

    :cond_3
    move-object/from16 p1, v9

    move v6, v13

    move/from16 v25, v14

    move v7, v15

    move-wide/from16 v8, v21

    goto :goto_6

    :cond_4
    move-object/from16 p1, v9

    move-wide v8, v11

    move v6, v13

    move/from16 v25, v14

    move v7, v15

    :goto_6
    invoke-virtual {v10, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_8

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "channel-count"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    const-string v4, "sample-rate"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-lt v14, v7, :cond_7

    const/4 v6, 0x2

    if-gt v14, v6, :cond_7

    cmp-long v6, v8, v19

    if-nez v6, :cond_6

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    move v13, v3

    :goto_7
    move/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_8

    :cond_5
    const/4 v13, 0x2

    goto :goto_7

    :goto_8
    invoke-static {v4, v14, v11, v12}, Lcom/brisa/local/Mp3Encoder;->open(IIILjava/lang/String;)J

    move-result-wide v3

    move-object/from16 v7, p1

    move-wide v8, v3

    const/4 v4, 0x0

    const/16 v22, 0x2

    goto/16 :goto_13

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "El formato del audio cambi\u00f3 durante la conversi\u00f3n."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Solo se admite audio mono o est\u00e9reo para MP3."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    move/from16 v11, p2

    move-object/from16 v12, p3

    if-ltz v3, :cond_11

    :try_start_8
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v13, 0x4

    if-lez v4, :cond_f

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v22, 0x2

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_d

    cmp-long v4, v8, v19

    if-eqz v4, :cond_e

    invoke-virtual {v10, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v14, v15

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_9
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v14

    if-ne v6, v13, :cond_9

    move v15, v13

    goto :goto_a

    :cond_9
    move/from16 v15, v22

    :goto_a
    if-lt v14, v15, :cond_d

    const/4 v14, 0x0

    :goto_b
    const/16 v15, 0x2000

    if-ge v14, v15, :cond_c

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-ne v6, v13, :cond_a

    move v15, v13

    goto :goto_c

    :cond_a
    move/from16 v15, v22

    :goto_c
    if-lt v7, v15, :cond_c

    add-int/lit8 v7, v14, 0x1

    if-ne v6, v13, :cond_b

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v15

    const v16, 0x46fffe00    # 32767.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v13

    const/16 v13, 0x7fff

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/16 v15, -0x8000

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-short v13, v13

    goto :goto_d

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    goto :goto_12

    :cond_b
    move/from16 v16, v13

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    :goto_d
    aput-short v13, p1, v14

    move v14, v7

    move/from16 v13, v16

    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    move/from16 v16, v13

    move-object/from16 v7, p1

    move/from16 v13, v25

    invoke-static {v8, v9, v7, v14, v13}, Lcom/brisa/local/Mp3Encoder;->encode(J[SII)[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 p1, v7

    move/from16 v25, v13

    move/from16 v13, v16

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    move-object/from16 v7, p1

    move/from16 v16, v13

    move/from16 v13, v25

    goto :goto_e

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "El decodificador no indic\u00f3 su formato de audio."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v7, p1

    move/from16 v16, v13

    move/from16 v13, v25

    const/16 v22, 0x2

    :goto_e
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_10

    const/16 v17, 0x1

    :goto_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    const/16 v17, 0x0

    goto :goto_f

    :goto_10
    :try_start_9
    invoke-virtual {v10, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_11
    move v14, v13

    move v13, v6

    goto :goto_13

    :goto_12
    invoke-virtual {v10, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    throw v0

    :cond_11
    move-object/from16 v7, p1

    move/from16 v13, v25

    const/4 v4, 0x0

    const/16 v22, 0x2

    goto :goto_11

    :goto_13
    move v6, v4

    move-wide v11, v8

    const/16 v8, 0x2000

    move-object v9, v7

    move/from16 v7, v22

    goto/16 :goto_4

    :cond_12
    move-wide v8, v11

    const-wide/16 v19, 0x0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v2, "Conversi\u00f3n cancelada."

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-wide v8, v11

    goto/16 :goto_1

    :cond_13
    move-wide v8, v11

    const-wide/16 v19, 0x0

    cmp-long v0, v8, v19

    if-eqz v0, :cond_15

    invoke-static {v8, v9}, Lcom/brisa/local/Mp3Encoder;->flush(J)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v0, :cond_14

    invoke-static {v8, v9}, Lcom/brisa/local/Mp3Encoder;->close(J)V

    :cond_14
    :try_start_b
    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return-void

    :catchall_5
    move-exception v0

    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    throw v0

    :catchall_6
    move-exception v0

    move-wide v11, v8

    :goto_14
    move-object v2, v10

    goto :goto_18

    :cond_15
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "El archivo no contiene audio decodificable."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_7
    move-exception v0

    const-wide/16 v19, 0x0

    move-object v2, v0

    move-wide/from16 v11, v19

    goto :goto_16

    :catchall_8
    move-exception v0

    const-wide/16 v19, 0x0

    :goto_15
    move-object v10, v2

    move-wide/from16 v11, v19

    goto/16 :goto_2

    :cond_16
    const-wide/16 v19, 0x0

    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "El archivo no contiene una pista de audio."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_15

    :goto_16
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_17

    :catchall_a
    move-exception v0

    :try_start_f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_14

    :catchall_c
    move-exception v0

    const-wide/16 v19, 0x0

    move-wide/from16 v11, v19

    :goto_18
    cmp-long v3, v11, v19

    if-eqz v3, :cond_17

    invoke-static {v11, v12}, Lcom/brisa/local/Mp3Encoder;->close(J)V

    :cond_17
    if-eqz v2, :cond_18

    :try_start_10
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_19

    :catchall_d
    move-exception v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    throw v0

    :cond_18
    :goto_19
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw v0
.end method

.method private static native close(J)V
.end method

.method private static native encode(J[SII)[B
.end method

.method private static native flush(J)[B
.end method

.method private static native open(IIILjava/lang/String;)J
.end method
