.class public final Lj2/y;
.super Lj2/z;
.source "SourceFile"


# virtual methods
.method public final d(J)Lj2/z;
    .locals 0

    return-object p0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g(J)Lj2/z;
    .locals 0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string p2, "unit"

    invoke-static {p1, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
