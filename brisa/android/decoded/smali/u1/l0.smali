.class public final Lu1/l0;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Lt1/j;


# direct methods
.method public constructor <init>(Ljava/util/List;Lt1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lu1/l0;->e:Ljava/util/List;

    iput-object p2, p0, Lu1/l0;->f:Lt1/j;

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lu1/l0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lu1/j0;

    iget-object v1, p0, Lu1/l0;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lu1/j0;-><init>(Ljava/util/AbstractList;Ljava/util/ListIterator;I)V

    return-object v0
.end method

.method public final removeRange(II)V
    .locals 1

    iget-object v0, p0, Lu1/l0;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu1/l0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
