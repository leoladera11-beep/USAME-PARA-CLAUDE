.class public final Lq2/b;
.super Lq2/c;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>([Lq2/o;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lq2/c;-><init>()V

    iget v0, p0, Lq2/c;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lq2/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lq2/a;

    invoke-direct {v1, p1}, Lq2/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq2/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
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

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
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

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/c;->a:Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-static {v1, v0}, Ln2/e;->j(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
