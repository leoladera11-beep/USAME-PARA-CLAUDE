.class public abstract Lv2/c;
.super Lcom/brisa/local/a;
.source "SourceFile"


# virtual methods
.method public abstract E(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Lv2/a;
    .locals 3

    const-string v0, "URL may not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lv2/b;

    invoke-super {p0, p1, p2}, Lcom/brisa/local/a;->l(Ljava/lang/String;Ljava/lang/String;)Lv2/a;

    move-result-object p1

    iget-object p2, p1, Lv2/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lv2/a;->f:Ljava/lang/String;

    iget-object p1, p1, Lv2/a;->g:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p2, v1, p1}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lv2/c;->E(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lv2/c;->E(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
