.class public final LI0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/C;


# instance fields
.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LI0/G;->e:I

    .line 3
    iput-object p2, p0, LI0/G;->f:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, LI0/G;->g:Ljava/lang/Object;

    if-nez p4, :cond_0

    .line 5
    const-string p4, ""

    :cond_0
    iput-object p4, p0, LI0/G;->h:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, LI0/G;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI0/H;I)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/G;->i:Ljava/lang/Object;

    .line 58
    new-instance p1, LJ/B;

    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 59
    invoke-direct {p1, v1, v0}, LJ/B;-><init>([BI)V

    .line 60
    iput-object p1, p0, LI0/G;->f:Ljava/lang/Object;

    .line 61
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LI0/G;->g:Ljava/lang/Object;

    .line 62
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, LI0/G;->h:Ljava/lang/Object;

    .line 63
    iput p2, p0, LI0/G;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, LI0/G;->e:I

    .line 9
    invoke-static {}, LJ/e;->a()V

    const v1, 0x8b31

    .line 10
    invoke-static {v0, v1, p1}, LI0/G;->a(IILjava/lang/String;)V

    const p1, 0x8b30

    .line 11
    invoke-static {v0, p1, p2}, LI0/G;->a(IILjava/lang/String;)V

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    .line 13
    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 14
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 15
    aget p2, p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to link shader program: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2, p2}, LJ/e;->b(Ljava/lang/String;Z)V

    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 19
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, LI0/G;->h:Ljava/lang/Object;

    .line 20
    new-array p2, v1, [I

    const v2, 0x8b89

    .line 21
    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 22
    aget v0, p2, p1

    new-array v0, v0, [Lcom/brisa/local/j;

    iput-object v0, p0, LI0/G;->f:Ljava/lang/Object;

    move v3, p1

    .line 23
    :goto_1
    aget v0, p2, p1

    if-ge v3, v0, :cond_3

    .line 24
    iget v2, p0, LI0/G;->e:I

    .line 25
    new-array v0, v1, [I

    const v4, 0x8b8a

    .line 26
    invoke-static {v2, v4, v0, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 27
    aget v4, v0, p1

    new-array v11, v4, [B

    .line 28
    new-array v5, v1, [I

    new-array v7, v1, [I

    new-array v9, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 29
    new-instance v0, Ljava/lang/String;

    move v5, p1

    :goto_2
    if-ge v5, v4, :cond_2

    .line 30
    aget-byte v6, v11, v5

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 31
    :cond_2
    :goto_3
    invoke-direct {v0, v11, p1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 32
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 33
    new-instance v2, Lcom/brisa/local/j;

    const/4 v4, 0x5

    .line 34
    invoke-direct {v2, v4}, Lcom/brisa/local/j;-><init>(I)V

    .line 35
    iget-object v4, p0, LI0/G;->f:Ljava/lang/Object;

    check-cast v4, [Lcom/brisa/local/j;

    aput-object v2, v4, v3

    .line 36
    iget-object v4, p0, LI0/G;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, LI0/G;->i:Ljava/lang/Object;

    .line 38
    new-array p2, v1, [I

    .line 39
    iget v0, p0, LI0/G;->e:I

    const v2, 0x8b86

    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 40
    aget v0, p2, p1

    new-array v0, v0, [Lcom/brisa/local/j;

    iput-object v0, p0, LI0/G;->g:Ljava/lang/Object;

    move v3, p1

    .line 41
    :goto_4
    aget v0, p2, p1

    if-ge v3, v0, :cond_6

    .line 42
    iget v2, p0, LI0/G;->e:I

    .line 43
    new-array v0, v1, [I

    const v4, 0x8b87

    .line 44
    invoke-static {v2, v4, v0, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 45
    new-array v9, v1, [I

    .line 46
    aget v4, v0, p1

    new-array v11, v4, [B

    .line 47
    new-array v5, v1, [I

    new-array v7, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 48
    new-instance v0, Ljava/lang/String;

    move v5, p1

    :goto_5
    if-ge v5, v4, :cond_5

    .line 49
    aget-byte v6, v11, v5

    if-nez v6, :cond_4

    move v4, v5

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 50
    :cond_5
    :goto_6
    invoke-direct {v0, v11, p1, v4}, Ljava/lang/String;-><init>([BII)V

    .line 51
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 52
    new-instance v2, Lcom/brisa/local/j;

    const/4 v4, 0x6

    .line 53
    invoke-direct {v2, v4}, Lcom/brisa/local/j;-><init>(I)V

    .line 54
    iget-object v4, p0, LI0/G;->g:Ljava/lang/Object;

    check-cast v4, [Lcom/brisa/local/j;

    aput-object v2, v4, v3

    .line 55
    iget-object v4, p0, LI0/G;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 56
    :cond_6
    invoke-static {}, LJ/e;->a()V

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, LJ/e;->b(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {}, LJ/e;->a()V

    return-void
.end method


# virtual methods
.method public b(LJ/S;Lb0/p;LI0/J;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, LI0/G;->e:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, LJ/e;->a()V

    return p1
.end method

.method public f(LJ/D;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LI0/G;->g:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object v3, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    iget-object v4, v0, LI0/G;->f:Ljava/lang/Object;

    check-cast v4, LJ/B;

    iget-object v5, v0, LI0/G;->i:Ljava/lang/Object;

    check-cast v5, LI0/H;

    iget-object v6, v5, LI0/H;->g:Landroid/util/SparseArray;

    iget-object v7, v5, LI0/H;->h:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v5, LI0/H;->b:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ/S;

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v11

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, LJ/D;->O(I)V

    invoke-virtual {v1}, LJ/D;->H()I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, LJ/D;->O(I)V

    iget-object v14, v4, LJ/B;->b:[B

    invoke-virtual {v1, v10, v14, v9}, LJ/D;->k(I[BI)V

    invoke-virtual {v4, v10}, LJ/B;->m(I)V

    invoke-virtual {v4, v13}, LJ/B;->o(I)V

    const/16 v14, 0xd

    invoke-virtual {v4, v14}, LJ/B;->g(I)I

    move-result v15

    iput v15, v5, LI0/H;->q:I

    iget-object v15, v4, LJ/B;->b:[B

    invoke-virtual {v1, v10, v15, v9}, LJ/D;->k(I[BI)V

    invoke-virtual {v4, v10}, LJ/B;->m(I)V

    const/4 v15, 0x4

    invoke-virtual {v4, v15}, LJ/B;->o(I)V

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, LJ/B;->g(I)I

    move-result v9

    invoke-virtual {v1, v9}, LJ/D;->O(I)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, LJ/D;->a()I

    move-result v9

    :goto_1
    if-lez v9, :cond_21

    iget-object v11, v4, LJ/B;->b:[B

    const/4 v15, 0x5

    invoke-virtual {v1, v10, v11, v15}, LJ/D;->k(I[BI)V

    invoke-virtual {v4, v10}, LJ/B;->m(I)V

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, LJ/B;->g(I)I

    move-result v11

    invoke-virtual {v4, v13}, LJ/B;->o(I)V

    invoke-virtual {v4, v14}, LJ/B;->g(I)I

    move-result v10

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, LJ/B;->o(I)V

    const/16 v14, 0xc

    invoke-virtual {v4, v14}, LJ/B;->g(I)I

    move-result v16

    iget v14, v1, LJ/D;->b:I

    add-int v13, v14, v16

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v21, v17

    move-object/from16 v23, v21

    move/from16 v20, v18

    const/16 v22, 0x0

    :goto_2
    iget v15, v1, LJ/D;->b:I

    move-object/from16 v25, v4

    if-ge v15, v13, :cond_2

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v15

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v19

    iget v4, v1, LJ/D;->b:I

    add-int v4, v4, v19

    if-le v4, v13, :cond_3

    :cond_2
    move-object/from16 v31, v6

    move/from16 v30, v9

    goto/16 :goto_7

    :cond_3
    const/16 v19, 0x87

    const/16 v24, 0x81

    move/from16 v30, v9

    const/4 v9, 0x5

    if-ne v15, v9, :cond_8

    invoke-virtual {v1}, LJ/D;->C()J

    move-result-wide v26

    const-wide/32 v28, 0x41432d33

    cmp-long v9, v26, v28

    if-nez v9, :cond_4

    move/from16 v20, v24

    goto :goto_4

    :cond_4
    const-wide/32 v28, 0x45414333

    cmp-long v9, v26, v28

    if-nez v9, :cond_5

    move/from16 v20, v19

    goto :goto_4

    :cond_5
    const-wide/32 v28, 0x41432d34

    cmp-long v9, v26, v28

    if-nez v9, :cond_6

    :goto_3
    const/16 v20, 0xac

    goto :goto_4

    :cond_6
    const-wide/32 v28, 0x48455643

    cmp-long v9, v26, v28

    if-nez v9, :cond_7

    const/16 v20, 0x24

    :cond_7
    :goto_4
    move/from16 v19, v4

    move-object/from16 v31, v6

    goto/16 :goto_6

    :cond_8
    const/16 v9, 0x6a

    if-ne v15, v9, :cond_9

    move/from16 v19, v4

    move-object/from16 v31, v6

    move/from16 v20, v24

    goto/16 :goto_6

    :cond_9
    const/16 v9, 0x7a

    if-ne v15, v9, :cond_a

    move-object/from16 v31, v6

    move/from16 v20, v19

    move/from16 v19, v4

    goto/16 :goto_6

    :cond_a
    const/16 v9, 0x7f

    if-ne v15, v9, :cond_d

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v9

    const/16 v15, 0x15

    if-ne v9, v15, :cond_b

    goto :goto_3

    :cond_b
    const/16 v15, 0xe

    if-ne v9, v15, :cond_c

    const/16 v20, 0x88

    goto :goto_4

    :cond_c
    const/16 v15, 0x21

    if-ne v9, v15, :cond_7

    const/16 v20, 0x8b

    goto :goto_4

    :cond_d
    const/16 v9, 0x7b

    if-ne v15, v9, :cond_e

    move/from16 v19, v4

    move-object/from16 v31, v6

    const/16 v20, 0x8a

    goto :goto_6

    :cond_e
    const/16 v9, 0xa

    if-ne v15, v9, :cond_f

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v15, 0x3

    invoke-virtual {v1, v15, v9}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v9

    move/from16 v19, v4

    move-object/from16 v31, v6

    move/from16 v22, v9

    goto :goto_6

    :cond_f
    const/4 v0, 0x3

    const/16 v9, 0x59

    if-ne v15, v9, :cond_11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    iget v15, v1, LJ/D;->b:I

    if-ge v15, v4, :cond_10

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v15}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, LJ/D;->A()I

    move/from16 v19, v4

    const/4 v15, 0x4

    new-array v4, v15, [B

    move-object/from16 v31, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v15}, LJ/D;->k(I[BI)V

    new-instance v6, LI0/I;

    invoke-direct {v6, v0, v4}, LI0/I;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v19

    move-object/from16 v6, v31

    const/4 v0, 0x3

    goto :goto_5

    :cond_10
    move/from16 v19, v4

    move-object/from16 v31, v6

    move-object/from16 v23, v9

    const/16 v20, 0x59

    goto :goto_6

    :cond_11
    move/from16 v19, v4

    move-object/from16 v31, v6

    const/16 v0, 0x6f

    if-ne v15, v0, :cond_12

    const/16 v20, 0x101

    :cond_12
    :goto_6
    iget v0, v1, LJ/D;->b:I

    sub-int v4, v19, v0

    invoke-virtual {v1, v4}, LJ/D;->O(I)V

    move-object/from16 v0, p0

    move-object/from16 v4, v25

    move/from16 v9, v30

    move-object/from16 v6, v31

    goto/16 :goto_2

    :goto_7
    invoke-virtual {v1, v13}, LJ/D;->N(I)V

    new-instance v19, LC1/e;

    iget-object v0, v1, LJ/D;->a:[B

    invoke-static {v0, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v24

    invoke-direct/range {v19 .. v24}, LC1/e;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    move-object/from16 v4, v19

    move-object/from16 v0, v21

    const/4 v6, 0x6

    if-eq v11, v6, :cond_13

    const/4 v9, 0x5

    if-ne v11, v9, :cond_14

    :cond_13
    move/from16 v11, v20

    :cond_14
    add-int/lit8 v16, v16, 0x5

    sub-int v9, v30, v16

    invoke-virtual {v7, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v15, 0x3

    goto/16 :goto_a

    :cond_15
    iget-object v6, v5, LI0/H;->e:LZ0/i;

    const-string v13, "video/mp2t"

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-eq v11, v14, :cond_20

    if-eq v11, v15, :cond_1f

    const/4 v14, 0x4

    if-eq v11, v14, :cond_1f

    const/16 v14, 0x15

    if-eq v11, v14, :cond_1e

    const/16 v14, 0x1b

    if-eq v11, v14, :cond_1d

    const/16 v14, 0x24

    if-eq v11, v14, :cond_1c

    const/16 v14, 0x2d

    if-eq v11, v14, :cond_1b

    const/16 v14, 0x59

    if-eq v11, v14, :cond_1a

    const/16 v14, 0xac

    if-eq v11, v14, :cond_19

    const/16 v14, 0x101

    if-eq v11, v14, :cond_18

    const/16 v14, 0x8a

    if-eq v11, v14, :cond_17

    const/16 v14, 0x8b

    if-eq v11, v14, :cond_16

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    :pswitch_0
    move-object/from16 v0, v17

    goto/16 :goto_9

    :pswitch_1
    new-instance v0, LI0/D;

    new-instance v4, LB/A;

    const-string v6, "application/x-scte35"

    const/4 v11, 0x4

    invoke-direct {v4, v6, v11}, LB/A;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4}, LI0/D;-><init>(LI0/C;)V

    goto/16 :goto_9

    :pswitch_2
    new-instance v6, LI0/x;

    new-instance v11, LI0/b;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    const/4 v14, 0x0

    invoke-direct {v11, v4, v14, v0, v13}, LI0/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    :goto_8
    move-object v0, v6

    goto/16 :goto_9

    :pswitch_3
    new-instance v6, LI0/x;

    new-instance v11, LI0/s;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    invoke-direct {v11, v0, v4}, LI0/s;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_8

    :pswitch_4
    new-instance v0, LI0/x;

    new-instance v11, LI0/m;

    new-instance v13, LI0/F;

    invoke-virtual {v6, v4}, LZ0/i;->s(LC1/e;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v13, v6, v4}, LI0/F;-><init>(ILjava/util/List;)V

    invoke-direct {v11, v13}, LI0/m;-><init>(LI0/F;)V

    invoke-direct {v0, v11}, LI0/x;-><init>(LI0/h;)V

    goto/16 :goto_9

    :pswitch_5
    new-instance v6, LI0/x;

    new-instance v11, LI0/e;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    const/4 v14, 0x0

    invoke-direct {v11, v4, v0, v13, v14}, LI0/e;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_8

    :cond_16
    new-instance v6, LI0/x;

    new-instance v11, LI0/f;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    const/16 v13, 0x1520

    invoke-direct {v11, v0, v4, v13}, LI0/f;-><init>(Ljava/lang/String;II)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_8

    :cond_17
    :pswitch_6
    new-instance v6, LI0/x;

    new-instance v11, LI0/f;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    const/16 v13, 0x1000

    invoke-direct {v11, v0, v4, v13}, LI0/f;-><init>(Ljava/lang/String;II)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_8

    :cond_18
    new-instance v0, LI0/D;

    new-instance v4, LB/A;

    const-string v6, "application/vnd.dvb.ait"

    const/4 v11, 0x4

    invoke-direct {v4, v6, v11}, LB/A;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4}, LI0/D;-><init>(LI0/C;)V

    goto/16 :goto_9

    :cond_19
    new-instance v6, LI0/x;

    new-instance v11, LI0/b;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    const/4 v14, 0x1

    invoke-direct {v11, v4, v14, v0, v13}, LI0/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_8

    :cond_1a
    new-instance v0, LI0/x;

    new-instance v6, LI0/g;

    iget-object v4, v4, LC1/e;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-direct {v6, v4}, LI0/g;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v6}, LI0/x;-><init>(LI0/h;)V

    goto :goto_9

    :cond_1b
    new-instance v0, LI0/x;

    new-instance v4, LI0/u;

    invoke-direct {v4}, LI0/u;-><init>()V

    invoke-direct {v0, v4}, LI0/x;-><init>(LI0/h;)V

    goto :goto_9

    :cond_1c
    new-instance v0, LI0/x;

    new-instance v11, LI0/r;

    new-instance v13, LI0/F;

    invoke-virtual {v6, v4}, LZ0/i;->s(LC1/e;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v13, v6, v4}, LI0/F;-><init>(ILjava/util/List;)V

    invoke-direct {v11, v13}, LI0/r;-><init>(LI0/F;)V

    invoke-direct {v0, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_9

    :cond_1d
    new-instance v0, LI0/x;

    new-instance v11, LI0/p;

    new-instance v13, LI0/F;

    invoke-virtual {v6, v4}, LZ0/i;->s(LC1/e;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v13, v6, v4}, LI0/F;-><init>(ILjava/util/List;)V

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14, v14}, LI0/p;-><init>(LI0/F;ZZ)V

    invoke-direct {v0, v11}, LI0/x;-><init>(LI0/h;)V

    goto :goto_9

    :cond_1e
    new-instance v0, LI0/x;

    new-instance v4, LI0/g;

    invoke-direct {v4}, LI0/g;-><init>()V

    invoke-direct {v0, v4}, LI0/x;-><init>(LI0/h;)V

    goto :goto_9

    :cond_1f
    new-instance v6, LI0/x;

    new-instance v11, LI0/t;

    invoke-virtual {v4}, LC1/e;->h()I

    move-result v4

    invoke-direct {v11, v0, v13, v4}, LI0/t;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v6, v11}, LI0/x;-><init>(LI0/h;)V

    goto/16 :goto_8

    :cond_20
    :pswitch_7
    new-instance v0, LI0/x;

    new-instance v11, LI0/j;

    new-instance v14, LI0/F;

    invoke-virtual {v6, v4}, LZ0/i;->s(LC1/e;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v14, v6, v4}, LI0/F;-><init>(ILjava/util/List;)V

    invoke-direct {v11, v14, v13}, LI0/j;-><init>(LI0/F;Ljava/lang/String;)V

    invoke-direct {v0, v11}, LI0/x;-><init>(LI0/h;)V

    :goto_9
    invoke-virtual {v3, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a
    move-object/from16 v0, p0

    move v13, v15

    move-object/from16 v4, v25

    move-object/from16 v6, v31

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/16 v14, 0xd

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_21
    move-object/from16 v31, v6

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_23

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v5, LI0/H;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LI0/K;

    if-eqz v9, :cond_22

    iget-object v10, v5, LI0/H;->l:Lb0/p;

    new-instance v11, LI0/J;

    const/16 v13, 0x2000

    invoke-direct {v11, v12, v1, v13}, LI0/J;-><init>(III)V

    invoke-interface {v9, v8, v10, v11}, LI0/K;->b(LJ/S;Lb0/p;LI0/J;)V

    move-object/from16 v1, v31

    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_22
    move-object/from16 v1, v31

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v1

    goto :goto_b

    :cond_23
    move-object/from16 v4, p0

    move-object/from16 v1, v31

    iget v0, v4, LI0/G;->e:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v14, 0x0

    iput v14, v5, LI0/H;->m:I

    iget-object v0, v5, LI0/H;->l:Lb0/p;

    invoke-interface {v0}, Lb0/p;->e()V

    const/4 v9, 0x1

    iput-boolean v9, v5, LI0/H;->n:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
