.class public final LU/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/q;


# instance fields
.field public final a:LW/q;

.field public final b:LG/r0;


# direct methods
.method public constructor <init>(LW/q;LG/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/H;->a:LW/q;

    iput-object p2, p0, LU/H;->b:LG/r0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0, p1}, LW/q;->a(Z)V

    return-void
.end method

.method public final b(I)LG/x;
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0, p1}, LW/q;->d(I)I

    move-result p1

    iget-object v0, p0, LU/H;->b:LG/r0;

    iget-object v0, v0, LG/r0;->d:[LG/x;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->c()V

    return-void
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0, p1}, LW/q;->d(I)I

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->e()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, LU/H;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, LU/H;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LU/H;

    iget-object v0, p0, LU/H;->b:LG/r0;

    iget-object p1, p1, LU/H;->b:LG/r0;

    invoke-virtual {v0, p1}, LG/r0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->f()I

    move-result v0

    return v0
.end method

.method public final g()LG/r0;
    .locals 1

    iget-object v0, p0, LU/H;->b:LG/r0;

    return-object v0
.end method

.method public final h()LG/x;
    .locals 2

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->f()I

    move-result v0

    iget-object v1, p0, LU/H;->b:LG/r0;

    iget-object v1, v1, LG/r0;->d:[LG/x;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LU/H;->b:LG/r0;

    invoke-virtual {v1}, LG/r0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(F)V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0, p1}, LW/q;->i(F)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->j()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->k()V

    return-void
.end method

.method public final l(I)I
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0, p1}, LW/q;->l(I)I

    move-result p1

    return p1
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, LU/H;->a:LW/q;

    invoke-interface {v0}, LW/q;->length()I

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LU/H;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LU/H;

    iget-object v0, p0, LU/H;->a:LW/q;

    iget-object p1, p1, LU/H;->a:LW/q;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
