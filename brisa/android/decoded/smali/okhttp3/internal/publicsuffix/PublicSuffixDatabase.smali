.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B

.field public static final f:Ljava/util/List;

.field public static final g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:[B

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    const-string v0, "*"

    invoke-static {v0}, LF1/i;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, LS1/d;->J(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "List is empty."

    if-nez v1, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, ""

    invoke-static {v1, v4}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    move v1, v3

    :cond_0
    if-ltz v1, :cond_9

    sget-object v4, LF1/q;->e:LF1/q;

    if-nez v1, :cond_1

    return-object v4

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    invoke-static {p0}, LF1/h;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v1, v0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LF1/i;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v3

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v0

    if-ne v5, v1, :cond_5

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v0, :cond_7

    return-object v2

    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LF1/i;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v4

    :cond_9
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {p0, v0, v1}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object p0

    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicodeDomain"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, LF1/q;->e:LF1/q;

    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    sget-object v6, Le2/m;->a:Le2/m;

    sget-object v6, Le2/m;->a:Le2/m;

    const-string v7, "Failed to read public suffix list"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x5

    invoke-static {v7, v6, v5}, Le2/m;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    if-eqz v2, :cond_2

    goto :goto_1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v4

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_3
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [[B

    move v6, v3

    :goto_4
    if-ge v6, v2, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v8}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v3

    :goto_5
    const/4 v7, 0x0

    const-string v8, "publicSuffixListBytes"

    if-ge v6, v2, :cond_6

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v9, :cond_5

    invoke-static {v9, v5, v6}, Ld1/m;->g([B[[BI)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v8}, LO1/d;->i(Ljava/lang/String;)V

    throw v7

    :cond_6
    move-object v9, v7

    :goto_6
    if-le v2, v4, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    array-length v10, v6

    sub-int/2addr v10, v4

    move v11, v3

    :goto_7
    if-ge v11, v10, :cond_9

    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v12, v6, v11

    iget-object v12, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v12, :cond_8

    invoke-static {v12, v6, v11}, Ld1/m;->g([B[[BI)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    invoke-static {v8}, LO1/d;->i(Ljava/lang/String;)V

    throw v7

    :cond_9
    move-object v12, v7

    :goto_8
    if-eqz v12, :cond_c

    sub-int/2addr v2, v4

    move v6, v3

    :goto_9
    if-ge v6, v2, :cond_c

    iget-object v8, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    if-eqz v8, :cond_b

    invoke-static {v8, v5, v6}, Ld1/m;->g([B[[BI)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    const-string p1, "publicSuffixExceptionListBytes"

    invoke-static {p1}, LO1/d;->i(Ljava/lang/String;)V

    throw v7

    :cond_c
    move-object v8, v7

    :goto_a
    const/16 v2, 0x2e

    if-eqz v8, :cond_d

    const-string v1, "!"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [C

    aput-char v2, v5, v3

    invoke-static {v1, v5}, LS1/d;->J(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    goto :goto_c

    :cond_d
    if-nez v9, :cond_e

    if-nez v12, :cond_e

    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    goto :goto_c

    :cond_e
    if-eqz v9, :cond_f

    new-array v5, v4, [C

    aput-char v2, v5, v3

    invoke-static {v9, v5}, LS1/d;->J(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v5

    goto :goto_b

    :cond_f
    move-object v5, v1

    :goto_b
    if-eqz v12, :cond_10

    new-array v1, v4, [C

    aput-char v2, v1, v3

    invoke-static {v12, v1}, LS1/d;->J(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    :cond_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v2, v6, :cond_11

    move-object v1, v5

    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x21

    if-ne v2, v5, :cond_12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_12

    return-object v7

    :cond_12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_d
    sub-int/2addr v0, v1

    goto :goto_e

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_d

    :goto_e
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, LF1/o;

    invoke-direct {v1, p1}, LF1/o;-><init>(Ljava/util/List;)V

    if-ltz v0, :cond_17

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    new-instance p1, LR1/a;

    invoke-direct {p1, v1, v0}, LR1/a;-><init>(LR1/b;I)V

    move-object v1, p1

    :goto_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, LR1/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v3, v4

    if-le v3, v4, :cond_15

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_15
    invoke-static {p1, v2, v7}, LS1/e;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;LF1/a;)V

    goto :goto_10

    :cond_16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    const-string p1, "Requested element count "

    const-string v1, " is less than zero."

    invoke-static {p1, v1, v0}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 5

    :try_start_0
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lj2/l;

    sget-object v2, Lj2/n;->a:Ljava/util/logging/Logger;

    new-instance v2, Lj2/d;

    new-instance v3, Lj2/z;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lj2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lj2/l;-><init>(Lj2/x;)V

    new-instance v0, Lj2/r;

    invoke-direct {v0, v1}, Lj2/r;-><init>(Lj2/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lj2/r;->readInt()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj2/r;->l(J)V

    iget-object v3, v0, Lj2/r;->f:Lj2/g;

    invoke-virtual {v3, v1, v2}, Lj2/g;->s(J)[B

    move-result-object v1

    invoke-virtual {v0}, Lj2/r;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lj2/r;->l(J)V

    iget-object v4, v0, Lj2/r;->f:Lj2/g;

    invoke-virtual {v4, v2, v3}, Lj2/g;->s(J)[B

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0}, Lj2/r;->close()V

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {v1, v0}, Lcom/brisa/local/u;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
