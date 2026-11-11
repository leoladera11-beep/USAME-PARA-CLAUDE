.class public final LG0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/m;


# static fields
.field public static final i:Ly0/a;


# instance fields
.field public final e:LJ/D;

.field public final f:LJ/D;

.field public final g:LG0/a;

.field public h:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ly0/a;

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v5, Lu1/C0;->i:Lu1/C0;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Ly0/a;-><init>(JJLjava/util/List;)V

    sput-object v0, LG0/b;->i:Ly0/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/D;

    invoke-direct {v0}, LJ/D;-><init>()V

    iput-object v0, p0, LG0/b;->e:LJ/D;

    new-instance v0, LJ/D;

    invoke-direct {v0}, LJ/D;-><init>()V

    iput-object v0, p0, LG0/b;->f:LJ/D;

    new-instance v0, LG0/a;

    invoke-direct {v0}, LG0/a;-><init>()V

    iput-object v0, p0, LG0/b;->g:LG0/a;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    const-string v1, "\\r?\\n"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    const-string v6, "palette: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "VobsubParser"

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, v0, LG0/a;->f:[I

    move v6, v2

    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_2

    iget-object v8, v0, LG0/a;->f:[I

    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v10, "Parsing color failed"

    invoke-static {v7, v10, v9}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v2

    :goto_2
    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring malformed IDX size line: \'"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :try_start_1
    aget-object v5, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, LG0/a;->g:I

    const/4 v5, 0x1

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, LG0/a;->h:I

    iput-boolean v5, v0, LG0/a;->d:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v6, "Parsing IDX failed"

    invoke-static {v7, v6, v5}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final l([BIILy0/l;LJ/k;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int v2, v1, p3

    iget-object v3, v0, LG0/b;->e:LJ/D;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, LJ/D;->L([BI)V

    invoke-virtual {v3, v1}, LJ/D;->N(I)V

    iget-object v1, v0, LG0/b;->h:Ljava/util/zip/Inflater;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v1, v0, LG0/b;->h:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v1, v0, LG0/b;->h:Ljava/util/zip/Inflater;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v3}, LJ/D;->a()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v3}, LJ/D;->j()I

    move-result v2

    const/16 v4, 0x78

    if-ne v2, v4, :cond_1

    iget-object v2, v0, LG0/b;->f:LJ/D;

    invoke-static {v3, v2, v1}, LJ/W;->B(LJ/D;LJ/D;Ljava/util/zip/Inflater;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, LJ/D;->a:[B

    iget v2, v2, LJ/D;->c:I

    invoke-virtual {v3, v1, v2}, LJ/D;->L([BI)V

    :cond_1
    iget-object v1, v0, LG0/b;->g:LG0/a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v1, LG0/a;->b:J

    iput-wide v4, v1, LG0/a;->c:J

    const/4 v2, 0x0

    iput-boolean v2, v1, LG0/a;->e:Z

    const/4 v6, 0x0

    iput-object v6, v1, LG0/a;->i:Landroid/graphics/Rect;

    const/4 v7, -0x1

    iput v7, v1, LG0/a;->j:I

    iput v7, v1, LG0/a;->k:I

    invoke-virtual {v3}, LJ/D;->a()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_16

    invoke-virtual {v3}, LJ/D;->H()I

    move-result v10

    if-eq v10, v8, :cond_2

    goto/16 :goto_11

    :cond_2
    iget-object v8, v1, LG0/a;->f:[I

    const-string v11, "VobsubParser"

    if-nez v8, :cond_3

    const-string v8, "Skipping SPU (no palette)"

    invoke-static {v11, v8}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move/from16 p4, v2

    move-wide/from16 p1, v4

    goto/16 :goto_a

    :cond_3
    iget-boolean v8, v1, LG0/a;->d:Z

    if-nez v8, :cond_4

    const-string v8, "Skipping SPU (no plane)"

    invoke-static {v11, v8}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v8, v3, LJ/D;->b:I

    sub-int/2addr v8, v9

    invoke-virtual {v3}, LJ/D;->H()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v3, v12}, LJ/D;->N(I)V

    :goto_1
    invoke-virtual {v3}, LJ/D;->a()I

    move-result v12

    const/4 v13, 0x4

    if-ge v12, v13, :cond_5

    move/from16 p4, v2

    move/from16 v12, p4

    move-wide/from16 p1, v4

    goto/16 :goto_9

    :cond_5
    iget v12, v3, LJ/D;->b:I

    invoke-virtual {v3}, LJ/D;->H()I

    move-result v14

    mul-int/lit16 v14, v14, 0x2710

    invoke-virtual {v3}, LJ/D;->H()I

    move-result v15

    add-int/2addr v15, v8

    if-eq v15, v12, :cond_6

    iget v12, v3, LJ/D;->c:I

    if-ge v15, v12, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    move v12, v2

    :goto_2
    if-eqz v12, :cond_7

    move-wide/from16 p1, v4

    move v4, v15

    goto :goto_3

    :cond_7
    move-wide/from16 p1, v4

    iget v4, v3, LJ/D;->c:I

    :goto_3
    const/4 v5, 0x1

    :goto_4
    iget v6, v3, LJ/D;->b:I

    if-ge v6, v4, :cond_e

    if-eqz v5, :cond_e

    int-to-long v5, v14

    move/from16 p4, v2

    iget-object v2, v1, LG0/a;->a:[I

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v7

    const/16 v17, 0x1

    const/16 v10, 0xff

    if-eq v7, v10, :cond_8

    const/4 v10, 0x3

    packed-switch v7, :pswitch_data_0

    const-string v2, "Unrecognized command: "

    invoke-static {v2, v11, v7}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    :goto_5
    move/from16 v5, p4

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v3}, LJ/D;->a()I

    move-result v2

    if-ge v2, v13, :cond_9

    const-string v2, "Incomplete offsets command"

    invoke-static {v11, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, LJ/D;->H()I

    move-result v2

    iput v2, v1, LG0/a;->j:I

    invoke-virtual {v3}, LJ/D;->H()I

    move-result v2

    iput v2, v1, LG0/a;->k:I

    :goto_6
    move/from16 v5, v17

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {v3}, LJ/D;->a()I

    move-result v2

    const/4 v5, 0x6

    if-ge v2, v5, :cond_a

    const-string v2, "Incomplete area command"

    invoke-static {v11, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, LJ/D;->A()I

    move-result v2

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v5

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v6

    shl-int/2addr v2, v13

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v2, v7

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v6

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v7

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v10

    shl-int/2addr v6, v13

    shr-int/lit8 v18, v7, 0x4

    or-int v6, v6, v18

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v10

    new-instance v10, Landroid/graphics/Rect;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v10, v2, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v1, LG0/a;->i:Landroid/graphics/Rect;

    goto :goto_6

    :pswitch_2
    invoke-virtual {v3}, LJ/D;->a()I

    move-result v5

    if-ge v5, v9, :cond_b

    const-string v2, "Incomplete alpha command"

    invoke-static {v11, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-boolean v5, v1, LG0/a;->e:Z

    if-nez v5, :cond_c

    const-string v2, "Ignoring alpha command before color command"

    invoke-static {v11, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v3}, LJ/D;->A()I

    move-result v5

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v6

    aget v7, v2, v10

    move/from16 v18, v10

    shr-int/lit8 v10, v5, 0x4

    invoke-static {v7, v10}, LG0/a;->c(II)I

    move-result v7

    aput v7, v2, v18

    aget v7, v2, v9

    and-int/lit8 v5, v5, 0xf

    invoke-static {v7, v5}, LG0/a;->c(II)I

    move-result v5

    aput v5, v2, v9

    aget v5, v2, v17

    shr-int/lit8 v7, v6, 0x4

    invoke-static {v5, v7}, LG0/a;->c(II)I

    move-result v5

    aput v5, v2, v17

    aget v5, v2, p4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v5, v6}, LG0/a;->c(II)I

    move-result v5

    aput v5, v2, p4

    goto/16 :goto_6

    :pswitch_3
    move/from16 v18, v10

    invoke-virtual {v3}, LJ/D;->a()I

    move-result v5

    if-ge v5, v9, :cond_d

    const-string v2, "Incomplete color command"

    invoke-static {v11, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v3}, LJ/D;->A()I

    move-result v5

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v6

    iget-object v7, v1, LG0/a;->f:[I

    shr-int/lit8 v10, v5, 0x4

    invoke-static {v10, v7}, LG0/a;->a(I[I)I

    move-result v7

    aput v7, v2, v18

    iget-object v7, v1, LG0/a;->f:[I

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v7}, LG0/a;->a(I[I)I

    move-result v5

    aput v5, v2, v9

    iget-object v5, v1, LG0/a;->f:[I

    shr-int/lit8 v7, v6, 0x4

    invoke-static {v7, v5}, LG0/a;->a(I[I)I

    move-result v5

    aput v5, v2, v17

    iget-object v5, v1, LG0/a;->f:[I

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6, v5}, LG0/a;->a(I[I)I

    move-result v5

    aput v5, v2, p4

    move/from16 v2, v17

    iput-boolean v2, v1, LG0/a;->e:Z

    :goto_7
    :pswitch_4
    const/4 v5, 0x1

    goto :goto_8

    :pswitch_5
    iput-wide v5, v1, LG0/a;->c:J

    goto :goto_7

    :pswitch_6
    iput-wide v5, v1, LG0/a;->b:J

    goto :goto_7

    :goto_8
    move/from16 v2, p4

    const/4 v7, -0x1

    goto/16 :goto_4

    :cond_e
    move/from16 p4, v2

    if-eqz v12, :cond_f

    invoke-virtual {v3, v15}, LJ/D;->N(I)V

    :cond_f
    :goto_9
    if-nez v12, :cond_15

    :goto_a
    iget-object v2, v1, LG0/a;->f:[I

    if-eqz v2, :cond_11

    iget-boolean v2, v1, LG0/a;->d:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v1, LG0/a;->e:Z

    if-eqz v2, :cond_11

    iget-object v2, v1, LG0/a;->i:Landroid/graphics/Rect;

    if-eqz v2, :cond_11

    iget v4, v1, LG0/a;->j:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    iget v4, v1, LG0/a;->k:I

    if-eq v4, v5, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v2, v9, :cond_11

    iget-object v2, v1, LG0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v2, v9, :cond_10

    goto/16 :goto_b

    :cond_10
    iget-object v2, v1, LG0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v4

    new-array v4, v5, [I

    new-instance v5, LJ/B;

    invoke-direct {v5}, LJ/B;-><init>()V

    iget v6, v1, LG0/a;->j:I

    invoke-virtual {v3, v6}, LJ/D;->N(I)V

    invoke-virtual {v5, v3}, LJ/B;->k(LJ/D;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6, v2, v4}, LG0/a;->b(LJ/B;ZLandroid/graphics/Rect;[I)V

    iget v6, v1, LG0/a;->k:I

    invoke-virtual {v3, v6}, LJ/D;->N(I)V

    invoke-virtual {v5, v3}, LJ/B;->k(LJ/D;)V

    move/from16 v7, p4

    invoke-virtual {v1, v5, v7, v2, v4}, LG0/a;->b(LJ/B;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, LG0/a;->g:I

    int-to-float v4, v4

    div-float v15, v3, v4

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, LG0/a;->h:I

    int-to-float v4, v4

    div-float v12, v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, LG0/a;->g:I

    int-to-float v4, v4

    div-float v19, v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, LG0/a;->h:I

    int-to-float v3, v3

    div-float v20, v2, v3

    new-instance v7, LI/b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    const v18, -0x800001

    const/16 v21, 0x0

    const/high16 v22, -0x1000000

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v10, v9

    move/from16 v23, v17

    invoke-direct/range {v7 .. v25}, LI/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    move-object v6, v7

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v6, 0x0

    :goto_c
    iget-wide v2, v1, LG0/a;->c:J

    cmp-long v4, v2, p1

    if-eqz v4, :cond_13

    iget-wide v4, v1, LG0/a;->b:J

    cmp-long v7, v4, p1

    if-eqz v7, :cond_12

    cmp-long v7, v2, v4

    if-lez v7, :cond_12

    sub-long v4, v2, v4

    move-wide v10, v4

    goto :goto_d

    :cond_12
    move-wide v10, v2

    goto :goto_d

    :cond_13
    move-wide/from16 v10, p1

    :goto_d
    new-instance v7, Ly0/a;

    if-eqz v6, :cond_14

    invoke-static {v6}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    :goto_e
    move-object v12, v2

    goto :goto_f

    :cond_14
    sget-object v2, Lu1/C0;->i:Lu1/C0;

    goto :goto_e

    :goto_f
    iget-wide v8, v1, LG0/a;->b:J

    invoke-direct/range {v7 .. v12}, Ly0/a;-><init>(JJLjava/util/List;)V

    :goto_10
    move-object/from16 v1, p5

    goto :goto_12

    :cond_15
    move-wide/from16 v4, p1

    move/from16 v2, p4

    const/4 v6, 0x0

    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_16
    :goto_11
    sget-object v7, LG0/b;->i:Ly0/a;

    goto :goto_10

    :goto_12
    invoke-interface {v1, v7}, LJ/k;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
