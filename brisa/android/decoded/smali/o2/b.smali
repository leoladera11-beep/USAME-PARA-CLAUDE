.class public final Lo2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public e:I

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo2/b;->e:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lo2/b;->e:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LS1/e;->m(Z)V

    iget-object v0, p0, Lo2/b;->f:[Ljava/lang/String;

    array-length v3, v0

    if-lt v3, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    iget v3, p0, Lo2/b;->e:I

    mul-int/lit8 v4, v3, 0x2

    :cond_2
    if-le v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo2/b;->f:[Ljava/lang/String;

    iget-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lo2/b;->f:[Ljava/lang/String;

    iget v1, p0, Lo2/b;->e:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lo2/b;->g:[Ljava/lang/Object;

    aput-object p1, p2, v1

    add-int/2addr v1, v2

    iput v1, p0, Lo2/b;->e:I

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/b;->d()Lo2/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lo2/b;
    .locals 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lo2/b;->e:I

    iput v1, v0, Lo2/b;->e:I

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    iget v2, p0, Lo2/b;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lo2/b;->f:[Ljava/lang/String;

    iget-object v1, p0, Lo2/b;->g:[Ljava/lang/Object;

    iget v2, p0, Lo2/b;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lo2/b;->g:[Ljava/lang/Object;

    const-string v1, "/jsoup.userdata"

    invoke-virtual {p0, v1}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v3, v0, Lo2/b;->g:[Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v4, v3, v1

    :cond_0
    const-string v1, "/jsoup.spans"

    invoke-virtual {p0, v1}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v2, v0, Lo2/b;->g:[Ljava/lang/Object;

    iget-object v3, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lo2/v;

    invoke-virtual {v3}, Lo2/v;->a()Lo2/v;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lo2/b;->h(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lo2/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, Lo2/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lo2/b;

    iget v2, p0, Lo2/b;->e:I

    iget v3, p1, Lo2/b;->e:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    iget v3, p0, Lo2/b;->e:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p1, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v3, v5, v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lo2/b;->i(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lo2/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ln2/b;Lo2/f;)V
    .locals 11

    iget v0, p0, Lo2/b;->e:I

    iget v1, p2, Lo2/f;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_9

    iget-object v5, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {v1, v5}, Lo2/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    if-nez v5, :cond_5

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    iget v5, p0, Lo2/b;->e:I

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    move v5, v3

    :goto_1
    iget v8, p0, Lo2/b;->e:I

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v8}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-ne v1, v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v8}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ne v1, v7, :cond_4

    move-object v5, v6

    goto :goto_4

    :cond_4
    invoke-static {v6}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x5f

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, Ljava/lang/String;

    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Ln2/b;->a(C)Ln2/b;

    move-result-object v8

    invoke-virtual {v8, v6}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    iget v9, p2, Lo2/f;->j:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    sget-object v9, Lo2/a;->h:[Ljava/lang/String;

    invoke-static {v6}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_7

    goto :goto_5

    :cond_7
    const-string v6, "=\""

    invoke-virtual {v8, v6}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    invoke-static {v5}, Lo2/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lo2/l;->a:[C

    iget-object v6, p2, Lo2/f;->e:Lo2/k;

    iget-object v9, p2, Lo2/f;->f:Ljava/nio/charset/Charset;

    invoke-static {v5, v8, v6, v9, v7}, Lo2/l;->c(Ljava/lang/String;Ln2/b;Lo2/k;Ljava/nio/charset/Charset;I)V

    const/16 v5, 0x22

    invoke-virtual {v8, v5}, Ln2/b;->a(C)Ln2/b;

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lo2/b;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lo2/b;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/b;->g:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lo2/b;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LB1/g;

    invoke-direct {v0, p0}, LB1/g;-><init>(Lo2/b;)V

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lo2/b;->g:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p1}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l(I)V
    .locals 4

    iget v0, p0, Lo2/b;->e:I

    if-ge p1, v0, :cond_7

    invoke-virtual {p0}, Lo2/b;->m()Lo2/v;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lo2/v;->f:[I

    mul-int/lit8 v2, v2, 0x4

    array-length v1, v0

    if-lt v2, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v2, 0x4

    array-length v3, v0

    sub-int/2addr v3, v1

    if-lez v3, :cond_4

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    array-length v2, v0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    :cond_5
    :goto_1
    iget v0, p0, Lo2/b;->e:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_6

    iget-object v1, p0, Lo2/b;->f:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lo2/b;->g:[Ljava/lang/Object;

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget p1, p0, Lo2/b;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo2/b;->e:I

    iget-object v0, p0, Lo2/b;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    aput-object v1, v0, p1

    return-void

    :cond_7
    new-instance p1, Lm2/g;

    const-string v0, "Must be false"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()Lo2/v;
    .locals 2

    const-string v0, "/jsoup.spans"

    invoke-virtual {p0, v0}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Lo2/v;

    return-object v0
.end method

.method public final n()Ljava/util/Map;
    .locals 3

    const-string v0, "/jsoup.userdata"

    invoke-virtual {p0, v0}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1, v0}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    :goto_0
    return-object v1
.end method

.method public final o(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lo2/b;->e:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 3

    iget v0, p0, Lo2/b;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lo2/b;->e:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0}, Ln2/b;->e(Ljava/lang/StringBuilder;)Ln2/b;

    move-result-object v1

    new-instance v2, Lo2/f;

    invoke-direct {v2}, Lo2/f;-><init>()V

    invoke-virtual {p0, v1, v2}, Lo2/b;->g(Ln2/b;Lo2/f;)V

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
