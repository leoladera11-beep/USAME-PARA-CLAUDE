.class public final LW/k;
.super LW/m;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z


# direct methods
.method public constructor <init>(ILG/r0;ILW/j;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, LW/m;-><init>(ILG/r0;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, LN/a;->n(IZ)Z

    move-result p2

    iput-boolean p2, p0, LW/k;->j:Z

    iget-object p2, p0, LW/m;->h:LG/x;

    iget p2, p2, LG/x;->e:I

    iget p3, p4, LG/w0;->C:I

    iget-object v0, p4, LG/w0;->y:Lu1/P;

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, LW/k;->k:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, LW/k;->l:Z

    if-eqz p7, :cond_2

    invoke-static {p7}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {p2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const v3, 0x7fffffff

    if-ge p3, v2, :cond_5

    iget-object v2, p0, LW/m;->h:LG/x;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p4, LG/w0;->D:Z

    invoke-static {v2, v4, v5}, LW/o;->h(LG/x;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    move v2, p1

    move p3, v3

    :goto_4
    iput p3, p0, LW/k;->m:I

    iput v2, p0, LW/k;->n:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    iget p3, p4, LG/w0;->A:I

    :goto_5
    iget-object p7, p0, LW/m;->h:LG/x;

    iget p7, p7, LG/x;->f:I

    sget-object v4, LW/o;->k:Lu1/y0;

    if-eqz p7, :cond_7

    if-ne p7, p3, :cond_7

    move p3, v3

    goto :goto_6

    :cond_7
    and-int/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_6
    iput p3, p0, LW/k;->o:I

    iget-object p7, p0, LW/m;->h:LG/x;

    iget v4, p7, LG/x;->f:I

    and-int/2addr p2, v4

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iput-boolean p2, p0, LW/k;->r:Z

    iget-object p2, p4, LG/w0;->z:Lu1/P;

    invoke-static {p7, p2}, LW/o;->b(LG/x;Lu1/P;)I

    move-result p2

    iput p2, p0, LW/k;->p:I

    invoke-static {p6}, LW/o;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-nez p7, :cond_9

    move p7, v1

    goto :goto_8

    :cond_9
    move p7, p1

    :goto_8
    iget-object v4, p0, LW/m;->h:LG/x;

    invoke-static {v4, p6, p7}, LW/o;->h(LG/x;Ljava/lang/String;Z)I

    move-result p6

    iput p6, p0, LW/k;->q:I

    if-gtz v2, :cond_e

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_a

    if-gtz p3, :cond_e

    :cond_a
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_b

    if-ne p2, v3, :cond_e

    :cond_b
    iget-boolean p2, p0, LW/k;->k:Z

    if-nez p2, :cond_e

    iget-boolean p2, p0, LW/k;->l:Z

    if-eqz p2, :cond_c

    if-gtz p6, :cond_e

    :cond_c
    iget-boolean p2, p4, LG/w0;->x:Z

    if-eqz p2, :cond_d

    goto :goto_9

    :cond_d
    move p2, p1

    goto :goto_a

    :cond_e
    :goto_9
    move p2, v1

    :goto_a
    iget-boolean p3, p4, LW/j;->B0:Z

    invoke-static {p5, p3}, LN/a;->n(IZ)Z

    move-result p3

    if-eqz p3, :cond_f

    if-eqz p2, :cond_f

    move p1, v1

    :cond_f
    iput p1, p0, LW/k;->i:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LW/k;->i:I

    return v0
.end method

.method public final bridge synthetic b(LW/m;)Z
    .locals 0

    check-cast p1, LW/k;

    const/4 p1, 0x0

    return p1
.end method

.method public final c(LW/k;)I
    .locals 7

    iget-boolean v0, p0, LW/k;->j:Z

    iget-boolean v1, p1, LW/k;->j:Z

    sget-object v2, Lu1/A;->a:Lu1/y;

    invoke-virtual {v2, v0, v1}, Lu1/y;->c(ZZ)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/k;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LW/k;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lu1/v0;->f:Lu1/v0;

    sget-object v4, Lu1/v0;->g:Lu1/v0;

    invoke-virtual {v0, v1, v2, v4}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget v1, p1, LW/k;->n:I

    iget v2, p0, LW/k;->n:I

    invoke-virtual {v0, v2, v1}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    iget v1, p1, LW/k;->o:I

    iget v5, p0, LW/k;->o:I

    invoke-virtual {v0, v5, v1}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/k;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p1, LW/k;->p:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/k;->k:Z

    iget-boolean v6, p1, LW/k;->k:Z

    invoke-virtual {v0, v1, v6}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/k;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v6, p1, LW/k;->l:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v6, v3}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/k;->q:I

    iget v2, p1, LW/k;->q:I

    invoke-virtual {v0, v1, v2}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    if-nez v5, :cond_1

    iget-boolean v1, p0, LW/k;->r:Z

    iget-boolean p1, p1, LW/k;->r:Z

    invoke-virtual {v0, v1, p1}, Lu1/A;->d(ZZ)Lu1/A;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lu1/A;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LW/k;

    invoke-virtual {p0, p1}, LW/k;->c(LW/k;)I

    move-result p1

    return p1
.end method
