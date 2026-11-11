.class public final Lu1/y;
.super Lu1/A;
.source "SourceFile"


# direct methods
.method public static f(I)Lu1/A;
    .locals 0

    if-gez p0, :cond_0

    sget-object p0, Lu1/A;->b:Lu1/z;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lu1/A;->c:Lu1/z;

    return-object p0

    :cond_1
    sget-object p0, Lu1/A;->a:Lu1/y;

    return-object p0
.end method


# virtual methods
.method public final a(II)Lu1/A;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, Lu1/y;->f(I)Lu1/A;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lu1/y;->f(I)Lu1/A;

    move-result-object p1

    return-object p1
.end method

.method public final c(ZZ)Lu1/A;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lu1/y;->f(I)Lu1/A;

    move-result-object p1

    return-object p1
.end method

.method public final d(ZZ)Lu1/A;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lu1/y;->f(I)Lu1/A;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
