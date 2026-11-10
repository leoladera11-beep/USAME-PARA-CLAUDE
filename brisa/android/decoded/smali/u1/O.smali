.class public final Lu1/O;
.super Lu1/P;
.source "SourceFile"


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:Lu1/P;


# direct methods
.method public constructor <init>(Lu1/P;II)V
    .locals 0

    iput-object p1, p0, Lu1/O;->i:Lu1/P;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lu1/O;->g:I

    iput p3, p0, Lu1/O;->h:I

    return-void
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/O;->i:Lu1/P;

    invoke-virtual {v0}, Lu1/K;->d()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lu1/O;->i:Lu1/P;

    invoke-virtual {v0}, Lu1/K;->f()I

    move-result v0

    iget v1, p0, Lu1/O;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lu1/O;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lu1/O;->i:Lu1/P;

    invoke-virtual {v0}, Lu1/K;->f()I

    move-result v0

    iget v1, p0, Lu1/O;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu1/O;->h:I

    invoke-static {p1, v0}, LF1/i;->i(II)V

    iget v0, p0, Lu1/O;->g:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lu1/O;->i:Lu1/P;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lu1/P;->m(I)Lu1/N;

    move-result-object p1

    return-object p1
.end method

.method public final s(II)Lu1/P;
    .locals 1

    iget v0, p0, Lu1/O;->h:I

    invoke-static {p1, p2, v0}, LF1/i;->m(III)V

    iget v0, p0, Lu1/O;->g:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lu1/O;->i:Lu1/P;

    invoke-virtual {v0, p1, p2}, Lu1/P;->s(II)Lu1/P;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/O;->h:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu1/O;->s(II)Lu1/P;

    move-result-object p1

    return-object p1
.end method
