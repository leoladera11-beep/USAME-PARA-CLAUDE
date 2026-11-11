.class public final LB/m;
.super LB/n;
.source "SourceFile"

# interfaces
.implements LB/f;


# instance fields
.field public final e:LB/g;

.field public final synthetic f:LB/o;


# direct methods
.method public constructor <init>(LB/o;LB/g;LB/p;)V
    .locals 0

    iput-object p1, p0, LB/m;->f:LB/o;

    invoke-direct {p0, p1, p3}, LB/n;-><init>(LB/o;LB/p;)V

    iput-object p2, p0, LB/m;->e:LB/g;

    return-void
.end method


# virtual methods
.method public final a(LB/g;LB/d;)V
    .locals 2

    iget-object p1, p0, LB/m;->e:LB/g;

    invoke-interface {p1}, LB/g;->g()LB/i;

    move-result-object p2

    iget-object p2, p2, LB/i;->c:LB/e;

    sget-object v0, LB/e;->e:LB/e;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, LB/m;->f:LB/o;

    iget-object p2, p0, LB/n;->a:LB/p;

    invoke-virtual {p1, p2}, LB/o;->g(LB/p;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, LB/m;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, LB/n;->b(Z)V

    invoke-interface {p1}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v0, v0, LB/i;->c:LB/e;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-interface {v0}, LB/g;->g()LB/i;

    move-result-object v0

    invoke-virtual {v0, p0}, LB/i;->f(LB/f;)V

    return-void
.end method

.method public final d(LB/g;)Z
    .locals 1

    iget-object v0, p0, LB/m;->e:LB/g;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, LB/m;->e:LB/g;

    invoke-interface {v0}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v0, v0, LB/i;->c:LB/e;

    sget-object v1, LB/e;->h:LB/e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
