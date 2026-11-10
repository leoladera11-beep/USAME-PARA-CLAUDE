.class public final LN/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/G;
.implements LQ/l;


# instance fields
.field public final e:LN/V;

.field public final synthetic f:LN/W;


# direct methods
.method public constructor <init>(LN/W;LN/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/T;->f:LN/W;

    iput-object p2, p0, LN/T;->e:LN/V;

    return-void
.end method


# virtual methods
.method public final A(ILU/A;LU/r;LU/w;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LN/T;->f:LN/W;

    iget-object p1, p1, LN/W;->j:LJ/O;

    new-instance v0, LN/Q;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LN/Q;-><init>(LN/T;Landroid/util/Pair;LU/r;LU/w;I)V

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final B(ILU/A;LU/r;LU/w;Ljava/io/IOException;Z)V
    .locals 7

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LN/T;->f:LN/W;

    iget-object p1, p1, LN/W;->j:LJ/O;

    new-instance v0, LM0/D0;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, LM0/D0;-><init>(LN/T;Landroid/util/Pair;LU/r;LU/w;Ljava/io/IOException;Z)V

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final H(ILU/A;LU/r;LU/w;I)V
    .locals 7

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LN/T;->f:LN/W;

    iget-object p1, p1, LN/W;->j:LJ/O;

    new-instance v0, LM0/p0;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, LM0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final J(ILU/A;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LJ/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p3, v1}, LJ/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final P(ILU/A;LU/r;LU/w;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LN/T;->f:LN/W;

    iget-object p1, p1, LN/W;->j:LJ/O;

    new-instance v0, LN/Q;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LN/Q;-><init>(LN/T;Landroid/util/Pair;LU/r;LU/w;I)V

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final Q(ILU/A;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LN/S;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LN/S;-><init>(LN/T;Landroid/util/Pair;I)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final R(ILU/A;LU/w;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LJ/U;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p1, p3}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(ILU/A;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p0, LN/T;->e:LN/V;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, LN/V;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU/A;

    iget-wide v3, v3, LU/A;->d:J

    iget-wide v5, p2, LU/A;->d:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v2, p2, LU/A;->a:Ljava/lang/Object;

    iget-object v3, v0, LN/V;->b:Ljava/lang/Object;

    sget v4, LN/d0;->n:I

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p2, v2}, LU/A;->a(Ljava/lang/Object;)LU/A;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    return-object v1

    :cond_2
    move-object v1, p2

    :cond_3
    iget p2, v0, LN/V;->d:I

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILU/A;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LN/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LN/S;-><init>(LN/T;Landroid/util/Pair;I)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(ILU/A;Lcom/brisa/local/j;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LJ/U;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0, p1, p3}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final s(ILU/A;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, LN/T;->a(ILU/A;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LN/T;->f:LN/W;

    iget-object p2, p2, LN/W;->j:LJ/O;

    new-instance v0, LJ/U;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p3}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
