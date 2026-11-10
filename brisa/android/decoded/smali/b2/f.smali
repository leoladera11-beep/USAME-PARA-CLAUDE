.class public abstract Lb2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj2/j;->h:Lj2/j;

    const-string v0, "\"\\"

    invoke-static {v0}, Ld1/m;->l(Ljava/lang/String;)Lj2/j;

    const-string v0, "\t ,="

    invoke-static {v0}, Ld1/m;->l(Ljava/lang/String;)Lj2/j;

    return-void
.end method

.method public static final a(LW1/v;)Z
    .locals 4

    iget-object v0, p0, LW1/v;->e:LM0/r0;

    iget-object v0, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LW1/v;->h:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, LX1/b;->j(LW1/v;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const-string v0, "Transfer-Encoding"

    iget-object p0, p0, LW1/v;->j:LW1/k;

    invoke-virtual {p0, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(LW1/b;LW1/m;LW1/k;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "url"

    invoke-static {v1, v4}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "headers"

    invoke-static {v2, v4}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LW1/b;->f:LW1/b;

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    sget-object v0, LW1/h;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, LW1/k;->size()I

    move-result v0

    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    invoke-virtual {v2, v6}, LW1/k;->b(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Set-Cookie"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v6}, LW1/k;->f(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, LF1/q;->e:LF1/q;

    if-eqz v7, :cond_4

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v6, "{\n      Collections.unmodifiableList(result)\n    }"

    invoke-static {v0, v6}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_24

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v10, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v0, LX1/b;->a:[B

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3b

    invoke-static {v10, v13, v4, v0}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v0

    const/16 v14, 0x3d

    invoke-static {v10, v14, v4, v0}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v15

    if-ne v15, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v4, v15, v10}, LX1/b;->y(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_6

    goto :goto_3

    :cond_6
    invoke-static/range {v17 .. v17}, LX1/b;->l(Ljava/lang/String;)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v15, v15, 0x1

    invoke-static {v15, v0, v10}, LX1/b;->y(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LX1/b;->l(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_8

    :goto_3
    move-object/from16 v34, v2

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const-wide v19, 0xe677d21fdbffL

    move-wide/from16 v27, v19

    const/16 p2, 0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v29, 0x0

    :goto_4
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v4, :cond_15

    move-object/from16 v34, v2

    invoke-static {v10, v13, v0, v4}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v2

    invoke-static {v10, v14, v0, v2}, LX1/b;->g(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v0, v13, v10}, LX1/b;->y(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v13, v2, :cond_9

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v2, v10}, LX1/b;->y(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_9
    const-string v13, ""

    :goto_5
    const-string v14, "expires"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v13}, LW1/t;->l(ILjava/lang/String;)J

    move-result-wide v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    move/from16 v25, p2

    goto/16 :goto_7

    :cond_a
    const-string v14, "max-age"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-gtz v0, :cond_b

    move-wide/from16 v21, v32

    goto :goto_6

    :cond_b
    move-wide/from16 v21, v13

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_2
    const-string v14, "-?\\d+"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v35, v0

    const-string v0, "compile(...)"

    invoke-static {v14, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "-"

    const/4 v14, 0x0

    invoke-static {v13, v0, v14}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide/from16 v30, v32

    :cond_c
    move-wide/from16 v21, v30

    goto :goto_6

    :cond_d
    throw v35
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    const-string v14, "domain"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    :try_start_3
    const-string v0, "."

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-static {v13, v0}, LS1/d;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LV0/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object v5, v0

    const/16 v26, 0x0

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    const-string v0, "Failed requirement."

    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    const-string v14, "path"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    move-object v15, v13

    goto :goto_7

    :cond_12
    const-string v13, "secure"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    move/from16 v29, p2

    goto :goto_7

    :cond_13
    const-string v13, "httponly"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 v16, p2

    :catch_1
    :cond_14
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move-object/from16 v2, v34

    const/16 v13, 0x3b

    const/16 v14, 0x3d

    goto/16 :goto_4

    :cond_15
    move-object/from16 v34, v2

    cmp-long v0, v21, v32

    if-nez v0, :cond_16

    move-wide/from16 v19, v32

    goto :goto_8

    :cond_16
    cmp-long v0, v21, v23

    if-eqz v0, :cond_19

    const-wide v13, 0x20c49ba5e353f7L

    cmp-long v0, v21, v13

    if-gtz v0, :cond_17

    const/16 v0, 0x3e8

    int-to-long v13, v0

    mul-long v30, v21, v13

    :cond_17
    add-long v30, v11, v30

    cmp-long v0, v30, v11

    if-ltz v0, :cond_1a

    cmp-long v0, v30, v19

    if-lez v0, :cond_18

    goto :goto_8

    :cond_18
    move-wide/from16 v19, v30

    goto :goto_8

    :cond_19
    move-wide/from16 v19, v27

    :cond_1a
    :goto_8
    iget-object v0, v1, LW1/m;->d:Ljava/lang/String;

    if-nez v5, :cond_1b

    move-object v5, v0

    goto :goto_9

    :cond_1b
    invoke-static {v0, v5}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-static {v0, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_1d

    sget-object v2, LX1/b;->f:LO1/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LO1/f;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1e

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_1d
    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_d

    :cond_1e
    const-string v0, "/"

    const/4 v14, 0x0

    if-eqz v15, :cond_20

    invoke-static {v15, v0, v14}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_b

    :cond_1f
    :goto_a
    move-object/from16 v22, v15

    move/from16 v24, v16

    goto :goto_c

    :cond_20
    :goto_b
    invoke-virtual {v1}, LW1/m;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/4 v10, 0x6

    invoke-static {v2, v4, v14, v10}, LS1/d;->H(Ljava/lang/String;CII)I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v2, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    move-object v15, v0

    goto :goto_a

    :goto_c
    new-instance v16, LW1/h;

    move-object/from16 v21, v5

    move/from16 v23, v29

    invoke-direct/range {v16 .. v26}, LW1/h;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    :goto_d
    move-object/from16 v0, v16

    :goto_e
    if-nez v0, :cond_22

    goto :goto_f

    :cond_22
    if-nez v9, :cond_23

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_23
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move v4, v14

    move-object/from16 v2, v34

    goto/16 :goto_2

    :cond_24
    move-object/from16 v34, v2

    if-eqz v9, :cond_25

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v0, "{\n        Collections.un\u2026ableList(cookies)\n      }"

    invoke-static {v2, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_25
    move-object/from16 v2, v34

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
