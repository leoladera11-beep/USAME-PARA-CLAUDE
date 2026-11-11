.class public final LM0/V1;
.super LG/q0;
.source "SourceFile"


# instance fields
.field public final e:LG/q0;

.field public final f:Lu1/H;

.field public final g:Lu1/H;


# direct methods
.method public constructor <init>(LG/q0;Lu1/H;Lu1/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/V1;->e:LG/q0;

    iput-object p2, p0, LM0/V1;->f:Lu1/H;

    iput-object p3, p0, LM0/V1;->g:Lu1/H;

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1}, LG/q0;->a(Z)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    iget-object v1, p0, LM0/V1;->e:LG/q0;

    if-eqz v0, :cond_0

    iget-object v0, p0, LM0/V1;->g:Lu1/H;

    check-cast v0, Lu1/B0;

    iget-object v0, v0, Lu1/B0;->l:Lu1/B0;

    invoke-virtual {v0, p1}, Lu1/B0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1, p1}, LG/q0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final c(Z)I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1}, LG/q0;->c(Z)I

    move-result p1

    return p1
.end method

.method public final e(IIZ)I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1, p2, p3}, LG/q0;->e(IIZ)I

    move-result p1

    return p1
.end method

.method public final f(ILG/n0;Z)LG/n0;
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1, p2, p3}, LG/q0;->f(ILG/n0;Z)LG/n0;

    if-eqz p3, :cond_1

    iget-object p1, p2, LG/n0;->a:Ljava/lang/Object;

    iget-object p3, p0, LM0/V1;->g:Lu1/H;

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p2, LG/n0;->a:Ljava/lang/Object;

    :cond_0
    iget-object p1, p2, LG/n0;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p3, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iput-object p1, p2, LG/n0;->b:Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0}, LG/q0;->h()I

    move-result v0

    return v0
.end method

.method public final k(IIZ)I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1, p2, p3}, LG/q0;->k(IIZ)I

    move-result p1

    return p1
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LM0/V1;->g:Lu1/H;

    invoke-virtual {v0, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final m(ILG/p0;J)LG/p0;
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0, p1, p2, p3, p4}, LG/q0;->m(ILG/p0;J)LG/p0;

    iget-object p1, p2, LG/p0;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p3, p0, LM0/V1;->f:Lu1/H;

    invoke-virtual {p3, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p2, LG/p0;->a:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, LM0/V1;->e:LG/q0;

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v0

    return v0
.end method
