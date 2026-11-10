.class public final LB1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/E;


# instance fields
.field public final a:LB1/a;

.field public final b:LB1/p;


# direct methods
.method public constructor <init>(LB1/p;LB1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/A;->b:LB1/p;

    iput-object p2, p0, LB1/A;->a:LB1/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LB1/A;->b:LB1/p;

    invoke-static {v0, p1, p2}, LB1/F;->a(LB1/p;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;[BIILB1/d;)V
    .locals 0

    move-object p2, p1

    check-cast p2, LB1/r;

    iget-object p3, p2, LB1/r;->c:LB1/H;

    sget-object p4, LB1/H;->e:LB1/H;

    if-ne p3, p4, :cond_0

    invoke-static {}, LB1/H;->b()LB1/H;

    move-result-object p3

    iput-object p3, p2, LB1/r;->c:LB1/H;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LB1/A;->b:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, LB1/r;

    iget-object v0, v0, LB1/r;->c:LB1/H;

    iget-boolean v1, v0, LB1/H;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LB1/H;->d:Z

    :cond_0
    invoke-static {p1}, LB1/e;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, LB1/e;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(LB1/r;LB1/r;)Z
    .locals 1

    iget-object v0, p0, LB1/A;->b:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LB1/r;->c:LB1/H;

    iget-object p2, p2, LB1/r;->c:LB1/H;

    invoke-virtual {p1, p2}, LB1/H;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f(LB1/r;)I
    .locals 1

    iget-object v0, p0, LB1/A;->b:LB1/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LB1/r;->c:LB1/H;

    invoke-virtual {p1}, LB1/H;->hashCode()I

    move-result p1

    return p1
.end method

.method public final g()LB1/r;
    .locals 2

    iget-object v0, p0, LB1/A;->a:LB1/a;

    instance-of v1, v0, LB1/r;

    if-eqz v1, :cond_0

    check-cast v0, LB1/r;

    invoke-virtual {v0}, LB1/r;->e()LB1/r;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, LB1/r;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LB1/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF2/b;

    invoke-virtual {v0}, LF2/b;->a()LB1/r;

    move-result-object v0

    return-object v0
.end method
