.class public final LC1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[C

.field public static final h:[C

.field public static final i:[C

.field public static final j:[C

.field public static final k:[C

.field public static final l:[C


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Ljava/util/BitSet;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, LC1/g;->g:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, LC1/g;->h:[C

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, LC1/g;->i:[C

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, LC1/g;->j:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, LC1/g;->k:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, LC1/g;->l:[C

    return-void

    :array_0
    .array-data 2
        0x6es
        0x75s
        0x6cs
        0x6cs
    .end array-data

    :array_1
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_4
    .array-data 2
        0x5cs
        0x75s
        0x30s
        0x30s
    .end array-data

    :array_5
    .array-data 2
        0x5cs
        0x75s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, LC1/g;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    iput v1, p0, LC1/g;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, LC1/g;->e:Z

    iput-object v0, p0, LC1/g;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, LC1/g;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, LC1/g;->j(Ljava/lang/String;)V

    iget p1, p0, LC1/g;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, LC1/g;->d:I

    iget-boolean v0, p0, LC1/g;->f:Z

    iget-object v1, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LC1/g;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LC1/g;->e:Z

    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, LC1/g;->k(C)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x5c

    if-eq v3, v0, :cond_6

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    const/16 v2, 0x20

    if-lt v3, v2, :cond_2

    const/16 v2, 0x80

    if-lt v3, v2, :cond_0

    const/16 v2, 0xa0

    if-lt v3, v2, :cond_2

    :cond_0
    const/16 v2, 0x2000

    if-lt v3, v2, :cond_1

    const/16 v2, 0x2100

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, LC1/g;->k(C)V

    goto/16 :goto_2

    :cond_2
    :goto_1
    const/16 v2, 0x100

    sget-object v4, LC1/g;->j:[C

    if-ge v3, v2, :cond_3

    sget-object v2, LC1/g;->k:[C

    invoke-virtual {p0, v2}, LC1/g;->m([C)V

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    and-int/lit8 v2, v3, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    goto :goto_2

    :cond_3
    sget-object v2, LC1/g;->l:[C

    invoke-virtual {p0, v2}, LC1/g;->m([C)V

    shr-int/lit8 v2, v3, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    shr-int/lit8 v2, v3, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    and-int/lit8 v2, v3, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, LC1/g;->k(C)V

    goto :goto_2

    :pswitch_0
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, LC1/g;->l(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, LC1/g;->l(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    invoke-virtual {p0, v2}, LC1/g;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_5

    invoke-virtual {p0, v4}, LC1/g;->k(C)V

    :cond_5
    invoke-virtual {p0, v3}, LC1/g;->k(C)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v4}, LC1/g;->k(C)V

    invoke-virtual {p0, v3}, LC1/g;->k(C)V

    goto :goto_2

    :cond_7
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, LC1/g;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, LC1/g;->l(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget v0, p0, LC1/g;->d:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LC1/g;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LC1/g;->e:Z

    iget v0, p0, LC1/g;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LC1/g;->d:I

    iget-object v1, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, LC1/g;->f:Z

    return-void

    :cond_1
    new-instance v0, LC1/i;

    const-string v1, "Invalid call to end()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, LC1/g;->b:Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v1, p0, LC1/g;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LC1/i;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e(Ljava/lang/String;Ljava/util/Map;)LC1/g;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, LC1/g;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LC1/g;->g(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance p1, LC1/i;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "null"

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid key type for map: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, LC1/g;->j(Ljava/lang/String;)V

    sget-object p2, LC1/g;->g:[C

    invoke-virtual {p0, p2}, LC1/g;->m([C)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, LC1/g;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p0, p2}, LC1/g;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LC1/g;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, LC1/g;->p(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/Collection;

    if-nez p2, :cond_7

    invoke-virtual {p0}, LC1/g;->i()V

    iget p2, p0, LC1/g;->d:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, LC1/g;->d:I

    iget-boolean v1, p0, LC1/g;->f:Z

    iget-object v3, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v3, p2, v1}, Ljava/util/BitSet;->set(IZ)V

    iput-boolean v2, p0, LC1/g;->f:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, LC1/g;->e:Z

    const/16 p2, 0x5b

    invoke-virtual {p0, p2}, LC1/g;->k(C)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p2}, LC1/g;->a(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LC1/g;->n(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, LC1/g;->c()V

    goto/16 :goto_1

    :cond_9
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p2, v0}, LC1/g;->e(Ljava/lang/String;Ljava/util/Map;)LC1/g;

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2}, LC1/g;->a(Ljava/lang/String;)V

    :goto_5
    if-ge v2, v1, :cond_b

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, LC1/g;->n(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, LC1/g;->c()V

    goto/16 :goto_1

    :cond_c
    new-instance p1, LC1/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to handle type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-virtual {p0}, LC1/g;->c()V

    return-object p0
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, LC1/g;->i()V

    iget v0, p0, LC1/g;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LC1/g;->d:I

    iget-boolean v1, p0, LC1/g;->f:Z

    iget-object v2, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LC1/g;->f:Z

    iput-boolean v0, p0, LC1/g;->e:Z

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, LC1/g;->j(Ljava/lang/String;)V

    iget p1, p0, LC1/g;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, LC1/g;->d:I

    iget-boolean v0, p0, LC1/g;->f:Z

    iget-object v1, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v1, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LC1/g;->f:Z

    iput-boolean p1, p0, LC1/g;->e:Z

    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, LC1/g;->k(C)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, LC1/g;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LC1/g;->e:Z

    return-void

    :cond_0
    iget v0, p0, LC1/g;->d:I

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, LC1/g;->k(C)V

    return-void

    :cond_1
    new-instance v0, LC1/i;

    const-string v1, "Invalid call to emit a value in a finished JSON writer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, LC1/g;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LC1/g;->h()V

    return-void

    :cond_0
    new-instance v0, LC1/i;

    const-string v1, "Invalid call to emit a keyless value while writing an object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, LC1/g;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LC1/g;->h()V

    invoke-virtual {p0, p1}, LC1/g;->b(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, LC1/g;->k(C)V

    return-void

    :cond_0
    new-instance p1, LC1/i;

    const-string v0, "Invalid call to emit a key value while not writing an object"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(C)V
    .locals 1

    iget-object v0, p0, LC1/g;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, LC1/g;->d()V

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LC1/g;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, LC1/g;->d()V

    :cond_0
    return-void
.end method

.method public final m([C)V
    .locals 1

    iget-object v0, p0, LC1/g;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, LC1/g;->d()V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, LC1/g;->i()V

    sget-object p1, LC1/g;->g:[C

    invoke-virtual {p0, p1}, LC1/g;->m([C)V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, LC1/g;->i()V

    invoke-virtual {p0, p1}, LC1/g;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0}, LC1/g;->i()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LC1/g;->l(Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, LC1/g;->i()V

    if-eqz p1, :cond_3

    sget-object p1, LC1/g;->h:[C

    goto :goto_0

    :cond_3
    sget-object p1, LC1/g;->i:[C

    :goto_0
    invoke-virtual {p0, p1}, LC1/g;->m([C)V

    return-void

    :cond_4
    instance-of v0, p1, Ljava/util/Collection;

    const/16 v1, 0x5b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, LC1/g;->i()V

    iget v0, p0, LC1/g;->d:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, LC1/g;->d:I

    iget-boolean v4, p0, LC1/g;->f:Z

    iget-object v5, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v5, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    iput-boolean v2, p0, LC1/g;->f:Z

    iput-boolean v3, p0, LC1/g;->e:Z

    invoke-virtual {p0, v1}, LC1/g;->k(C)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LC1/g;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, LC1/g;->c()V

    return-void

    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, LC1/g;->e(Ljava/lang/String;Ljava/util/Map;)LC1/g;

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, LC1/g;->i()V

    iget v4, p0, LC1/g;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, LC1/g;->d:I

    iget-boolean v5, p0, LC1/g;->f:Z

    iget-object v6, p0, LC1/g;->c:Ljava/util/BitSet;

    invoke-virtual {v6, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    iput-boolean v2, p0, LC1/g;->f:Z

    iput-boolean v3, p0, LC1/g;->e:Z

    invoke-virtual {p0, v1}, LC1/g;->k(C)V

    :goto_2
    if-ge v2, v0, :cond_8

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LC1/g;->n(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, LC1/g;->c()V

    return-void

    :cond_9
    new-instance v0, LC1/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to handle type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, LC1/g;->j(Ljava/lang/String;)V

    sget-object p1, LC1/g;->g:[C

    invoke-virtual {p0, p1}, LC1/g;->m([C)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LC1/g;->j(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LC1/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, LC1/g;->j(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, LC1/g;->h:[C

    goto :goto_0

    :cond_0
    sget-object p1, LC1/g;->i:[C

    :goto_0
    invoke-virtual {p0, p1}, LC1/g;->m([C)V

    return-void
.end method
