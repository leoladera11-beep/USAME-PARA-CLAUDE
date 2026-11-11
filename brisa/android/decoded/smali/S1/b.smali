.class public final LS1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:LP1/c;

.field public final synthetic i:LN0/O;


# direct methods
.method public constructor <init>(LN0/O;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/b;->i:LN0/O;

    const/4 v0, -0x1

    iput v0, p0, LS1/b;->e:I

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, LS1/b;->f:I

    iput p1, p0, LS1/b;->g:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    const-string v2, " is less than minimum 0."

    invoke-static {v1, v2, p1}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, LS1/b;->i:LN0/O;

    iget-object v1, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p0, LS1/b;->g:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, LS1/b;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, LS1/b;->h:LP1/c;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, LP1/c;

    iget v2, p0, LS1/b;->f:I

    invoke-static {v1}, LS1/d;->D(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, LP1/a;-><init>(III)V

    iput-object v0, p0, LS1/b;->h:LP1/c;

    iput v5, p0, LS1/b;->g:I

    goto :goto_1

    :cond_1
    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LS1/m;

    iget v2, p0, LS1/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, LS1/m;->e:[C

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v7, "$this$DelimitedRangesSequence"

    invoke-static {v4, v7}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v4, v0, v2, v7}, LS1/d;->G(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, LE1/b;

    invoke-direct {v4, v0, v2}, LE1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, LP1/c;

    iget v2, p0, LS1/b;->f:I

    invoke-static {v1}, LS1/d;->D(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, LP1/a;-><init>(III)V

    iput-object v0, p0, LS1/b;->h:LP1/c;

    iput v5, p0, LS1/b;->g:I

    goto :goto_1

    :cond_3
    iget-object v1, v0, LE1/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, LE1/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, LS1/b;->f:I

    invoke-static {v2, v1}, Lcom/brisa/local/u;->z(II)LP1/c;

    move-result-object v2

    iput-object v2, p0, LS1/b;->h:LP1/c;

    add-int/2addr v1, v0

    iput v1, p0, LS1/b;->f:I

    if-nez v0, :cond_4

    move v3, v6

    :cond_4
    add-int/2addr v1, v3

    iput v1, p0, LS1/b;->g:I

    :goto_1
    iput v6, p0, LS1/b;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, LS1/b;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LS1/b;->a()V

    :cond_0
    iget v0, p0, LS1/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LS1/b;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LS1/b;->a()V

    :cond_0
    iget v0, p0, LS1/b;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LS1/b;->h:LP1/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, LS1/b;->h:LP1/c;

    iput v1, p0, LS1/b;->e:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
