.class public interface abstract Ly0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public g(I[BI)Ly0/d;
    .locals 6

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p1

    new-instance v5, Ly0/j;

    invoke-direct {v5, p1}, Ly0/j;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    sget-object v4, Ly0/l;->c:Ly0/l;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Ly0/m;->l([BIILy0/l;LJ/k;)V

    new-instance p2, Ly0/b;

    invoke-virtual {p1}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    invoke-direct {p2, p1}, Ly0/b;-><init>(Lu1/C0;)V

    return-object p2
.end method

.method public abstract l([BIILy0/l;LJ/k;)V
.end method

.method public reset()V
    .locals 0

    return-void
.end method
