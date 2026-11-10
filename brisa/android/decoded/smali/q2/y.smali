.class public final Lq2/y;
.super Lq2/B;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:I


# direct methods
.method public constructor <init>(Lq2/o;)V
    .locals 2

    invoke-direct {p0, p1}, Lq2/B;-><init>(Lq2/o;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq2/y;->d:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iput v1, p0, Lq2/y;->e:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lq2/y;->e:I

    invoke-virtual {p1}, Lq2/o;->a()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lq2/y;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq2/y;->e:I

    return v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lq2/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/o;

    invoke-virtual {v1}, Lq2/o;->e()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lq2/B;->e()V

    return-void
.end method

.method public final g(Lo2/j;Lo2/p;)Z
    .locals 4

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lq2/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2/o;

    invoke-virtual {v3, p1, p2}, Lq2/o;->d(Lo2/j;Lo2/p;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p2}, Lo2/p;->x()Lo2/j;

    move-result-object p2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/y;->d:Ljava/util/ArrayList;

    const-string v1, " > "

    invoke-static {v1, v0}, Ln2/e;->j(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
