.class public abstract Lb0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly1/a;

.field public static final b:Ly1/a;

.field public static final c:Ly1/a;

.field public static final d:Ly1/a;

.field public static final e:Ly1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ly1/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v5, v4}, Ly1/a;-><init>(I[I)V

    sput-object v0, Lb0/I;->a:Ly1/a;

    new-instance v0, Ly1/a;

    const/4 v4, 0x5

    const/4 v6, 0x4

    filled-new-array {v1, v2, v3, v5, v6}, [I

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ly1/a;-><init>(I[I)V

    sput-object v0, Lb0/I;->b:Ly1/a;

    new-instance v0, Ly1/a;

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Ly1/a;-><init>(I[I)V

    sput-object v0, Lb0/I;->c:Ly1/a;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Ly1/a;->c([I)Ly1/a;

    move-result-object v0

    sput-object v0, Lb0/I;->d:Ly1/a;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Ly1/a;->c([I)Ly1/a;

    move-result-object v0

    sput-object v0, Lb0/I;->e:Ly1/a;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data
.end method

.method public static a(Ljava/util/List;)LG/V;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const-string v7, "VorbisUtil"

    if-eq v6, v5, :cond_0

    const-string v4, "Failed to parse Vorbis comment: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    aget-object v3, v4, v1

    const-string v5, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    :try_start_0
    aget-object v3, v4, v5

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    new-instance v4, LJ/D;

    invoke-direct {v4, v3}, LJ/D;-><init>([B)V

    invoke-static {v4}, Ln0/a;->d(LJ/D;)Ln0/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to parse vorbis picture"

    invoke-static {v7, v4, v3}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ls0/a;

    aget-object v6, v4, v1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ls0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    new-instance p0, LG/V;

    invoke-direct {p0, v0}, LG/V;-><init>(Ljava/util/List;)V

    :goto_2
    return-object p0
.end method
