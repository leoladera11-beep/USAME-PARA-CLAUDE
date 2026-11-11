.class public abstract Lo2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/lang/ThreadLocal;

.field public static final e:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lo2/l;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo2/l;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lo2/l;->c:Ljava/util/ArrayList;

    new-instance v0, LD2/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LD2/c;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lo2/l;->d:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo2/l;->e:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Ln2/b;Lo2/k;I)V
    .locals 4

    iget-object v0, p1, Lo2/k;->g:[I

    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const-string v1, ""

    if-ltz v0, :cond_1

    iget-object v2, p1, Lo2/k;->h:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object p1, p1, Lo2/k;->g:[I

    add-int/lit8 v3, v0, 0x1

    aget p1, p1, v3

    if-ne p1, p2, :cond_0

    aget-object p1, v2, v3

    goto :goto_0

    :cond_0
    aget-object p1, v2, v0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_2

    const/16 p2, 0x26

    invoke-virtual {p0, p2}, Ln2/b;->a(C)Ln2/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln2/b;->a(C)Ln2/b;

    return-void

    :cond_2
    const-string p1, "&#x"

    invoke-virtual {p0, p1}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln2/b;->a(C)Ln2/b;

    return-void
.end method

.method public static b(IILjava/nio/charset/CharsetEncoder;)Z
    .locals 2

    invoke-static {p0}, Lz/K;->b(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/high16 p0, 0x10000

    if-ge p1, p0, :cond_0

    int-to-char p0, p1

    invoke-virtual {p2, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lo2/l;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-static {p1, p0, v1}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p1

    invoke-static {p0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const p0, 0xd800

    if-lt p1, p0, :cond_3

    const p0, 0xdfff

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_2
    const/16 p0, 0x80

    if-ge p1, p0, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public static c(Ljava/lang/String;Ln2/b;Lo2/k;Ljava/nio/charset/Charset;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "UTF-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    sget-object v3, Lo2/l;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/charset/CharsetEncoder;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_2
    move-object/from16 v7, p3

    :goto_1
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v7, v3, :cond_1d

    move-object/from16 v11, p0

    invoke-virtual {v11, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    and-int/lit8 v13, p4, 0x4

    const/16 v14, 0x20

    if-eqz v13, :cond_9

    invoke-static {v12}, Ln2/e;->i(I)Z

    move-result v13

    if-eqz v13, :cond_7

    and-int/lit8 v13, p4, 0x8

    if-eqz v13, :cond_4

    if-nez v9, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz v10, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int/lit8 v13, p4, 0x10

    if-eqz v13, :cond_6

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0, v14}, Ln2/b;->a(C)Ln2/b;

    const/4 v10, 0x1

    goto/16 :goto_4

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v0, v14}, Ln2/b;->a(C)Ln2/b;

    const/4 v8, 0x0

    :cond_8
    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_9
    sget-object v13, Lo2/k;->i:Lo2/k;

    const/16 v4, 0xd

    const/16 v6, 0xa

    const/16 v15, 0x9

    if-ne v13, v1, :cond_c

    if-eq v12, v15, :cond_c

    if-eq v12, v6, :cond_c

    if-eq v12, v4, :cond_c

    if-lt v12, v14, :cond_a

    const v14, 0xd7ff

    if-le v12, v14, :cond_c

    :cond_a
    const v14, 0xe000

    if-lt v12, v14, :cond_b

    const v14, 0xfffd

    if-le v12, v14, :cond_c

    :cond_b
    const/high16 v14, 0x10000

    if-lt v12, v14, :cond_1c

    const v14, 0x10ffff

    if-gt v12, v14, :cond_1c

    :cond_c
    int-to-char v14, v12

    const/high16 v4, 0x10000

    if-ge v12, v4, :cond_1a

    if-eq v14, v15, :cond_19

    if-eq v14, v6, :cond_19

    const/16 v4, 0xd

    if-eq v14, v4, :cond_19

    const/16 v4, 0x22

    if-eq v14, v4, :cond_17

    const/16 v4, 0x3c

    if-eq v14, v4, :cond_16

    const/16 v4, 0x3e

    if-eq v14, v4, :cond_15

    const/16 v4, 0xa0

    if-eq v14, v4, :cond_13

    const/16 v4, 0x26

    if-eq v14, v4, :cond_12

    const/16 v4, 0x27

    if-eq v14, v4, :cond_f

    const/16 v6, 0x20

    if-lt v14, v6, :cond_e

    invoke-static {v2, v12, v5}, Lo2/l;->b(IILjava/nio/charset/CharsetEncoder;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v0, v14}, Ln2/b;->a(C)Ln2/b;

    goto/16 :goto_4

    :cond_e
    :goto_3
    invoke-static {v0, v1, v12}, Lo2/l;->a(Ln2/b;Lo2/k;I)V

    goto/16 :goto_4

    :cond_f
    and-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_11

    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_11

    if-ne v1, v13, :cond_10

    const-string v4, "&#x27;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto/16 :goto_4

    :cond_10
    const-string v4, "&apos;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v0, v4}, Ln2/b;->a(C)Ln2/b;

    goto/16 :goto_4

    :cond_12
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_13
    if-eq v1, v13, :cond_14

    const-string v4, "&nbsp;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_14
    const-string v4, "&#xa0;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_15
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_16
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_17
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_18

    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_4

    :cond_18
    invoke-virtual {v0, v14}, Ln2/b;->a(C)Ln2/b;

    goto :goto_4

    :cond_19
    invoke-virtual {v0, v14}, Ln2/b;->a(C)Ln2/b;

    goto :goto_4

    :cond_1a
    invoke-static {v2, v12, v5}, Lo2/l;->b(IILjava/nio/charset/CharsetEncoder;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lo2/l;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    const/4 v6, 0x0

    invoke-static {v12, v4, v6}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v13

    iget v14, v0, Ln2/b;->a:I

    packed-switch v14, :pswitch_data_0

    iget-object v14, v0, Ln2/b;->b:Ljava/lang/Appendable;

    check-cast v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v15, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_0
    :try_start_0
    iget-object v14, v0, Ln2/b;->b:Ljava/lang/Appendable;

    new-instance v15, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v15, v4, v6, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v14, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, LC1/i;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1b
    invoke-static {v0, v1, v12}, Lo2/l;->a(Ln2/b;Lo2/k;I)V

    :cond_1c
    :goto_4
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v7, v4

    goto/16 :goto_2

    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lo2/k;->j:Lo2/k;

    sget-object v1, Lm2/a;->a:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Ln2/b;->e(Ljava/lang/StringBuilder;)Ln2/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p0, v3, v0, v1, v4}, Lo2/l;->c(Ljava/lang/String;Ln2/b;Lo2/k;Ljava/nio/charset/Charset;I)V

    invoke-static {v2}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
