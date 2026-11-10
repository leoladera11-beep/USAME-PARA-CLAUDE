.class public final Lcom/brisa/local/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/G;


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public final synthetic d:Lcom/brisa/local/x;


# direct methods
.method public constructor <init>(Lcom/brisa/local/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/w;->d:Lcom/brisa/local/x;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/w;->a:Ljava/io/ByteArrayOutputStream;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/w;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/brisa/local/w;->c:I

    return-void
.end method


# virtual methods
.method public final b(LG/x;)V
    .locals 5

    iget v0, p0, Lcom/brisa/local/w;->c:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/w;->d:Lcom/brisa/local/x;

    iget-object v0, v0, Lcom/brisa/local/x;->g:LL0/e;

    iget-object v1, v0, LL0/e;->f:LL0/f;

    iget v2, v0, LL0/e;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, LL0/e;->i:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LL0/h;

    invoke-direct {v3, v2, p1}, LL0/h;-><init>(ILG/x;)V

    iget-object p1, v1, LL0/f;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LH0/d;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, LH0/d;-><init>(I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, v0, LL0/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, p0, Lcom/brisa/local/w;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No se puede unir este formato sin recodificar."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(LJ/D;II)V
    .locals 2

    :try_start_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, LJ/D;->k(I[BI)V

    invoke-virtual {p0, p2, v0, p3}, Lcom/brisa/local/w;->h(I[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final e(LG/o;IZ)I
    .locals 2

    const v0, 0x8000

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, LG/o;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/brisa/local/w;->h(I[BI)V

    return p1
.end method

.method public final f(JIIILb0/F;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Lcom/brisa/local/w;->d:Lcom/brisa/local/x;

    iget-object v3, v3, Lcom/brisa/local/x;->i:Ljava/util/ArrayDeque;

    if-nez p6, :cond_8

    const/high16 v4, 0x40000000    # 2.0f

    and-int v4, p3, v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/brisa/local/w;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    if-ltz v6, :cond_7

    iget v7, v0, Lcom/brisa/local/w;->c:I

    if-ltz v7, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v7

    const/16 v8, 0x40

    if-ge v7, v8, :cond_7

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    add-int/2addr v1, v6

    iget-object v8, v0, Lcom/brisa/local/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v6

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v13, v11, v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    aget v11, v11, v12

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-lt v13, v11, :cond_0

    goto :goto_0

    :cond_0
    if-le v13, v10, :cond_1

    sub-int/2addr v13, v10

    invoke-virtual {v7, v5, v10, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_0

    :cond_2
    if-ge v10, v1, :cond_3

    sub-int/2addr v1, v10

    invoke-virtual {v7, v5, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    new-instance v14, Lcom/brisa/local/y;

    iget v1, v0, Lcom/brisa/local/w;->c:I

    const v6, -0x10000001

    and-int v19, p3, v6

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-wide/from16 v15, p1

    move/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/brisa/local/y;-><init>(J[BII)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    array-length v1, v5

    sub-int/2addr v1, v2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-lez v2, :cond_4

    invoke-virtual {v4, v5, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v12

    if-le v5, v1, :cond_5

    aget v5, v4, v13

    sub-int/2addr v5, v1

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget v4, v4, v12

    sub-int/2addr v4, v1

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "El archivo contiene muestras no v\u00e1lidas."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Este v\u00eddeo est\u00e1 protegido y no se puede descargar aqu\u00ed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(I[BI)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/brisa/local/w;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v1, p1

    const/high16 v2, 0x1000000

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p3, :cond_0

    add-int/2addr p1, v1

    filled-new-array {v1, p1}, [I

    move-result-object p1

    iget-object p2, p0, Lcom/brisa/local/w;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Una muestra del v\u00eddeo supera el l\u00edmite de memoria seguro."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
