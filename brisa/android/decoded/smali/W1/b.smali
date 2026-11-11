.class public final LW1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/i;


# static fields
.field public static final e:LW1/b;

.field public static final f:LW1/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LW1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW1/b;->e:LW1/b;

    new-instance v0, LW1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW1/b;->f:LW1/b;

    return-void
.end method

.method public static final a(LW1/b;Ljava/lang/String;)LW1/f;
    .locals 1

    new-instance p0, LW1/f;

    invoke-direct {p0, p1}, LW1/f;-><init>(Ljava/lang/String;)V

    sget-object v0, LW1/f;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, p4, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    and-int/lit8 v7, p4, 0x10

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    and-int/lit8 v8, p4, 0x20

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_4

    :cond_4
    move v8, v6

    :goto_4
    and-int/lit8 v9, p4, 0x40

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move v3, v6

    :goto_5
    const-string v6, "<this>"

    invoke-static {v0, v6}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v2

    :goto_6
    if-ge v6, v4, :cond_13

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    const/16 v10, 0x80

    const/16 v11, 0x20

    const/16 v12, 0x2b

    const/16 v13, 0x25

    const/16 v14, 0x7f

    if-lt v9, v11, :cond_9

    if-eq v9, v14, :cond_9

    if-lt v9, v10, :cond_6

    if-eqz v3, :cond_9

    :cond_6
    int-to-char v15, v9

    invoke-static {v1, v15}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v15

    if-nez v15, :cond_9

    if-ne v9, v13, :cond_7

    if-eqz v5, :cond_9

    if-eqz v7, :cond_7

    invoke-static {v6, v4, v0}, LW1/b;->e(IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_7
    if-ne v9, v12, :cond_8

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v9, Lj2/g;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v2, v6, v0}, Lj2/g;->D(IILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_8
    if-ge v6, v4, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    if-eqz v5, :cond_a

    const/16 v13, 0x9

    if-eq v15, v13, :cond_f

    const/16 v13, 0xa

    if-eq v15, v13, :cond_f

    const/16 v13, 0xc

    if-eq v15, v13, :cond_f

    const/16 v13, 0xd

    if-ne v15, v13, :cond_a

    goto :goto_a

    :cond_a
    if-ne v15, v12, :cond_c

    if-eqz v8, :cond_c

    if-eqz v5, :cond_b

    const-string v13, "+"

    goto :goto_9

    :cond_b
    const-string v13, "%2B"

    :goto_9
    invoke-virtual {v9, v13}, Lj2/g;->E(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    if-lt v15, v11, :cond_10

    if-eq v15, v14, :cond_10

    if-lt v15, v10, :cond_d

    if-eqz v3, :cond_10

    :cond_d
    int-to-char v13, v15

    invoke-static {v1, v13}, LS1/d;->B(Ljava/lang/CharSequence;C)Z

    move-result v13

    if-nez v13, :cond_10

    const/16 v13, 0x25

    if-ne v15, v13, :cond_e

    if-eqz v5, :cond_10

    if-eqz v7, :cond_e

    invoke-static {v6, v4, v0}, LW1/b;->e(IILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v9, v15}, Lj2/g;->F(I)V

    :cond_f
    :goto_a
    const/16 v11, 0x25

    goto :goto_d

    :cond_10
    :goto_b
    if-nez v2, :cond_11

    new-instance v2, Lj2/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_11
    invoke-virtual {v2, v15}, Lj2/g;->F(I)V

    :goto_c
    invoke-virtual {v2}, Lj2/g;->e()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual {v2}, Lj2/g;->readByte()B

    move-result v13

    and-int/lit16 v10, v13, 0xff

    const/16 v11, 0x25

    invoke-virtual {v9, v11}, Lj2/g;->z(I)V

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    sget-object v16, LW1/m;->j:[C

    aget-char v10, v16, v10

    invoke-virtual {v9, v10}, Lj2/g;->z(I)V

    and-int/lit8 v10, v13, 0xf

    aget-char v10, v16, v10

    invoke-virtual {v9, v10}, Lj2/g;->z(I)V

    const/16 v10, 0x80

    const/16 v11, 0x20

    goto :goto_c

    :goto_d
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v6, v10

    move v13, v11

    const/16 v10, 0x80

    const/16 v11, 0x20

    goto/16 :goto_8

    :cond_12
    iget-wide v0, v9, Lj2/g;->f:J

    sget-object v2, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v0, v1, v2}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(IILjava/lang/String;)Z
    .locals 2

    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, LX1/b;->q(C)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, LX1/b;->q(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move p3, p1

    :goto_1
    if-ge p3, p2, :cond_8

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Lj2/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1, p3, p0}, Lj2/g;->D(IILjava/lang/String;)V

    :goto_3
    if-ge p3, p2, :cond_7

    invoke-virtual {p0, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    if-ne p1, v3, :cond_5

    add-int/lit8 v4, p3, 0x2

    if-ge v4, p2, :cond_5

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, LX1/b;->q(C)I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, LX1/b;->q(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    if-eq v6, v7, :cond_6

    shl-int/lit8 p3, v5, 0x4

    add-int/2addr p3, v6

    invoke-virtual {v0, p3}, Lj2/g;->z(I)V

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int p3, p1, v4

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Lj2/g;->z(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, p1}, Lj2/g;->F(I)V

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p3, p1

    goto :goto_3

    :cond_7
    iget-wide p0, v0, Lj2/g;->f:J

    sget-object p2, LS1/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0, p1, p2}, Lj2/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    const/4 v3, 0x4

    invoke-static {p0, v2, v1, v3}, LS1/d;->F(Ljava/lang/CharSequence;CII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v5, 0x3d

    invoke-static {p0, v5, v1, v3}, LS1/d;->F(Ljava/lang/CharSequence;CII)I

    move-result v3

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eq v3, v4, :cond_2

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string v0, "hostname"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "getAllByName(hostname)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, LF1/f;

    invoke-direct {v2, v0, v3}, LF1/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_0
    aget-object v0, v0, v3

    invoke-static {v0}, LF1/i;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, LF1/q;->e:LF1/q;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Broken system behaviour for dns lookup of "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public declared-synchronized d(Ljava/lang/String;)LW1/f;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "javaName"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LW1/f;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW1/f;

    if-nez v1, :cond_3

    const-string v1, "SSL_"

    const-string v2, "this as java.lang.String).substring(startIndex)"

    const-string v3, "TLS_"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, v4}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW1/f;

    if-nez v1, :cond_2

    new-instance v1, LW1/f;

    invoke-direct {v1, p1}, LW1/f;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
