.class public abstract Lj0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/c;->a:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/c;->b:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj0/c;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LR0/b;
    .locals 19

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "x:xmpmeta"

    invoke-static {v0, v1}, LJ/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    sget-object v2, Lu1/P;->f:Lu1/N;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    invoke-static {v0, v8}, LJ/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_7

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, v9, :cond_a

    sget-object v7, Lj0/c;->a:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-static {v0, v7}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    move v6, v2

    :goto_1
    if-ge v6, v9, :cond_1

    sget-object v7, Lj0/c;->b:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-static {v0, v7}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    :cond_1
    move-wide v6, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v8, 0x2

    if-ge v2, v8, :cond_5

    sget-object v8, Lj0/c;->c:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v0, v8}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    new-instance v13, Lj0/b;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-string v18, "image/jpeg"

    invoke-direct/range {v13 .. v18}, Lj0/b;-><init>(JJLjava/lang/String;)V

    move-object v2, v13

    new-instance v10, Lj0/b;

    const-string v15, "video/mp4"

    const-wide/16 v13, 0x0

    invoke-direct/range {v10 .. v15}, Lj0/b;-><init>(JJLjava/lang/String;)V

    invoke-static {v2, v10}, Lu1/P;->p(Ljava/lang/Object;Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v2, Lu1/P;->f:Lu1/N;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const-string v8, "Container:Directory"

    invoke-static {v0, v8}, LJ/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v2, "Container"

    const-string v8, "Item"

    invoke-static {v0, v2, v8}, Lj0/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu1/C0;

    move-result-object v2

    goto :goto_3

    :cond_8
    const-string v8, "GContainer:Directory"

    invoke-static {v0, v8}, LJ/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v2, "GContainer"

    const-string v8, "GContainerItem"

    invoke-static {v0, v2, v8}, Lj0/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu1/C0;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-static {v0, v1}, LJ/e;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return-object v3

    :cond_b
    new-instance v0, LR0/b;

    invoke-direct {v0, v9, v6, v7, v2}, LR0/b;-><init>(IJLjava/lang/Object;)V

    return-object v0

    :cond_c
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v3, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu1/C0;
    .locals 12

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const-string v1, ":Item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":Directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, v1}, LJ/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ":Mime"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":Semantic"

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":Length"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Padding"

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v3}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v4}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5}, LJ/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Lj0/b;

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v7

    :goto_0
    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_3
    move-wide v9, v7

    move-wide v7, v2

    invoke-direct/range {v6 .. v11}, Lj0/b;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v0, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p0, Lu1/C0;->i:Lu1/C0;

    return-object p0

    :cond_5
    :goto_2
    invoke-static {p0, p1}, LJ/e;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    return-object p0
.end method
