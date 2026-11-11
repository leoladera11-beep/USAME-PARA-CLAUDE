.class public final LU/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/G;
.implements LQ/l;


# instance fields
.field public final e:Ljava/lang/Object;

.field public f:LC1/e;

.field public g:LQ/k;

.field public final synthetic h:LU/j;


# direct methods
.method public constructor <init>(LU/j;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/h;->h:LU/j;

    iget-object v0, p1, LU/a;->c:LC1/e;

    new-instance v1, LC1/e;

    iget-object v0, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, LC1/e;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v1, p0, LU/h;->f:LC1/e;

    iget-object p1, p1, LU/a;->d:LQ/k;

    new-instance v0, LQ/k;

    iget-object p1, p1, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1, v2, v3}, LQ/k;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v0, p0, LU/h;->g:LQ/k;

    iput-object p2, p0, LU/h;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(ILU/A;LU/r;LU/w;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->f:LC1/e;

    invoke-virtual {p0, p4, p2}, LU/h;->d(LU/w;LU/A;)LU/w;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LU/D;

    const/4 v0, 0x1

    invoke-direct {p4, p1, p3, p2, v0}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p1, p4}, LC1/e;->f(LJ/k;)V

    :cond_0
    return-void
.end method

.method public final B(ILU/A;LU/r;LU/w;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, LU/h;->f:LC1/e;

    invoke-virtual {p0, p4, p2}, LU/h;->d(LU/w;LU/A;)LU/w;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/E;

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, LU/E;-><init>(LC1/e;LU/r;LU/w;Ljava/io/IOException;Z)V

    invoke-virtual {v1, v0}, LC1/e;->f(LJ/k;)V

    :cond_0
    return-void
.end method

.method public final H(ILU/A;LU/r;LU/w;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->f:LC1/e;

    invoke-virtual {p0, p4, p2}, LU/h;->d(LU/w;LU/A;)LU/w;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LU/C;

    invoke-direct {p4, p1, p3, p2, p5}, LU/C;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p1, p4}, LC1/e;->f(LJ/k;)V

    :cond_0
    return-void
.end method

.method public final J(ILU/A;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->g:LQ/k;

    invoke-virtual {p1, p3}, LQ/k;->c(I)V

    :cond_0
    return-void
.end method

.method public final P(ILU/A;LU/r;LU/w;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->f:LC1/e;

    invoke-virtual {p0, p4, p2}, LU/h;->d(LU/w;LU/A;)LU/w;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LU/D;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p3, p2, v0}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p1, p4}, LC1/e;->f(LJ/k;)V

    :cond_0
    return-void
.end method

.method public final Q(ILU/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->g:LQ/k;

    invoke-virtual {p1}, LQ/k;->b()V

    :cond_0
    return-void
.end method

.method public final R(ILU/A;LU/w;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->f:LC1/e;

    invoke-virtual {p0, p3, p2}, LU/h;->d(LU/w;LU/A;)LU/w;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LM0/K;

    const/16 v0, 0x14

    invoke-direct {p3, p1, p2, v0}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, LC1/e;->f(LJ/k;)V

    :cond_0
    return-void
.end method

.method public final a(ILU/A;)Z
    .locals 3

    iget-object v0, p0, LU/h;->e:Ljava/lang/Object;

    iget-object v1, p0, LU/h;->h:LU/j;

    if-eqz p2, :cond_0

    invoke-virtual {v1, v0, p2}, LU/j;->t(Ljava/lang/Object;LU/A;)LU/A;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-virtual {v1, p1, v0}, LU/j;->v(ILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, LU/h;->f:LC1/e;

    iget v2, v0, LC1/e;->f:I

    if-ne v2, p1, :cond_2

    iget-object v0, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, LU/A;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, LU/a;->c:LC1/e;

    new-instance v2, LC1/e;

    iget-object v0, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v0, p1, p2}, LC1/e;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v2, p0, LU/h;->f:LC1/e;

    :cond_3
    iget-object v0, p0, LU/h;->g:LQ/k;

    iget v2, v0, LQ/k;->a:I

    if-ne v2, p1, :cond_4

    iget-object v0, v0, LQ/k;->b:LU/A;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v1, LU/a;->d:LQ/k;

    new-instance v1, LQ/k;

    iget-object v0, v0, LQ/k;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, LQ/k;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iput-object v1, p0, LU/h;->g:LQ/k;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final b(ILU/A;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->g:LQ/k;

    invoke-virtual {p1}, LQ/k;->e()V

    :cond_0
    return-void
.end method

.method public final c(ILU/A;Lcom/brisa/local/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->g:LQ/k;

    invoke-virtual {p1, p3}, LQ/k;->a(Lcom/brisa/local/j;)V

    :cond_0
    return-void
.end method

.method public final d(LU/w;LU/A;)LU/w;
    .locals 10

    iget-wide v0, p1, LU/w;->c:J

    iget-object p2, p0, LU/h;->h:LU/j;

    iget-object v2, p0, LU/h;->e:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v2}, LU/j;->u(JLjava/lang/Object;)J

    move-result-wide v6

    iget-wide v3, p1, LU/w;->d:J

    invoke-virtual {p2, v3, v4, v2}, LU/j;->u(JLjava/lang/Object;)J

    move-result-wide v8

    cmp-long p2, v6, v0

    if-nez p2, :cond_0

    cmp-long p2, v8, v3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance v3, LU/w;

    iget v4, p1, LU/w;->a:I

    iget-object v5, p1, LU/w;->b:LG/x;

    invoke-direct/range {v3 .. v9}, LU/w;-><init>(ILG/x;JJ)V

    return-object v3
.end method

.method public final s(ILU/A;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LU/h;->a(ILU/A;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LU/h;->g:LQ/k;

    invoke-virtual {p1, p3}, LQ/k;->d(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
