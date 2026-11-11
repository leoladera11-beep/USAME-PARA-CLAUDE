.class public LC2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/d;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, LC2/b;->e:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LC2/b;->j:Ljava/lang/Object;

    .line 36
    const-string v0, "GET"

    iput-object v0, p0, LC2/b;->f:Ljava/lang/Object;

    .line 37
    new-instance v0, LZ0/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LZ0/i;-><init>(I)V

    iput-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LE0/c;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LC2/b;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LC2/b;->f:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, LC2/b;->i:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, LC2/b;->j:Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, LC2/b;->h:Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, LE0/c;->d(Ljava/util/TreeSet;Z)V

    .line 9
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 10
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    .line 11
    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, LC2/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/y1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LC2/b;->e:I

    .line 38
    iput-object p1, p0, LC2/b;->j:Ljava/lang/Object;

    iput v0, p0, LC2/b;->e:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC2/b;->i:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LC2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LR0/x;)V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, LC2/b;->e:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, LJ/u;

    const/16 v1, 0x1e

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LJ/u;-><init>(II)V

    iput-object v0, p0, LC2/b;->f:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC2/b;->g:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, LC2/b;->i:Ljava/lang/Object;

    .line 27
    new-instance p1, La1/g;

    invoke-direct {p1, p0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LC2/b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC2/b;->e:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LC2/b;->f:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, LC2/b;->g:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, LC2/b;->h:Ljava/lang/Object;

    .line 32
    iput-object p4, p0, LC2/b;->i:Ljava/lang/Object;

    .line 33
    iput-object p5, p0, LC2/b;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LC2/b;->e:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, LC2/b;->f:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, LC2/b;->g:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, LC2/b;->h:Ljava/lang/Object;

    .line 17
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iput-object p4, p0, LC2/b;->j:Ljava/lang/Object;

    .line 19
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iput-object p1, p0, LC2/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    iput p1, p0, LC2/b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    iget-object v0, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, LJ/W;->a([JJZ)I

    move-result p1

    array-length p2, v0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b()LM0/r0;
    .locals 7

    iget-object v0, p0, LC2/b;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LW1/m;

    if-eqz v2, :cond_1

    iget-object v0, p0, LC2/b;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, LZ0/i;

    invoke-virtual {v0}, LZ0/i;->k()LW1/k;

    move-result-object v4

    iget-object v0, p0, LC2/b;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LW1/t;

    iget-object v0, p0, LC2/b;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    sget-object v1, LX1/b;->a:[B

    const-string v1, "<this>"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LF1/r;->e:LF1/r;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "{\n    Collections.unmodi\u2026(LinkedHashMap(this))\n  }"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, LM0/r0;

    invoke-direct/range {v1 .. v6}, LM0/r0;-><init>(LW1/m;Ljava/lang/String;LW1/k;LW1/t;Ljava/util/Map;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)J
    .locals 3

    iget-object v0, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public d(I)Z
    .locals 8

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/a;

    iget v5, v4, LR0/a;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, LR0/a;->c:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, LC2/b;->j(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, LR0/a;->b:I

    iget v4, v4, LR0/a;->c:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, LC2/b;->j(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    :goto_2
    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public e(J)Ljava/util/List;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, LC2/b;->f:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, LE0/c;

    iget-object v1, v0, LC2/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v3, v0, LC2/b;->i:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/util/HashMap;

    iget-object v3, v0, LC2/b;->j:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ljava/util/HashMap;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, LE0/c;->h:Ljava/lang/String;

    move-wide/from16 v4, p1

    invoke-virtual {v2, v4, v5, v3, v10}, LE0/c;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    iget-object v6, v2, LE0/c;->h:Ljava/lang/String;

    move-wide/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, LE0/c;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    iget-object v3, v2, LE0/c;->h:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v8

    move-object v8, v7

    move-object v7, v3

    move-wide/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, LE0/c;->h(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    move-object v7, v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    array-length v8, v5

    invoke-static {v5, v4, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE0/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, LE0/g;->b:F

    iget v15, v3, LE0/g;->c:F

    iget v5, v3, LE0/g;->e:I

    iget v8, v3, LE0/g;->f:F

    iget v10, v3, LE0/g;->g:F

    iget v3, v3, LE0/g;->j:I

    move/from16 v23, v10

    new-instance v10, LI/b;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x80000000

    const v21, -0x800001

    const/16 v24, 0x0

    const/high16 v25, -0x1000000

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v13, v12

    move/from16 v26, v3

    move/from16 v18, v4

    move/from16 v17, v5

    move/from16 v22, v8

    invoke-direct/range {v10 .. v28}, LI/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LE0/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LI/a;

    iget-object v7, v3, LI/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v9, LE0/a;

    invoke-virtual {v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [LE0/a;

    array-length v9, v8

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const-string v13, ""

    invoke-virtual {v7, v12, v11, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_3
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x20

    if-ge v8, v9, :cond_5

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_4

    add-int/lit8 v9, v8, 0x1

    move v11, v9

    :goto_4
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v11, v9

    if-lez v11, :cond_4

    add-int/2addr v11, v8

    invoke-virtual {v7, v8, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_6

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_6

    invoke-virtual {v7, v4, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v8, v4

    :goto_5
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v9

    const/16 v12, 0xa

    if-ge v8, v11, :cond_8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_7

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_7

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v7, v11, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v8, v4

    :goto_6
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v9

    if-ge v8, v11, :cond_b

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_a

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_a

    invoke-virtual {v7, v8, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_c

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_c

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v7, v5, LE0/g;->c:F

    iget v8, v5, LE0/g;->d:I

    iput v7, v3, LI/a;->e:F

    iput v8, v3, LI/a;->f:I

    iget v7, v5, LE0/g;->e:I

    iput v7, v3, LI/a;->g:I

    iget v7, v5, LE0/g;->b:F

    iput v7, v3, LI/a;->h:F

    iget v7, v5, LE0/g;->f:F

    iput v7, v3, LI/a;->l:F

    iget v7, v5, LE0/g;->i:F

    iget v8, v5, LE0/g;->h:I

    iput v7, v3, LI/a;->k:F

    iput v8, v3, LI/a;->j:I

    iget v5, v5, LE0/g;->j:I

    iput v5, v3, LI/a;->p:I

    invoke-virtual {v3}, LI/a;->a()LI/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, LC2/b;->i:Ljava/lang/Object;

    check-cast v0, LR0/x;

    iget-object v1, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, LC2/b;->i:Ljava/lang/Object;

    check-cast v4, LR0/x;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/a;

    invoke-virtual {v4, v5}, LR0/x;->a(LR0/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, LC2/b;->p(Ljava/util/ArrayList;)V

    iget-object v1, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/a;

    iget v5, v4, LR0/a;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, LR0/x;->a(LR0/a;)V

    iget v5, v4, LR0/a;->b:I

    iget v4, v4, LR0/a;->c:I

    invoke-virtual {v0, v5, v4}, LR0/x;->e(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, LR0/x;->a(LR0/a;)V

    iget v5, v4, LR0/a;->b:I

    iget v4, v4, LR0/a;->c:I

    invoke-virtual {v0, v5, v4}, LR0/x;->c(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, LR0/x;->a(LR0/a;)V

    iget v5, v4, LR0/a;->b:I

    iget v4, v4, LR0/a;->c:I

    iget-object v7, v0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->K(IIZ)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget v6, v5, LR0/O;->b:I

    add-int/2addr v6, v4

    iput v6, v5, LR0/O;->b:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, LR0/x;->a(LR0/a;)V

    iget v5, v4, LR0/a;->b:I

    iget v4, v4, LR0/a;->c:I

    invoke-virtual {v0, v5, v4}, LR0/x;->d(II)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, LC2/b;->p(Ljava/util/ArrayList;)V

    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0
.end method

.method public h(LR0/a;)V
    .locals 11

    iget v0, p1, LR0/a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget v2, p1, LR0/a;->b:I

    invoke-virtual {p0, v2, v0}, LC2/b;->r(II)I

    move-result v0

    iget v2, p1, LR0/a;->b:I

    iget v3, p1, LR0/a;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v6, v1

    move v7, v6

    :goto_1
    iget v8, p1, LR0/a;->c:I

    if-ge v6, v8, :cond_6

    iget v8, p1, LR0/a;->b:I

    mul-int v9, v3, v6

    add-int/2addr v9, v8

    iget v8, p1, LR0/a;->a:I

    invoke-virtual {p0, v9, v8}, LC2/b;->r(II)I

    move-result v8

    iget v9, p1, LR0/a;->a:I

    if-eq v9, v4, :cond_3

    if-eq v9, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-ne v8, v10, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v0, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0, v9, v0, v7}, LC2/b;->n(III)LR0/a;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, LC2/b;->i(LR0/a;I)V

    iget-object v9, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v9, LJ/u;

    invoke-virtual {v9, v0}, LJ/u;->i(Ljava/lang/Object;)V

    iget v0, p1, LR0/a;->a:I

    if-ne v0, v5, :cond_5

    add-int/2addr v2, v7

    :cond_5
    move v7, v1

    move v0, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v1, LJ/u;

    invoke-virtual {v1, p1}, LJ/u;->i(Ljava/lang/Object;)V

    if-lez v7, :cond_7

    iget p1, p1, LR0/a;->a:I

    invoke-virtual {p0, p1, v0, v7}, LC2/b;->n(III)LR0/a;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, LC2/b;->i(LR0/a;I)V

    iget-object v0, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    invoke-virtual {v0, p1}, LJ/u;->i(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(LR0/a;I)V
    .locals 3

    iget-object v0, p0, LC2/b;->i:Ljava/lang/Object;

    check-cast v0, LR0/x;

    invoke-virtual {v0, p1}, LR0/x;->a(LR0/a;)V

    iget v1, p1, LR0/a;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, p2, p1}, LR0/x;->c(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p1, LR0/a;->c:I

    iget-object v0, v0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->K(IIZ)V

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget v0, p2, LR0/O;->b:I

    add-int/2addr v0, p1

    iput v0, p2, LR0/O;->b:I

    return-void
.end method

.method public j(II)I
    .locals 6

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/a;

    iget v3, v2, LR0/a;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, LR0/a;->b:I

    if-ne v3, p1, :cond_0

    iget p1, v2, LR0/a;->c:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v2, v2, LR0/a;->c:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v4, v2, LR0/a;->b:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v2, v2, LR0/a;->c:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v2, v2, LR0/a;->c:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public k()LN0/P;
    .locals 2

    iget-object v0, p0, LC2/b;->i:Ljava/lang/Object;

    check-cast v0, LM0/y1;

    iget-object v0, v0, LM0/y1;->f:LN0/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, LN0/m;->d:LN0/P;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, LZ0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LW1/t;->a(Ljava/lang/String;)V

    invoke-static {p2, p1}, LW1/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LZ0/i;->y(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, LZ0/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;LW1/t;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "method "

    if-nez p2, :cond_1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PROPPATCH"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "REPORT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, " must have a request body."

    invoke-static {v0, p1, p2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p1}, Lcom/brisa/local/v;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-object p1, p0, LC2/b;->f:Ljava/lang/Object;

    iput-object p2, p0, LC2/b;->i:Ljava/lang/Object;

    return-void

    :cond_2
    const-string p2, " must not have a request body."

    invoke-static {v0, p1, p2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(III)LR0/a;
    .locals 1

    iget-object v0, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    invoke-virtual {v0}, LJ/u;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/a;

    if-nez v0, :cond_0

    new-instance v0, LR0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, LR0/a;->a:I

    iput p2, v0, LR0/a;->b:I

    iput p3, v0, LR0/a;->c:I

    return-object v0

    :cond_0
    iput p1, v0, LR0/a;->a:I

    iput p2, v0, LR0/a;->b:I

    iput p3, v0, LR0/a;->c:I

    return-object v0
.end method

.method public o(LR0/a;)V
    .locals 4

    iget-object v0, p0, LC2/b;->i:Ljava/lang/Object;

    check-cast v0, LR0/x;

    iget-object v1, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, LR0/a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/x;->e(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/x;->c(II)V

    return-void

    :cond_2
    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    iget-object v0, v0, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->K(IIZ)V

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    return-void

    :cond_3
    iget v1, p1, LR0/a;->b:I

    iget p1, p1, LR0/a;->c:I

    invoke-virtual {v0, v1, p1}, LR0/x;->d(II)V

    return-void
.end method

.method public p(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v3, LJ/u;

    invoke-virtual {v3, v2}, LJ/u;->i(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, LZ0/i;

    invoke-virtual {v0, p1}, LZ0/i;->y(Ljava/lang/String;)V

    return-void
.end method

.method public r(II)I
    .locals 9

    iget-object v0, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/a;

    iget v5, v4, LR0/a;->a:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    iget v3, v4, LR0/a;->b:I

    iget v5, v4, LR0/a;->c:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, LR0/a;->c:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, LR0/a;->c:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, LR0/a;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, LR0/a;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, LR0/a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, LR0/a;->c:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, LR0/a;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, LR0/a;->c:I

    goto :goto_4

    :cond_8
    iget v3, v4, LR0/a;->b:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    iget v3, v4, LR0/a;->c:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    iget v3, v4, LR0/a;->c:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, LR0/a;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, LR0/a;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/a;

    iget v2, v1, LR0/a;->a:I

    if-ne v2, v3, :cond_f

    iget v2, v1, LR0/a;->c:I

    iget v4, v1, LR0/a;->b:I

    if-eq v2, v4, :cond_e

    if-gez v2, :cond_10

    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, LJ/u;

    invoke-virtual {v2, v1}, LJ/u;->i(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    iget v2, v1, LR0/a;->c:I

    if-gtz v2, :cond_10

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, LJ/u;

    invoke-virtual {v2, v1}, LJ/u;->i(Ljava/lang/Object;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public s(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    invoke-static {p1, v0, v1}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "<this>"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LW1/l;

    invoke-direct {v0}, LW1/l;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, LW1/l;->d(LW1/m;Ljava/lang/String;)V

    invoke-virtual {v0}, LW1/l;->b()LW1/m;

    move-result-object p1

    iput-object p1, p0, LC2/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, LC2/b;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC2/b;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FontRequest {mProviderAuthority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LC2/b;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mProviderPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mQuery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LC2/b;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCertificates:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, " \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "}mCertificatesArray: 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
