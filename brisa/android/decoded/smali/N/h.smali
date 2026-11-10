.class public final LN/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/K;


# instance fields
.field public final e:LN/i0;

.field public final f:LN/F;

.field public g:LN/a;

.field public h:LN/K;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(LN/F;LJ/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/h;->f:LN/F;

    new-instance p1, LN/i0;

    invoke-direct {p1, p2}, LN/i0;-><init>(LJ/M;)V

    iput-object p1, p0, LN/h;->e:LN/i0;

    const/4 p1, 0x1

    iput-boolean p1, p0, LN/h;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, LN/h;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/h;->e:LN/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LN/h;->h:LN/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LN/K;->a()Z

    move-result v0

    return v0
.end method

.method public final b(LN/a;)V
    .locals 3

    invoke-virtual {p1}, LN/a;->j()LN/K;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LN/h;->h:LN/K;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, LN/h;->h:LN/K;

    iput-object p1, p0, LN/h;->g:LN/a;

    iget-object p1, p0, LN/h;->e:LN/i0;

    iget-object p1, p1, LN/i0;->i:LG/a0;

    check-cast v0, LP/S;

    invoke-virtual {v0, p1}, LP/S;->d(LG/a0;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v0, LN/k;

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, p1, v2}, LN/k;-><init>(ILjava/lang/Exception;I)V

    throw v0

    :cond_1
    return-void
.end method

.method public final c()J
    .locals 2

    iget-boolean v0, p0, LN/h;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN/h;->e:LN/i0;

    invoke-virtual {v0}, LN/i0;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, LN/h;->h:LN/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LN/K;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(LG/a0;)V
    .locals 1

    iget-object v0, p0, LN/h;->h:LN/K;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LN/K;->d(LG/a0;)V

    iget-object p1, p0, LN/h;->h:LN/K;

    invoke-interface {p1}, LN/K;->g()LG/a0;

    move-result-object p1

    :cond_0
    iget-object v0, p0, LN/h;->e:LN/i0;

    invoke-virtual {v0, p1}, LN/i0;->d(LG/a0;)V

    return-void
.end method

.method public final g()LG/a0;
    .locals 1

    iget-object v0, p0, LN/h;->h:LN/K;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LN/K;->g()LG/a0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LN/h;->e:LN/i0;

    iget-object v0, v0, LN/i0;->i:LG/a0;

    return-object v0
.end method
