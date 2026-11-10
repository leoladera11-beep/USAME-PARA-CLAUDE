.class public interface abstract LJ/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract B(Landroid/net/Uri;)Lz1/B;
.end method

.method public m(LG/T;)Lz1/B;
    .locals 1

    iget-object v0, p1, LG/T;->k:[B

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, LJ/d;->s([B)Lz1/B;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, LG/T;->n:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, LJ/d;->B(Landroid/net/Uri;)Lz1/B;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract s([B)Lz1/B;
.end method
