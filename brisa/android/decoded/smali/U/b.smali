.class public final LU/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/a0;


# instance fields
.field public final e:LU/a0;

.field public final f:Z

.field public g:Z

.field public final synthetic h:LU/c;


# direct methods
.method public constructor <init>(LU/c;LU/a0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/b;->h:LU/c;

    iput-object p2, p0, LU/b;->e:LU/a0;

    iput-boolean p3, p0, LU/b;->f:Z

    return-void
.end method


# virtual methods
.method public final j(LN0/O;LM/f;I)I
    .locals 11

    iget-object v0, p0, LU/b;->h:LU/c;

    invoke-virtual {v0}, LU/c;->d()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, LU/b;->g:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    iput v3, p2, LK/f;->f:I

    return v4

    :cond_1
    invoke-virtual {v0}, LU/c;->n()J

    move-result-wide v5

    iget-object v1, p0, LU/b;->e:LU/a0;

    invoke-interface {v1, p1, p2, p3}, LU/a0;->j(LN0/O;LM/f;I)I

    move-result p3

    iget-wide v7, v0, LU/c;->k:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-eqz v1, :cond_2

    if-eq p3, v2, :cond_2

    iput-wide v9, v0, LU/c;->k:J

    :cond_2
    const/4 v1, -0x5

    if-ne p3, v1, :cond_7

    iget-wide p2, v0, LU/c;->l:J

    iget-wide v2, v0, LU/c;->m:J

    iget-object v0, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v0, LG/x;->O:I

    iget v5, v0, LG/x;->N:I

    if-nez v5, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long p2, p2, v6

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    move v5, p3

    :cond_4
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p2, v2, v6

    if-eqz p2, :cond_5

    move v4, p3

    :cond_5
    invoke-virtual {v0}, LG/x;->a()LG/w;

    move-result-object p2

    iput v5, p2, LG/w;->M:I

    iput v4, p2, LG/w;->N:I

    new-instance p3, LG/x;

    invoke-direct {p3, p2}, LG/x;-><init>(LG/w;)V

    iput-object p3, p1, LN0/O;->g:Ljava/lang/Object;

    :cond_6
    return v1

    :cond_7
    iget-wide v0, v0, LU/c;->m:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long p1, v0, v7

    if-eqz p1, :cond_a

    if-ne p3, v4, :cond_8

    iget-wide v9, p2, LM/f;->k:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_9

    :cond_8
    if-ne p3, v2, :cond_a

    cmp-long p1, v5, v7

    if-nez p1, :cond_a

    iget-boolean p1, p2, LM/f;->j:Z

    if-nez p1, :cond_a

    :cond_9
    invoke-virtual {p2}, LM/f;->h()V

    iput v3, p2, LK/f;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LU/b;->g:Z

    return v4

    :cond_a
    return p3
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, LU/b;->h:LU/c;

    invoke-virtual {v0}, LU/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LU/b;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 5

    iget-object v0, p0, LU/b;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->r()I

    move-result v0

    iget-object v1, p0, LU/b;->h:LU/c;

    iget-wide v1, v1, LU/c;->m:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean v1, p0, LU/b;->f:Z

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x3

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, LU/b;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->x()V

    return-void
.end method

.method public final y(J)I
    .locals 1

    iget-object v0, p0, LU/b;->h:LU/c;

    invoke-virtual {v0}, LU/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, LU/b;->e:LU/a0;

    invoke-interface {v0, p1, p2}, LU/a0;->y(J)I

    move-result p1

    return p1
.end method
