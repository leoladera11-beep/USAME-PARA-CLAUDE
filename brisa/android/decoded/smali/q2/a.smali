.class public final Lq2/a;
.super Lq2/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lq2/c;-><init>()V

    iget-object v0, p0, Lq2/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lq2/c;->g()V

    return-void
.end method


# virtual methods
.method public final b(Lo2/j;Lo2/j;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lq2/c;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lq2/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2/o;

    invoke-virtual {v2, p1, p2}, Lq2/o;->b(Lo2/j;Lo2/j;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lo2/j;Lo2/o;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lq2/c;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lq2/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2/o;

    invoke-virtual {v2, p1, p2}, Lq2/o;->c(Lo2/j;Lo2/o;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/c;->a:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v1, v0}, Ln2/e;->j(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
