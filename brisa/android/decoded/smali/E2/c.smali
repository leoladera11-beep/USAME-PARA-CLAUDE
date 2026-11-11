.class public final LE2/c;
.super Lcom/brisa/local/a;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:LE2/c;

.field public static final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "^([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LE2/c;->c:Ljava/util/regex/Pattern;

    new-instance v0, LE2/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LE2/c;->d:LE2/c;

    const-string v1, "embed/"

    const-string v2, "live/"

    const-string v3, "shorts/"

    const-string v4, "watch/"

    const-string v5, "v/"

    const-string v6, "w/"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LE2/c;->e:Ljava/util/List;

    return-void
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, LE2/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lu2/f;

    const-string v0, "The given string is not a YouTube video ID"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, LE2/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "https://www.youtube.com"

    const-string v1, "https:"

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "vnd.youtube"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "vnd.youtube.launch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    sget-object v7, LE2/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v4}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {p1}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-static {v1}, LJ2/g;->c(Ljava/net/URL;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-static {v1}, LC2/m;->q(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "www.youtube-nocookie.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "youtu.be"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    sget-object v6, LC2/m;->h:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "y2u.be"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_5

    :cond_7
    :goto_1
    sget-object v6, LE2/b;->c:LE2/b;

    invoke-virtual {v6, p1}, LE2/b;->v(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Error: no suitable URL: "

    if-nez v6, :cond_1f

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v8, 0x6

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v2, v9

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "YOUTUBE.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0xf

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "WWW.YOUTUBE-NOCOOKIE.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0xe

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "REDIRECT.INVIDIOUS.IO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/16 v2, 0xd

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "INVIDIOUS.TIEKOETTER.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/16 v2, 0xc

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "WWW.YOUTUBE.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/16 v2, 0xb

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "YT.CHOCOLATEMOO53.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/16 v2, 0xa

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "YOUTU.BE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_7
    const-string v2, "MUSIC.YOUTUBE.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_3

    :sswitch_8
    const-string v2, "YEWTU.BE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_9
    const-string v2, "PIPED.VIDEO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    move v2, v8

    goto :goto_3

    :sswitch_a
    const-string v2, "INV.NADEKO.NET"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_b
    const-string v2, "PIPED.KAVIN.ROCKS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_2

    :cond_13
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_c
    const-string v2, "INVIDIOUS.NERDVPN.DE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_2

    :cond_14
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_d
    const-string v3, "INVIDIOUS.F5.SI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "M.YOUTUBE.COM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_2

    :cond_15
    move v2, v3

    goto :goto_3

    :sswitch_f
    const-string v2, "Y2U.BE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_2

    :cond_16
    const/4 v2, 0x0

    :cond_17
    :goto_3
    const-string v3, "v"

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v0, "embed/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    :goto_4
    new-instance v0, Lu2/f;

    invoke-static {v7, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string p1, "watch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {v1, v3}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-static {v5}, LE2/c;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    return-object p1

    :cond_1a
    invoke-static {v1, v3}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-static {v5}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string v2, "attribution_link"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "u"

    invoke-static {v1, v2}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p1, v3}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    new-instance v0, Lu2/f;

    invoke-static {v7, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static {v5}, LE2/c;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    return-object p1

    :cond_1d
    invoke-static {v1, v3}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {v1, v3}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-static {p1}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    invoke-static {v5}, LE2/c;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    new-instance v0, Lu2/f;

    invoke-static {v7, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_5
    const-string v0, "googleads.g.doubleclick.net"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lu2/e;

    const-string v1, "Error: found ad: "

    invoke-static {v1, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance p1, Lu2/f;

    const-string v0, "The URL is not a YouTube URL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance v0, Lu2/f;

    const-string v1, "The given URL is not valid"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6538c10b -> :sswitch_f
        -0x64efe82b -> :sswitch_e
        -0x4f84aa89 -> :sswitch_d
        -0x4123b0fe -> :sswitch_c
        -0x4119c053 -> :sswitch_b
        -0x2306815c -> :sswitch_a
        -0x19fe533d -> :sswitch_9
        -0x76cc11b -> :sswitch_8
        -0x325c673 -> :sswitch_7
        0x627de31 -> :sswitch_6
        0x1a066a55 -> :sswitch_5
        0x381ef9ff -> :sswitch_4
        0x3cb643cf -> :sswitch_3
        0x669117b6 -> :sswitch_2
        0x7893fdf9 -> :sswitch_1
        0x7bbb6bf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.youtube.com/watch?v="

    invoke-static {v0, p1}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, LE2/c;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lu2/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    throw p1
.end method
