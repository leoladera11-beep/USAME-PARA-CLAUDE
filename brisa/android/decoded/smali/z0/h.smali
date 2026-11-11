.class public abstract Lz0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/e;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Lz0/g;

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lz0/g;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LM/f;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lz0/h;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lz0/h;->b:Ljava/util/ArrayDeque;

    new-instance v2, Ly0/c;

    new-instance v3, Ly0/j;

    invoke-direct {v3, p0}, Ly0/j;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2}, Ly0/c;-><init>()V

    iput-object v3, v2, Ly0/c;->l:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz0/h;->c:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lz0/h;->g:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(Ly0/i;)V
    .locals 6

    iget-object v0, p0, Lz0/h;->d:Lz0/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    check-cast p1, Lz0/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, LK/f;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, LM/f;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lz0/h;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LM/f;->h()V

    iget-object v0, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lz0/h;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lz0/h;->f:J

    iput-wide v0, p1, Lz0/g;->o:J

    iget-object v0, p0, Lz0/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lz0/h;->d:Lz0/g;

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lz0/h;->g:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lz0/h;->e:J

    return-void
.end method

.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz0/h;->i()Ly0/c;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz0/h;->d:Lz0/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/g;

    iput-object v0, p0, Lz0/h;->d:Lz0/g;

    return-object v0
.end method

.method public flush()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz0/h;->f:J

    iput-wide v0, p0, Lz0/h;->e:J

    :goto_0
    iget-object v0, p0, Lz0/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/g;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0}, LM/f;->h()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz0/h;->d:Lz0/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LM/f;->h()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lz0/h;->d:Lz0/g;

    :cond_1
    return-void
.end method

.method public abstract g()LF1/o;
.end method

.method public abstract h(Lz0/g;)V
.end method

.method public i()Ly0/c;
    .locals 7

    iget-object v0, p0, Lz0/h;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lz0/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/g;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget-wide v2, v2, LM/f;->k:J

    iget-wide v4, p0, Lz0/h;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/g;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, LK/f;->f(I)Z

    move-result v3

    iget-object v4, p0, Lz0/h;->a:Ljava/util/ArrayDeque;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/c;

    invoke-virtual {v0, v2}, LK/f;->b(I)V

    invoke-virtual {v1}, LM/f;->h()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lz0/h;->h(Lz0/g;)V

    invoke-virtual {p0}, Lz0/h;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lz0/h;->g()LF1/o;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/c;

    iget-wide v5, v1, LM/f;->k:J

    iput-wide v5, v0, LM/g;->g:J

    iput-object v2, v0, Ly0/c;->i:Ly0/d;

    iput-wide v5, v0, Ly0/c;->j:J

    invoke-virtual {v1}, LM/f;->h()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-virtual {v1}, LM/f;->h()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract j()Z
.end method
