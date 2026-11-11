.class public abstract LX1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:LW1/k;

.field public static final c:LW1/w;

.field public static final d:Lj2/o;

.field public static final e:Ljava/util/TimeZone;

.field public static final f:LO1/f;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, LX1/b;->a:[B

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v2}, LW1/t;->k([Ljava/lang/String;)LW1/k;

    move-result-object v2

    sput-object v2, LX1/b;->b:LW1/k;

    new-instance v2, Lj2/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v1, v0}, Lj2/g;->x([BI)V

    int-to-long v3, v0

    new-instance v1, LW1/w;

    invoke-direct {v1, v3, v4, v2}, LW1/w;-><init>(JLj2/g;)V

    sput-object v1, LX1/b;->c:LW1/w;

    move-wide v5, v3

    move-wide v7, v3

    invoke-static/range {v3 .. v8}, LX1/b;->c(JJJ)V

    sget-object v1, Lj2/j;->h:Lj2/j;

    const-string v1, "efbbbf"

    invoke-static {v1}, Ld1/m;->j(Ljava/lang/String;)Lj2/j;

    move-result-object v1

    const-string v2, "feff"

    invoke-static {v2}, Ld1/m;->j(Ljava/lang/String;)Lj2/j;

    move-result-object v2

    const-string v3, "fffe"

    invoke-static {v3}, Ld1/m;->j(Ljava/lang/String;)Lj2/j;

    move-result-object v3

    const-string v4, "0000ffff"

    invoke-static {v4}, Ld1/m;->j(Ljava/lang/String;)Lj2/j;

    move-result-object v4

    const-string v5, "ffff0000"

    invoke-static {v5}, Ld1/m;->j(Ljava/lang/String;)Lj2/j;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Lj2/j;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    new-instance v2, LF1/f;

    invoke-direct {v2, v1, v0}, LF1/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    if-le v2, v10, :cond_0

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v11, :cond_1

    aget-object v5, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v0, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "elements"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    if-nez v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    new-instance v5, LF1/f;

    invoke-direct {v5, v2, v10}, LF1/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    :goto_1
    move v2, v0

    move v3, v2

    :goto_2
    if-ge v2, v11, :cond_b

    aget-object v5, v1, v2

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v13, ")."

    if-ltz v8, :cond_a

    if-gt v8, v12, :cond_9

    add-int/lit8 v8, v8, -0x1

    move v12, v0

    :goto_3
    if-gt v12, v8, :cond_7

    add-int v13, v12, v8

    ushr-int/2addr v13, v10

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Comparable;

    if-ne v14, v5, :cond_3

    move v14, v0

    goto :goto_4

    :cond_3
    if-nez v14, :cond_4

    move v14, v4

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    move v14, v10

    goto :goto_4

    :cond_5
    invoke-interface {v14, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    :goto_4
    if-gez v14, :cond_6

    add-int/lit8 v12, v13, 0x1

    goto :goto_3

    :cond_6
    if-lez v14, :cond_8

    add-int/lit8 v8, v13, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v12, 0x1

    neg-int v13, v12

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v13, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toIndex ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex (0) is greater than toIndex ("

    invoke-static {v1, v13, v8}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj2/j;

    invoke-virtual {v2}, Lj2/j;->a()I

    move-result v2

    if-lez v2, :cond_12

    move v2, v0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj2/j;

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj2/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "prefix"

    invoke-static {v3, v8}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lj2/j;->a()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lj2/j;->f(Lj2/j;I)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7}, Lj2/j;->a()I

    move-result v8

    invoke-virtual {v3}, Lj2/j;->a()I

    move-result v12

    if-eq v8, v12, :cond_d

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v7, v8, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move v2, v4

    goto :goto_5

    :cond_f
    new-instance v4, Lj2/g;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Landroid/support/v4/media/session/b;->b(JLj2/g;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v2, v4, Lj2/g;->f:J

    const/4 v5, 0x4

    int-to-long v5, v5

    div-long/2addr v2, v5

    long-to-int v2, v2

    new-array v2, v2, [I

    move v3, v0

    :goto_7
    invoke-virtual {v4}, Lj2/g;->e()Z

    move-result v5

    if-nez v5, :cond_10

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lj2/g;->readInt()I

    move-result v6

    aput v6, v2, v3

    move v3, v5

    goto :goto_7

    :cond_10
    new-instance v3, Lj2/o;

    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "copyOf(this, size)"

    invoke-static {v1, v4}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lj2/j;

    invoke-direct {v3, v1, v2}, Lj2/o;-><init>([Lj2/j;[I)V

    sput-object v3, LX1/b;->d:Lj2/o;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    sput-object v1, LX1/b;->e:Ljava/util/TimeZone;

    new-instance v1, LO1/f;

    invoke-direct {v1, v10}, LO1/f;-><init>(I)V

    sput-object v1, LX1/b;->f:LO1/f;

    const-class v1, LW1/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "okhttp3."

    invoke-static {v1, v2}, LS1/d;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "substring(...)"

    invoke-static {v1, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_11
    sput-object v1, LX1/b;->g:Ljava/lang/String;

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the empty byte string is not a supported option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(LW1/m;LW1/m;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LW1/m;->d:Ljava/lang/String;

    iget-object v1, p1, LW1/m;->d:Ljava/lang/String;

    invoke-static {v0, v1}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LW1/m;->e:I

    iget v1, p1, LW1/m;->e:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LW1/m;->a:Ljava/lang/String;

    iget-object p1, p1, LW1/m;->a:Ljava/lang/String;

    invoke-static {p0, p1}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(J)I
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const-string v4, "timeout"

    if-ltz v3, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, p0, v5

    if-gtz v0, :cond_2

    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " too small."

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p0, p0

    return p0

    :cond_2
    const-string p0, " too large."

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, " < 0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final c(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final d(Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final e(Ljava/net/Socket;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio == null"

    invoke-static {v0, v1}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method

.method public static final f(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p3, v0}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static final g(Ljava/lang/String;CII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static final varargs h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final i([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    move v4, v1

    :goto_1
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    :try_start_0
    aget-object v4, p1, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_3

    return v6

    :cond_3
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v1
.end method

.method public static final j(LW1/v;)J
    .locals 2

    iget-object p0, p0, LW1/v;->j:LW1/k;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final varargs k([Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    const-string v0, "elements"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "asList(...)"

    invoke-static {p0, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, LF1/q;->e:LF1/q;

    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(listOf(*elements.clone()))"

    invoke-static {p0, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    invoke-static {v2, v3}, LO1/d;->g(II)I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x7f

    invoke-static {v2, v3}, LO1/d;->g(II)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final m(IILjava/lang/String;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_5

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    return p1
.end method

.method public static final n(IILjava/lang/String;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    if-gt p0, p1, :cond_5

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    :goto_1
    if-eq p1, p0, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    return p0
.end method

.method public static final o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 8

    const-string v0, "other"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Set-Cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final q(C)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final r(Lj2/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LX1/b;->d:Lj2/o;

    invoke-interface {p0, v0}, Lj2/i;->i(Lj2/o;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    const-string v0, "forName(...)"

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    sget-object p0, LS1/a;->a:Ljava/nio/charset/Charset;

    sget-object p0, LS1/a;->b:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const-string p0, "UTF-32LE"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p0, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, LS1/a;->b:Ljava/nio/charset/Charset;

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    sget-object p0, LS1/a;->a:Ljava/nio/charset/Charset;

    sget-object p0, LS1/a;->c:Ljava/nio/charset/Charset;

    if-nez p0, :cond_3

    const-string p0, "UTF-32BE"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p0, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, LS1/a;->c:Ljava/nio/charset/Charset;

    :cond_3
    return-object p0

    :cond_4
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string p1, "UTF_16LE"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    const-string p1, "UTF_16BE"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p1, "UTF_8"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static final s(Lj2/i;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj2/i;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lj2/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lj2/i;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static final t(Lj2/x;I)Z
    .locals 12

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object v3

    invoke-virtual {v3}, Lj2/z;->e()Z

    move-result v3

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object v3

    invoke-virtual {v3}, Lj2/z;->c()J

    move-result-wide v6

    sub-long/2addr v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object v3

    int-to-long v8, p1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v1

    invoke-virtual {v3, v8, v9}, Lj2/z;->d(J)Lj2/z;

    :try_start_0
    new-instance p1, Lj2/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_1
    const-wide/16 v8, 0x2000

    invoke-interface {p0, v8, v9, p1}, Lj2/x;->h(JLj2/g;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1

    iget-wide v8, p1, Lj2/g;->f:J

    invoke-virtual {p1, v8, v9}, Lj2/g;->skip(J)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    cmp-long p1, v6, v4

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    invoke-virtual {p0}, Lj2/z;->a()Lj2/z;

    return v0

    :cond_2
    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lj2/z;->d(J)Lj2/z;

    return v0

    :catchall_0
    move-exception p1

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    invoke-virtual {p0}, Lj2/z;->a()Lj2/z;

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lj2/z;->d(J)Lj2/z;

    :goto_2
    throw p1

    :catch_0
    cmp-long p1, v6, v4

    if-nez p1, :cond_4

    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    invoke-virtual {p0}, Lj2/z;->a()Lj2/z;

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Lj2/x;->a()Lj2/z;

    move-result-object p0

    add-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lj2/z;->d(J)Lj2/z;

    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final u(Ljava/util/List;)LW1/k;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/b;

    iget-object v2, v1, Ld2/b;->a:Lj2/j;

    iget-object v1, v1, Ld2/b;->b:Lj2/j;

    invoke-virtual {v2}, Lj2/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lj2/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, LW1/k;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, LW1/k;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public static final v(LW1/m;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LW1/m;->e:I

    iget-object v1, p0, LW1/m;->d:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, LS1/d;->C(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez p1, :cond_4

    iget-object p0, p0, LW1/m;->a:Ljava/lang/String;

    const-string p1, "scheme"

    invoke-static {p0, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "http"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x50

    goto :goto_0

    :cond_1
    const-string p1, "https"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(toMutableList())"

    invoke-static {p0, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final x(ILjava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    :catch_0
    :cond_2
    return p0
.end method

.method public static final y(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, LX1/b;->m(IILjava/lang/String;)I

    move-result p0

    invoke-static {p0, p1, p2}, LX1/b;->n(IILjava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
