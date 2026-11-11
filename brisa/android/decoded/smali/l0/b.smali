.class public final Ll0/b;
.super Lcom/brisa/local/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll0/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Lk0/c;Ljava/nio/ByteBuffer;)LG/V;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Ll0/b;->c:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, LG/V;

    new-instance v3, LJ/D;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-direct {v3, v4, v5}, LJ/D;-><init>([BI)V

    invoke-virtual {v3}, LJ/D;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, LJ/D;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, LJ/D;->u()J

    move-result-wide v9

    invoke-virtual {v3}, LJ/D;->u()J

    move-result-wide v11

    iget-object v4, v3, LJ/D;->a:[B

    iget v5, v3, LJ/D;->b:I

    iget v3, v3, LJ/D;->c:I

    invoke-static {v4, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    new-instance v6, Lm0/a;

    invoke-direct/range {v6 .. v13}, Lm0/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 v3, 0x1

    new-array v3, v3, [LG/U;

    aput-object v6, v3, v2

    invoke-direct {v1, v3}, LG/V;-><init>([LG/U;)V

    return-object v1

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v3, 0x74

    const/4 v4, 0x0

    if-ne v1, v3, :cond_7

    new-instance v1, LJ/B;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-direct {v1, v3, v5}, LJ/B;-><init>([BI)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, LJ/B;->o(I)V

    invoke-virtual {v1, v3}, LJ/B;->g(I)I

    move-result v5

    invoke-virtual {v1}, LJ/B;->d()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x4

    sub-int/2addr v6, v5

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, LJ/B;->o(I)V

    invoke-virtual {v1, v3}, LJ/B;->g(I)I

    move-result v7

    invoke-virtual {v1, v7}, LJ/B;->p(I)V

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, LJ/B;->o(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, LJ/B;->d()I

    move-result v9

    if-ge v9, v6, :cond_5

    const/16 v9, 0x30

    invoke-virtual {v1, v9}, LJ/B;->o(I)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v10

    invoke-virtual {v1, v5}, LJ/B;->o(I)V

    invoke-virtual {v1, v3}, LJ/B;->g(I)I

    move-result v11

    invoke-virtual {v1}, LJ/B;->d()I

    move-result v12

    add-int/2addr v12, v11

    move-object v11, v4

    move-object v13, v11

    :goto_1
    invoke-virtual {v1}, LJ/B;->d()I

    move-result v14

    if-ge v14, v12, :cond_3

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v14

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v15

    invoke-virtual {v1}, LJ/B;->d()I

    move-result v16

    add-int v2, v16, v15

    const/4 v3, 0x2

    if-ne v14, v3, :cond_1

    invoke-virtual {v1, v7}, LJ/B;->g(I)I

    move-result v3

    invoke-virtual {v1, v9}, LJ/B;->o(I)V

    const/4 v14, 0x3

    if-ne v3, v14, :cond_2

    :goto_2
    invoke-virtual {v1}, LJ/B;->d()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v3

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v14, v3, [B

    invoke-virtual {v1, v14, v3}, LJ/B;->j([BI)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v14, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_0

    invoke-virtual {v1, v9}, LJ/B;->g(I)I

    move-result v15

    invoke-virtual {v1, v15}, LJ/B;->p(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    move-object v11, v3

    goto :goto_2

    :cond_1
    const/16 v3, 0x15

    if-ne v14, v3, :cond_2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v13, v15, [B

    invoke-virtual {v1, v13, v15}, LJ/B;->j([BI)V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v13, v14

    :cond_2
    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, LJ/B;->m(I)V

    const/4 v2, 0x0

    const/16 v3, 0xc

    goto :goto_1

    :cond_3
    mul-int/lit8 v12, v12, 0x8

    invoke-virtual {v1, v12}, LJ/B;->m(I)V

    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    new-instance v2, Ll0/a;

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Ll0/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v2, 0x0

    const/16 v3, 0xc

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v4, LG/V;

    invoke-direct {v4, v8}, LG/V;-><init>(Ljava/util/List;)V

    :cond_7
    :goto_4
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
